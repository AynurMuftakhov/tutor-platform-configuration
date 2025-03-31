<!DOCTYPE html>
<html>
<head>
  <title>Set Your Password</title>
  <link rel="stylesheet" href="${url.resourcesPath}/css/custom.css" />
</head>
<body>
<div class="kc-wrapper">
  <div class="material-card">
    <h2 class="form-title">Set your new password 🔐</h2>

    <form id="kc-passwd-update-form" action="${url.loginAction}" method="post">
      <div class="material-field">
        <input id="password-new" name="password-new" type="password" required />
        <label for="password-new">New Password</label>
      </div>

      <div class="material-field">
        <input id="password-confirm" name="password-confirm" type="password" required />
        <label for="password-confirm">Confirm Password</label>
      </div>

      <div class="actions">
        <input class="material-btn" type="submit" value="Save Password" />
      </div>
    </form>
  </div>
</div>
</body>
</html>