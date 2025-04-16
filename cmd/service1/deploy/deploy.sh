#!/bin/bash
ENV=$1
echo "🚀 Preparing deployment for $ENV"
# IMAGE_TAG="service1:$(git rev-parse --short HEAD)"
# REGISTRY="ghcr.io/your-org/service1"

echo "🔨 Building Docker image..."
# docker build -t "$REGISTRY-$ENV" .

echo "🚀 Pushing image..."
# docker push "$REGISTRY-$ENV"

echo "🧩 Updating GitOps config..."
# cd ../gitops-repo/service1/overlays/$ENV
# kustomize edit set image service1="$REGISTRY-$ENV"
# git commit -am "Update image for $ENV"
# git push
