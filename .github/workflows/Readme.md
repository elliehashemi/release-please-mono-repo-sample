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
