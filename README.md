# CodeYogiCo Homebrew tap

Homebrew formulas for [CodeYogiCo](https://github.com/CodeYogiCo) tools.

## Install

```sh
brew tap CodeYogiCo/tap
```

Or install a formula directly:

```sh
brew install CodeYogiCo/tap/<formula>
```

## Available formulas

| Formula | Description | Source |
| ------- | ----------- | ------ |
| `asksolr` | Agentic Apache Solr CLI — query Solr in plain English using Claude. | [CodeYogiCo/asksolr](https://github.com/CodeYogiCo/asksolr) |

Once `asksolr` has a published release:

```sh
brew install CodeYogiCo/tap/asksolr
```

## How this tap is maintained

Formulas in `Formula/` are written automatically by
[GoReleaser](https://goreleaser.com) when an upstream project pushes a
`vX.Y.Z` tag. The upstream `release` workflow uses a `HOMEBREW_TAP_TOKEN`
secret (a PAT with `contents: write` on this repo) to commit the formula
update here.

Do not edit `Formula/*.rb` by hand — your changes will be overwritten on the
next upstream release.
