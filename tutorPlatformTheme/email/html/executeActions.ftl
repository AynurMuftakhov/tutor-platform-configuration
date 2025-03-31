<#import "template.ftl" as layout>
<@layout.emailLayout>
    <div class="container">
        <div class="title">Welcome to Tutoria 👋</div>

        <p>Hi <strong>${user.firstName}</strong>,</p>

        <p>Your tutor has just created an account for you on <strong>Tutoria</strong>.</p>

        <p>To begin your learning journey, please click the button below to set your password:</p>

        <a href="${link}" class="btn">Set My Password</a>

        <p>This link will expire in <strong>12 hours</strong>.</p>

        <p>If you didn’t expect this email, feel free to ignore it.</p>

        <div class="footer">
            Good luck on your learning journey!<br />
            — The Tutoria Team
        </div>
    </div>
</@layout.emailLayout>