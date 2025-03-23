<!DOCTYPE html>
<html lang="en">
<head>
    <title>Tutor’s Platform - Login</title>
    <meta charset="UTF-8">
</head>
<body>

<div class="header">
  <div class="header-title">Tutor’s Platform</div>
</div>

<div class="kc-container">
  <div class="login-card">

    <h2>Login</h2>

    <form id="kc-form-login" onsubmit="loginDisabledButton()" action="${url.loginAction}" method="post">
      <div class="field">
        <label for="username">Email</label>
        <input tabindex="1" id="username" name="username" type="text" value="${login.username!}" autofocus />
      </div>
      <div class="field">
        <label for="password">Password</label>
        <input tabindex="2" id="password" name="password" type="password"/>
      </div>

      <div class="actions">
        <input tabindex="3" class="btn login-btn" name="login" id="kc-login" type="submit" value="Login"/>
      </div>
    </form>

    <#if url.registrationUrl??>
      <a class="secondary-link" href="${url.registrationUrl}">Sign Up</a>
    </#if>

    <#if url.loginResetCredentialsUrl??>
      <a class="secondary-link" href="${url.loginResetCredentialsUrl}">Forgot Password</a>
    </#if>

  </div>
</div>

</body>
</html>