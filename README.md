# homebrew-tap

Homebrew formulae for command-line tools I publish.

## Install

Install a formula by its full name, and Homebrew taps this repo on first use:

```sh
brew install kendrick/tap/ltm
```

Check that it worked:

```sh
$ ltm --version
0.2.0
```

You'll see whichever version is current. Pick up new releases with `brew upgrade`.

## Formulae

| Formula | What it is |
|---|---|
| [`ltm`](Formula/ltm.rb) | CLI for [long-term-memory-kit](https://github.com/kendrick/long-term-memory-kit): org-level memory for coding agents, kept as shared decisions and policies in a git repo. |

Every formula here ships prebuilt binaries for macOS and Linux on both arm64 and x86_64.

## How Formulae Get Here

Each tool's release workflow writes its formula with that release's checksums and pushes it to this repo as a commit. `Formula/ltm.rb` comes from long-term-memory-kit's [release workflow](https://github.com/kendrick/long-term-memory-kit/blob/main/.github/workflows/release.yml) via [`scripts/homebrew-formula.ts`](https://github.com/kendrick/long-term-memory-kit/blob/main/scripts/homebrew-formula.ts). To change a formula, fix its generator, because the next release overwrites any hand edit. The workflow never replaces a newer version with an older one, so re-running an old tag can't roll the tap back.

## License

[MIT](LICENSE)
