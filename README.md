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
- when merging feature branch to dev , title should follow convension comments- automate this
- change push main in prod deployment to release with tag : like this
  on:
  release:
  types: [published]

- default branch => dev

This is how it works:

- a developer works on a branch with base on dev branch
- once approved merge to dev (title is important here to follow semver)
- all devs can merge their features to dev
- once we are ready , merge dev to main
- once merged to dev release-please will be triggered it makes a PR release with all changes
- once we merge PR , release please make a release and bump up the version
- then my other github action will be triggered to deploy to prod
