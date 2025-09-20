<#import "template.ftl" as layout>
<@layout.emailLayout>
    <div class="container">
        <div class="title">Reset your SpeakShire password</div>

        <p>Hi <strong>${user.firstName}</strong>,</p>

        <p>We received a request to reset your password for your <strong>SpeakShire</strong> account.</p>

        <p>Click the button below to choose a new password:</p>

        <a href="${link}" class="btn">Reset My Password</a>

        <p>This link will expire in <strong>12 hours</strong>.</p>

        <p>If you didn’t request a password reset, you can safely ignore this email.</p>

        <div class="footer">
            Stay secure and keep learning!<br />
            — The SpeakShire Team
        </div>
    </div>
</@layout.emailLayout>
