name: Deploy

on:
workflow_dispatch:
inputs:
service:
description: 'Service name (e.g., service1)'
required: true
environment:
description: 'Environment (dev, qa, prod)'
required: true
default: 'prod'

push:
branches: [ main ] # triggers prod deployment automatically
jobs:
deploy:
runs-on: ubuntu-latest
steps: - name: 🛡️ Block manual deploys to prod
if: github.event_name == 'workflow_dispatch' && github.event.inputs.environment == 'prod'
run: |
echo "❌ Manual deploys to PROD are not allowed."
exit 1

      - name: Checkout
        uses: actions/checkout@v4

      - name: Trigger deploy.sh in the selected service
        run: |
          chmod +x ./${{ github.event.inputs.service }}/deploy/deploy.sh
          ./${{ github.event.inputs.service }}/deploy/deploy.sh ${{ github.event.inputs.environment }}
