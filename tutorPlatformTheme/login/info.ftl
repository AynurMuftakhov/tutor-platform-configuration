<!DOCTYPE html>
<html lang="en">
<head>
    <title>Continue</title>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="${url.resourcesPath}/css/custom.css" />
</head>
<body>

<div class="kc-wrapper">
    <div class="material-card">

        <h2 class="form-title">
            <#if requiredActions?? && (requiredActions?size > 0)>
                You're almost there
            <#else>
                All done!
            </#if>
        </h2>

        <div class="form-message">
            <#if requiredActions?? && (requiredActions?size > 0)>
                <p>To continue, please complete the following step:</p>
                <#list requiredActions as req>
                    <p><span style="font-weight: bold;">
              <#if req == "UPDATE_PASSWORD">
                  Set a new password
              <#elseif req == "VERIFY_EMAIL">
                  Confirm your email
              <#elseif req == "CONFIGURE_TOTP">
                  Set up two-factor authentication
              <#else>
                  ${msg("requiredAction.${req}")!req}
              </#if>
            </span>
                    </p>
                </#list>
            <#else>
                <p>You're ready to begin using the platform.</p>
            </#if>
        </div>

        <div class="actions">
            <#if requiredActions?? && (requiredActions?size > 0)>
                <a class="material-btn center-btn" href="${actionUri}">Continue</a>
            <#else>
               <a class="material-btn center-btn" href="${properties.appUrl}">Go to Tutoria</a>
            </#if>
        </div>

    </div>
</div>

</body>
</html>