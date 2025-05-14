name: Deploy Service1 to Prod (Post Release)

on:
  push:
    branches:
      - main
    paths:
      - "service1/**"
      - ".github/workflows/service1-release-deploy.yml"

jobs:
  deploy-prod:
    runs-on: ubuntu-latest
    environment:
      name: prod

    steps:
      - name: Checkout code
        uses: actions/checkout@v4

      - name: Mock Build
        run: echo "🔧 Building Service1 for prod"

      - name: Mock Deploy
        run: echo "🚀 Deploying Service1 to PROD environment"
