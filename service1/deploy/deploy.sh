#!/bin/bash
ENV=$1
echo "🚀 Preparing deployment for $ENV"

# Update kustomize base or overlay if needed
# e.g., update image tag in kustomize overlay
# sed -i "s|newTag: .*|newTag: $(git rev-parse --short HEAD)|" overlays/$ENV/kustomization.yaml

# # Commit and push the change (optional or automated via bot)
# git config user.name "ci-bot"
# git config user.email "ci-bot@example.com"
# git add overlays/$ENV/kustomization.yaml
# git commit -m "chore(deploy): deploy service1 to $ENV"
# git push origin dev
