# gh-repo-as-code

![License](https://img.shields.io/badge/license-MIT-green)

## 📝 Description

Manage your personal GitHub repositories as code using Terraform with gh-repo-as-code. Define and provision your repositories, including settings, branches, and collaborators, through declarative configuration files. Ensure consistency, version control, and reproducibility across your GitHub projects. Simplify repository management and automate the setup of new repositories with ease.

## 📁 Project Structure

```
.
├── LICENSE
├── config
│   ├── sample-repo
│   │   └── terragrunt.hcl
│   └── terragrunt.hcl
└── modules
    ├── main.tf
    ├── outputs.tf
    └── variables.tf
```

## 👥 Contributing

Contributions are welcome! Here's how you can help:

1. **Fork** the repository
2. **Clone** your fork: `git clone https://github.com/alvaroc-code/gh-repo-as-code.git`
3. **Create** a new branch: `git checkout -b feature/your-feature`
4. **Commit** your changes: `git commit -am 'Add some feature'`
5. **Push** to your branch: `git push origin feature/your-feature`
6. **Open** a pull request

Please ensure your code follows the project's style guidelines and includes tests where applicable.

## 📜 License

This project is licensed under the MIT License.

---
*This README was generated with ❤️ by ReadmeBuddy*
