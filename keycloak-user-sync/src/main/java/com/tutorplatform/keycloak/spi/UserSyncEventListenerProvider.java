package com.tutorplatform.keycloak.spi;

import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.jboss.logging.Logger;
import org.keycloak.events.Event;
import org.keycloak.events.EventListenerProvider;
import org.keycloak.events.admin.AdminEvent;

import java.io.IOException;

public class UserSyncEventListenerProvider implements EventListenerProvider {
    private static final Logger logger = Logger.getLogger(UserSyncEventListenerProvider.class);
    private final static String userServiceUrl = "http://users-service:8081/api/users";

    @Override
    public void onEvent(Event event) {
        logger.info("Received event: " + event);
        if ("REGISTER".equals(event.getType().toString())) {
            logger.infof("Register event for userId: %s, details: %s", event.getUserId(), event.getDetails());
            String userId = event.getUserId();
            String email = event.getDetails().get("email");
            String firstName = event.getDetails().getOrDefault("first_name", "");
            String lastName = event.getDetails().getOrDefault("last_name", "");

            try (CloseableHttpClient httpClient = HttpClients.createDefault()) {
                HttpPost request = new HttpPost(userServiceUrl);

                String json = String.format(
                        "{\"keycloakId\": \"%s\", \"email\": \"%s\", \"firstName\": \"%s\", \"lastName\": \"%s\"}",
                        userId, email, firstName, lastName
                );

                request.setEntity(new StringEntity(json));
                request.setHeader("Content-type", "application/json");


                httpClient.execute(request);
            } catch (IOException e) {
                logger.error(e);
            }
        }
    }

    @Override
    public void onEvent(AdminEvent adminEvent, boolean b) {

    }

    @Override
    public void close() {
        // nothing to close
    }
}
