How github actions work:

- push to dev or prod => triggers release-please.yml
- release-please.yml:
  - checks release-please-config.json & release-please-manifest.json
  - determines latest changes for each to detect what the next release will be and for what services
  - it creates a pull request
- once the pr is merged release-please.yml will be triggered again, this time makes a release

Note: to give release please access to read and write to repo , github token needs to be specified in the github action
