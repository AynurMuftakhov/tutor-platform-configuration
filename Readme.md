# Tutor Platform 🧑‍🏫✨

A modern web-based platform for connecting tutors and students. The app features secure authentication via Keycloak, user onboarding, scheduling lessons, and user profile management.

---

## 🚀 Features

- 🔐 Authentication with Keycloak (OIDC)
- 🌐 API Gateway with NGINX + Lua for JWT validation
- 👨‍🏫 Role-based user experience (Student / Tutor) — tailored dashboards and permissions
- 🧾 User onboarding on first login
- 🧑‍🎓 Profile editing with avatar upload
- 📅 Lesson scheduling and history
- ⚙️ Microservice architecture
- 📦 Docker-based deployment

---

## 🏗 Architecture Overview

![Alt text](/docs/architecture.png)


🔐 Authentication Flow
1.	User registers/login via Keycloak
2.	Frontend receives a JWT token
3.	All API requests go through NGINX, which:
•	Validates JWT via resty.openidc
•	Extracts user info (sub, email, roles)
•	Passes them to backend via headers
4.	Backend uses X-User-Id / X-User-Email headers to identify the user
5.	If isOnboarded === false, the frontend redirects the user to the onboarding flow

👉 See docs/auth.md for more.

📸 Static Files
•	Avatars are uploaded to /uploads/avatars inside the users-service
•	Served via /users-service/avatars/** (publicly accessible)
•	⚠️ Consider adding a Docker volume to persist avatar uploads across container rebuilds.

⸻
👨‍💼 Maintainer

Created with ❤️ by Aynur Muftakhov
Feel free to contribute or submit issues.