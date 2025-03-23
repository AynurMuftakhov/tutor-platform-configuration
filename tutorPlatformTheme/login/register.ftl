<!DOCTYPE html>
<html lang="en">
<head>
  <title>Register</title>
  <meta charset="UTF-8"/>
  <link rel="stylesheet" href="${url.resourcesPath}/css/custom.css" />
  <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
</head>
<body>

<div class="kc-wrapper">
  <div class="material-card">

    <h2 class="form-title">Let's get to know each other!</h2>

    <form action="${url.registrationAction}" method="post">

      <div class="material-field">
        <input id="firstName" name="firstName" type="text" value="<#if user??>${user.firstName!''}<#else></#if>" required />
        <label for="firstName">First Name</label>
      </div>

      <div class="material-field">
        <input id="lastName" name="lastName" type="text" value="<#if user??>${user.lastName!''}<#else></#if>" required />
        <label for="lastName">Last Name</label>
      </div>

      <div class="material-field">
        <input id="email" name="email" type="email" value="<#if user??>${user.email!''}<#else></#if>" required />
        <label for="email">Email</label>
      </div>

      <div class="material-field">
        <input id="password" name="password" type="password" required />
        <label for="password">Password</label>
      </div>

      <div class="material-field">
        <input id="password-confirm" name="password-confirm" type="password" required />
        <label for="password-confirm">Confirm Password</label>
      </div>

      <div class="actions">
        <button type="submit" class="btn material-btn">Register</button>
      </div>

    </form>

  </div>
</div>

</body>
</html>