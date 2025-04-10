How github actions work:

- push to dev or prod => triggers release-please.yml
- release-please.yml:
  - checks release-please-config.json & release-please-manifest.json
  - determines latest changes for each to detect what the next release will be and for what services
  - it creates a pull request
- once the pr is merged release-please.yml will be triggered again, this time makes a release

Note: to give release please access to read and write to repo , github token needs to be specified in the github action

Expectations:

- base branch of all PRs should be dev
- I think we can skip creating release PRs for each merge to dev, instead run github action manually whenever we are ready to make a release PR? or even directly merge the changes to main in github action to make a release?
- people might forget to commit with correct conventions, shouldn't we mandate convention naming in their PR at least , if it is counted in release making process ?
- I think deploying to main or dev should be manually or at least ask for proceed at the end?
