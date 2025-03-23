<!DOCTYPE html>
<html lang="en">
<head>
  <title>Set a New Password</title>
  <meta charset="UTF-8" />
  <link rel="stylesheet" href="${url.resourcesPath}/css/custom.css" />
</head>
<body>

<div class="kc-wrapper">
  <div class="material-card">

    <h2 class="form-title">Create a New Password</h2>

    <#if message?has_content && message.type == "error">
      <div class="form-error">${message.summary}</div>
    </#if>

    <form id="kc-passwd-update-form" action="${url.loginAction}" method="post">

      <div class="material-field">
        <input type="password" id="password-new" name="password-new" placeholder=" " required />
        <label for="password-new">New Password</label>
      </div>

      <div class="material-field">
        <input type="password" id="password-confirm" name="password-confirm" placeholder=" " required />
        <label for="password-confirm">Confirm New Password</label>
      </div>

      <div class="actions">
        <input class="material-btn" type="submit" value="Update Password" />
      </div>
    </form>

  </div>
</div>

</body>
</html>