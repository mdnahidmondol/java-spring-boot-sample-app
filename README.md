# Sample Java Application Demonstrating CI/CD and DevOps Practices

This sample Java application illustrates the implementation of CI/CD and DevOps practices.

## Features

1. **Secure Docker Image Build**
   - Ensures secure practices are followed during the Docker image build process.

2. **Image Scanning**
   - Scans the built image for vulnerabilities before pushing it to the registry.

3. **Push to ECR**
   - If the image scan is successful, pushes the image to Amazon Elastic Container Registry (ECR).

4. **Release Workflow**
   - Automates the release process with a defined workflow.

5. **Build Workflow**
   - Sets up a robust build workflow to streamline the build process.

6. **Reusing GitHub Actions**
   - Demonstrates how to reuse GitHub Actions across multiple repositories.

## Usage

### Secure Docker Image Build

- Follow secure practices during the Docker image build process.

### Image Scanning

- Scan the Docker image for vulnerabilities before pushing it to the registry.

### Push to ECR

- If the scan is successful, push the Docker image to Amazon Elastic Container Registry (ECR).

### Release Workflow

- Automate the release process using GitHub Actions.

### Build Workflow

- Set up and configure a robust build workflow using GitHub Actions.

### Reusing GitHub Actions

- Reference reusable workflows stored in a central repository from other repositories.

  Example:
  ```yaml
  name: Reused CI Workflow

  on:
    push:
      branches:
        - main

  jobs:
    build:
      uses: mdnahidmondol/shared-github-actions/.github/workflows/java-spring-build-push-dockerhub.yml@main
