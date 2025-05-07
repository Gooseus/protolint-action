# protolint-action

![Build Status](https://github.com/gooseus/protolint-action/workflows/build-test/badge.svg)

A GitHub Action for using [protolint](https://github.com/yoheimuta/protolint) in your [GitHub Action](https://github.com/features/actions) workflows.

## Required inputs

- `configDirectory`: the path to where the `.protolint.yaml` configuration exists.

## Optional

- `srcDirectory`: the path to where the .proto files are, defaults to `.`
- `protolintVersion`: the version of protolint to use, defaults to `v0.54.1`

## Example

```yaml
name: "lint protobuf"
on: pull_request

jobs:
  pr-check:
    runs-on: ubuntu-latest
    steps:
      - name: checkout source
        uses: actions/checkout@v3

      - name: run protolint
        uses: plexsystems/protolint-action@v0.7.0
        with:
          configDirectory: test
```
