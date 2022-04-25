name: Close Pull Request

# only trigger on pull request closed events
on:
  pull_request:
    types: [ closed ]

jobs:
  merge_job:
    # this job will only run if the PR has been merged
    if: github.event.pull_request.merged == true
    runs-on: ubuntu-latest
    steps:
    - run: |
        echo PR #${{ github.event.number }} has been merged

  close_job:
    # this job will only run if the PR has been closed without being merged
    if: github.event.pull_request.merged == false
    runs-on: ubuntu-latest
    steps:
    - run: |
        echo PR #${{ github.event.number }} has been closed without being merged
