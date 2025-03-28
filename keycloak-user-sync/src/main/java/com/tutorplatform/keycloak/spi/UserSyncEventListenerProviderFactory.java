package com.tutorplatform.keycloak.spi;

import org.keycloak.events.EventListenerProvider;
import org.keycloak.events.EventListenerProviderFactory;
import org.keycloak.models.KeycloakSession;

public class UserSyncEventListenerProviderFactory implements EventListenerProviderFactory {
    @Override
    public EventListenerProvider create(KeycloakSession session) {
        return new UserSyncEventListenerProvider();
    }

    @Override
    public void init(org.keycloak.Config.Scope scope) {

    }


    @Override
    public void postInit(org.keycloak.models.KeycloakSessionFactory factory) {}

    @Override
    public void close() {}

    @Override
    public String getId() {
        return "user-sync-listener";
    }
}
