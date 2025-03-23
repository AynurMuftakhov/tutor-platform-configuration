<!DOCTYPE html>
<html lang="en">
<head>
  <title>Error</title>
  <meta charset="UTF-8" />
</head>
<body>
  <h1>An error occurred</h1>

  <#-- If 'message' is the built-in Keycloak message bean, try this: -->
  <#if message??>
    <p style="color: red;">
      ${message.summary!}  <!-- or message.text! -->
    </p>
  </#if>
</body>
</html>