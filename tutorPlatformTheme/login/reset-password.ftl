<!DOCTYPE html>
<html lang="en">
<head>
  <title>Reset Your Password</title>
  <meta charset="UTF-8"/>
  <link rel="stylesheet" href="${url.resourcesPath}/css/custom.css" />
</head>
<body>

<div class="kc-wrapper">
  <div class="material-card">

    <h2 class="form-title">Reset Your Password</h2>

    <#if message?has_content && message.type == "error">
      <div class="form-error">${message.summary}</div>
    </#if>

    <#if message?has_content && message.type == "success">
      <div class="form-success">${message.summary}</div>
    </#if>

    <form id="kc-reset-password-form" action="${url.loginAction}" method="post">

      <div class="material-field">
        <input id="username" name="username" type="email" placeholder=" " required />
        <label for="username">Email</label>
      </div>

      <div class="actions">
        <input class="material-btn" type="submit" value="Send Reset Link" />
      </div>

      <div class="auth-links">
        <#if url.loginUrl??>
          <a href="${url.loginUrl}">Back to Login</a>
        </#if>
      </div>

    </form>

  </div>
</div>

</body>
</html>