# Terraform: IAM Module

This repository contains a terraform module for managing **IAM users**, **roles**, and **policies** in AWS. It simplifies identity and access management by automating the creation of users, role assignments, and policy attachments, ensuring secure and scalable access control.

## 📂 Directory Structure

The following structure provides a clear organization of the **repository**.

```plaintext
.
├── .github/
│   ├── workflows/
│   │   ├── release.yml        # GitHub Actions workflow to create release.
│   ├── CODEOWNERS             # Defines required reviewers.
│   ├── dependabot.yml         # Dependabot configuration file.
│
├── examples/
│   ├── 01-default/            # Example to use module with minimal configuration.
│
├── .czrc                      # Commitizen configuration.
├── .gitignore                 # Git ignored files.
├── .gitleaks.toml             # GitLeaks configuration file.
├── .pre-commit-config.yaml    # Pre-commit hooks for linting and validation.
├── .releaserc                 # Semantic release configuration.
├── .trivyignore               # List of errors to be ignored by Trivy.
│
├── CONTRIBUTING.md            # This file.
├── LICENCE                    # License applied to module source code.
│
├── main.tf                    # Main terraform module.
├── outputs.tf                 # Defines outputs for the module.
├── README.md                  # Auto docs generated with tfdocs.
├── CONTRIBUTING.md            # Security policy.
├── variables.tf               # Input variables for the module.
├── versions.tf                # Required terraform config.
```

## 🚀 Getting Started

To collaborate, clone the repository and customize it as needed:

```bash
git clone https://github.com/gucasassi/tofu-aws-iam.git
cd tofu-aws-iam
```

To ensure code quality and consistency, this repository uses `pre-commit` and `commit-msg` hooks.

### Install pre-commit

Before you can run hooks, you need to have the pre-commit package manager installed.

```bash
pip install pre-commit
```

Follow the instructions to validate the installation.

```bash
pre-commit --version
```

Once `pre-commit` is installed, please install required hooks.

```bash
pre-commit install
```

### Install Commitizen

If you have **python** installed, you can install **commitizen** using pip.

```bash
pip install commitizen
```

Verify the installation.

```bash
cz --version
```

## 🔄 Workflow Guide

This repository follows a structured workflow to ensure **code quality, security, and consistency**. Below is the recommended process to work together.

### 1 - Create new branch

Follow the **GitHub flow** practice.

```bash
git switch -c feature/my-new-feature
```

Use descriptive branch names `feature`, `fix`, `chore`, `etc`.

### 2 - Make changes and commit

Once the necessary changes are made, use **commitizen** to create a commit that follows **conventional commits**.

```bash
cz
```

Or manually:

```bash
git commit -m "feat: configure bucket as private by default"
```

#### 💡 Tips:

- Please use [atomic commits](https://dev.to/samuelfaure/how-atomic-git-commits-dramatically-increased-my-productivity-and-will-increase-yours-too-4a84).
- Write [good commits](https://www.freecodecamp.org/news/how-to-write-better-git-commit-messages/) message.
- Please always use lowercase in commit messages.

### 3 - Push & Pull Request

Push your branch to the repository.

```bash
git push origin feature/my-new-feature
```

That's all, happy coding!
