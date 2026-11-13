# Project 1 – Jenkins Docker Pipeline

![Jenkins](https://img.shields.io/badge/Jenkins-D24939?logo=jenkins&logoColor=white) ![Docker](https://img.shields.io/badge/Docker-2496ED?logo=docker&logoColor=white) ![Apache](https://img.shields.io/badge/Apache_httpd-D22128?logo=apache&logoColor=white) ![HTML5](https://img.shields.io/badge/HTML5-E34F26?logo=html5&logoColor=white)

> A web app built into a Docker image and deployed by a Jenkins pipeline.

## Overview

A static site served by **Apache httpd (Alpine)**. The **Jenkins** pipeline clones the repo, builds a versioned image (`appx:v<BUILD_NUMBER>`), runs test stages and deploys the container.

## Tech Stack

- **Jenkins**
- **Docker**
- **Apache httpd**
- **HTML/CSS**

## Repository Structure

```text
app/file1
app/file2
Dockerfile
index.html
Jenkinsfile
README.md
```

## Getting Started

### Run with Docker

```bash
git clone https://github.com/Gamal-Mohammad/project1.git
cd project1
docker build -t project1 .
docker run -d --name project1 -p 8080:80 project1
```

Then open http://localhost:8080.

## CI/CD Pipeline

The `Jenkinsfile` defines the following stages:

```mermaid
flowchart LR
    S0["Clone"]
    S1["Build"]
    S2["Testing"]
    S3["Testing2"]
    S4["Deploy"]
    S0 --> S1 --> S2 --> S3 --> S4
```

## Author

**Gamal Mohammad**

[![GitHub](https://img.shields.io/badge/GitHub-Gamal--Mohammad-181717?logo=github)](https://github.com/Gamal-Mohammad)
