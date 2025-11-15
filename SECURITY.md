# 🔐 Security Policy

This repository follows best practices to ensure the security and integrity of OpenTofu modules. Please review the following guidelines when reporting security concerns.

## 📅 Supported Versions

Use this section to tell people about which versions of your project are
We actively maintain and provide security updates for the following versions:

| Version          | Supported | Notes                            |
| ---------------- | --------- | -------------------------------- |
| Latest (main)    | ✅ Yes    | Actively maintained and reviewed |
| Previous release | ✅ Yes    | Security patches only            |
| Older releases   | ❌ No     | Users should upgrade             |

If you're using an unsupported version, please consider upgrading to the latest release.

## 🚨 Reporting a Vulnerability

If you discover a security issue, please follow these steps:

1. Open issue as Bug.
2. Include:
   - A detailed description of the vulnerability.
   - Steps to reproduce the issue.
   - The potential impact.
   - Any mitigation strategies you suggest.
3. We will acknowledge your report within **48 hours** and provide updates on resolution.

## 🔒 Security Best Practices

To maintain the security of this repository, we enforce the following:

- ✅ **Pre-commit security scans** using `trivy`.
- ✅ **Code reviews** by CODEOWNERS before merging.
- ✅ **Automated tests** to detect misconfigurations.
- ✅ **Least privilege principles** when defining IAM policies.
- ✅ **Semantic versioning** to manage security patches.

## 🛡️ Responsible Disclosure

We appreciate responsible disclosure of vulnerabilities and will credit contributors who report security issues following ethical guidelines.

If you have any concerns, feel free to reach out privately before making any public disclosures.

Thank you for helping us keep this project secure! 🔐🚀
