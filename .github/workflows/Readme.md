Release Flow:

<pre> ```Dev Developer 👩‍💻
│
├─> Create Feature Branch (e.g. `feature/branch1`) 👩‍💻
│ │
│ ├─> Commit Changes (e.g. `fix: commit 1`, `fix: commit 2`, `fix: commit 3`) 👩‍💻
│ └─> Create PR from feature branch to `dev` 👩‍💻
│
├─> Merge Feature PR into `dev` (after review) 👩‍💻
│
├─> Create PR to Merge `dev` into `main` 👩‍💻
│ │
│ ├─> [Trigger] Release PR Auto-Generation (via `Release Please`) 🤖
│ │ │
│ │ └─> Create Release PR (e.g. `Release ${version} for service1`) 🤖
│
├─> Release PR Merged 👩‍💻
│ │
│ ├─> [Trigger] Sync `dev` into `main` (via Auto-Sync Action) 🔄
│ │ │
│ │ └─> Sync `dev` into `main` 🔄
│ │
│ └─> [Trigger] Release Creation (via `Release Please`) 🤖
│ │
│ └─> Create Release (GitHub release) with version bump and changelog 🤖
│
└─> New Release Published 🎉``` </pre>

## ✅ Development Checklist

Please ensure the following guidelines are followed before submitting a Pull Request:

### 📂 Branch Naming Convention

- [ ] Branch name must follow the format:  
      **Examples:**
- `feature/IMS-1234-add-login-button`
- `fix/IMS-5678-fix-null-pointer-error`

---

### 💬 Commit Message Convention

- [ ] All commits should follow [Conventional Commits](https://www.conventionalcommits.org/) format:

**Examples:**

- `feat: add user authentication flow`
- `fix(login): handle empty input fields`
- `chore: update dependencies`
- `refactor(auth): simplify token validation`

**Allowed types include:**

- `feat` — A new feature
- `fix` — A bug fix
- `docs` — Documentation changes
- `style` — Code style changes (formatting, missing semi colons, etc.)
- `refactor` — Code refactoring without changing behavior
- `perf` — Performance improvements
- `test` — Adding or fixing tests
- `chore` — Maintenance and routine tasks
- `ci` — Continuous Integration-related changes

---

By following these conventions, we ensure cleaner git history, better automation, and easier release management 🚀
