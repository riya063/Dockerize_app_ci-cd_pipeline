# 🐳 Dockerized Flask App with CI/CD Pipeline

This project demonstrates how to containerize a Flask web application using Docker and implement a CI/CD pipeline. It includes the setup of GitHub Actions for continuous integration and optional deployment to an EC2 instance.

---

## 📦 Project Structure

dockerize_app_ci_cd_pipeline/
├── app.py
├── Dockerfile
├── requirements.txt
├── .github/
│ └── workflows/
│ └── ci-cd.yml
└── README.md

yaml
Copy
Edit


---

## 🚀 Features

- Flask web app
- Dockerized deployment
- GitHub Actions CI/CD pipeline
- Optional deployment to AWS EC2
- Custom DockerHub image

---

## 🛠️ Prerequisites

- Git
- Docker
- GitHub account
- DockerHub account
- AWS EC2 instance (for deployment)

---

## 🧪 Local Development

### 1. Clone the repo:

```bash
git clone https://github.com/riya063/Dockerize_app_ci-cd_pipeline.git
cd Dockerize_app_ci_cd_pipeline


# DOCKER COMMANDS TO RUN LOACLLY

docker build -t flask-docker-app .
docker run -d -p 8000:8000 flask-docker-app

App will be accessible at: http://localhost:8000


🔄 CI/CD with GitHub Actions
GitHub Actions is configured to:

Run tests (if defined)

Build Docker image

Push to DockerHub

(Optional) Deploy to AWS EC2

GitHub Actions Workflow:
Location: .github/workflows/ci-cd.yml

Triggered on push to master or PRs

☁️ Deploy to AWS EC2

1. Connect to your EC2 instance:
ssh -i ~/Documents/ec2_key_pair.pem ubuntu@<EC2_PUBLIC_IP>
2. Run Docker container:
sudo docker run -d -p 8080:8000 riya8186/flask-docker-app

🐙 DockerHub
Image available at:
👉 https://hub.docker.com/repository/docker/riya8186/flask-docker-app


git add README.md
git commit -m "Update README.md with setup, CI/CD, and deployment instructions"
git push origin master

