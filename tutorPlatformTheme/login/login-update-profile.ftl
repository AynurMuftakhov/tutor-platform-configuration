<!DOCTYPE html>
<html lang="en">
<head>
    <title>Update Profile</title>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="${url.resourcesPath}/css/custom.css" />
</head>
<body>

<div class="kc-wrapper">
    <div class="material-card">

        <h2 class="form-title">Update Your Profile</h2>

        <form id="kc-update-profile-form" action="${url.loginAction}" method="post">
            <div class="material-field">
                <input id="firstName" name="firstName" type="text" value="${user.firstName!}" required />
                <label for="firstName">First Name</label>
            </div>

            <div class="material-field">
                <input id="lastName" name="lastName" type="text" value="${user.lastName!}" required />
                <label for="lastName">Last Name</label>
            </div>

            <div class="material-field">
                <input id="email" name="email" type="email" value="${user.email!}" required />
                <label for="email">Email</label>
            </div>

            <div class="actions">
                <input class="material-btn" type="submit" value="Save" />
            </div>
        </form>

    </div>
</div>

</body>
</html>