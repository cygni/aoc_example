# Typescript with [Bun runtime](https://bun.sh/)

Supported on macOS, Linux, and WSL

[Should have Windows support before Dec 1.](https://twitter.com/bunjavascript/status/1717497691893285232)

Bun also has a built-in package manager and a testrunner (jest-like).

## Setup

Install bun

```sh
curl -fsSL https://bun.sh/install | bash
```

Install all dependencies - optional.

*(there are only two dev deps to install and they are optional to run the code.)*

```sh
bun install
```

## Run the code

```sh
bun part1

bun part2
```


Run the test suite

```sh
bun test
```

all scripts can be found in package.json


## Lint and formatting


### Linting
To lint and format the code, I have installed [Biome.js](https://biomejs.dev/).

Biome is installed as a dev dependency, remove it if you don't want it.

To lint, run the linting scripts
```
bun lint 

or

bun lint:fix
```


### Formatting

If you want formatting through vscode you'll need to move the `biome.js` file to the repo root folder. Then add the following to a `.vscode/settings.json` file in the repo with the following content. This will add biome as default formatter for ts and json files in the project. It will also format the code on save.

```json
{
  "[typescript]": {
    "editor.defaultFormatter": "biomejs.biome"
  },
  "[json]": {
    "editor.defaultFormatter": "biomejs.biome"
  },
  "editor.codeActionsOnSave": {
    "quickfix.biome": true,
    "source.organizeImports.biome": true
  }
}
```

## Docker

Build
```sh
docker build . -t day01
```

Run 
```sh
docker run -e part=part1 day01
docker run -e part=part2 day01
```

