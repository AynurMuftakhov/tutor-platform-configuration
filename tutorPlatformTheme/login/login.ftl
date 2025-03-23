<!DOCTYPE html>
<html lang="en">
<head>
  <title>Login</title>
  <meta charset="UTF-8"/>
  <link rel="stylesheet" href="${url.resourcesPath}/css/custom.css" />
</head>
<body>

<div class="kc-wrapper">
  <div class="material-card">

    <h2 class="form-title">So happy to see you again!</h2>

    <#if message?has_content && message.type == "error">
      <div class="form-error">
        ${message.summary}
      </div>
    </#if>

    <form id="kc-form-login" action="${url.loginAction}" method="post">

      <div class="material-field">
        <input id="username" name="username" type="text" value="${login.username!}" required />
        <label for="username">Email</label>
      </div>

      <div class="material-field">
        <input id="password" name="password" type="password" required />
        <label for="password">Password</label>
      </div>

      <#if realm.rememberMe && !usernameEditDisabled??>
        <div class="checkbox">
          <label>
            <input type="checkbox" id="rememberMe" name="rememberMe"
                   <#if login.rememberMe??>checked</#if> /> Remember me
          </label>
        </div>
      </#if>

   <div class="actions">
     <input class="material-btn" name="login" id="kc-login" type="submit" value="Login" />
   </div>

   <div class="auth-links">
     <#if url.loginResetCredentialsUrl??>
       <a href="${url.loginResetCredentialsUrl}">Forgot Password?</a>
     </#if>
     <#if url.registrationUrl??>
       <a href="${url.registrationUrl}">Don’t have an account? Sign Up</a>
     </#if>
   </div>

  </div>
</div>

</body>
</html>