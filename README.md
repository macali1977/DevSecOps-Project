# DevSecOps Project Overview........

## Introduction
This security document details the implementation of a DevSecOps project that integrates best practices for Static Application Security Testing (SAST), Software Composition Analysis (SCA), and Infrastructure as Code (IaC) scanning. The project focuses on securing applications deployed within AWS infrastructure, leveraging GitHub Actions workflows for automation.

## Project Goal
- Establish and maintain a Secure Software Development Life Cycle (SSDLC) by embedding security practices across all stages of development.
- Automate security testing to detect vulnerabilities early, promoting a “shift-left” security approach.
- Integrate robust security controls within the CI/CD pipeline to enable continuous monitoring and protection.
- Align development processes with industry standards and security best practices to ensure ongoing compliance.
- Enforce pull request (PR) blocking for critical and high-severity vulnerabilities to prevent insecure code from being merged.

## Components

### 1. Infrastructure as Code (IaC) Scanning
Infrastructure as Code (IaC) scanning ensures that configuration code aligns with security best practices and compliance standards, enabling the early detection of misconfigurations and potential security gaps in cloud environments.

#### Tools:

- **Terraform Compliance**: Evaluates Terraform scripts against security policies defined in a Behaviour-Driven Development (BDD) style language to ensure compliance with organisational standards.

- **Trivy**: Delivers automated Infrastructure as Code (IaC) scanning to detect security misconfigurations across AWS, Azure, and GCP environments.

### 2. Static Application Security Testing (SAST)

Static Application Security Testing (SAST) analyses an application's source or binary code without execution, aiming to identify security vulnerabilities, coding flaws, and other issues within the codebase.

#### Tools:

- **CodeQl**: Performs static code analysis to detect bugs, security vulnerabilities, and code smells across multiple programming languages.

### 3. Software Composition Analysis (SCA)

Software Composition Analysis (SCA) identifies and manages open-source components and third-party libraries within an application, helping to uncover known vulnerabilities in dependencies.
#### Tools:

- **Trivy**: Analyses project dependencies to detect vulnerabilities using the National Vulnerability Database (NVD) and other trusted sources.

1. **Integration with CI/CD Pipeline**: Integrate SAST, SCA, and IaC scanning tools into the CI/CD pipeline to automate and streamline security testing throughout the development lifecycle.

2. **Pre-commit and Post-commit Hooks**: Implement pre-commit hooks to trigger security scans before code is merged into the main branch. Also, execute post-commit hooks to perform additional security checks after code deployment.

3. **Custom Policies**: Define custom security policies based on project requirements and industry standards to ensure comprehensive security coverage.

4. **Automated Remediation**: Configure automated remediation processes to fix identified vulnerabilities or misconfigurations whenever possible.

5. **Reporting and Notifications**: Generate detailed reports on security findings and send notifications to relevant stakeholders for prompt remediation.

## Conclusion

By embedding SAST, SCA, and IaC scanning practices into the DevSecOps pipeline, the project seeks to strengthen the security posture of applications running in AWS, reduce vulnerabilities, and maintain compliance throughout the software development lifecycle.

# DevSecOps Project Diagram

```mermaid
flowchart LR
    A[GitHub Repos] --> B{CI/CD Pipeline GH Actions}
    B --> C[SAST]
    B --> D[SCA]
    B --> E[IaC Scanning]
    C --> F[Static Code Analysis]
    D --> G[Dependency Check]
    E --> H[Infrastructure Configuration]
    F --> I[Code Vulnerabilities]
    G --> J[Dependency Vulnerabilities]
    H --> K[Infrastructure Misconfigurations]
    I --> L[Remediation Actions]
    J --> L
    K --> L
    L --> M[Reporting and Notifications]
    M --> N[Development Team]
    M --> O[Security Team]