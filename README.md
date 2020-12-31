# giphy-cli

## Table of Contents

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Overview](#overview)
- [Install](#install)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Overview

I wanted a CLI utility to search and retrieve GIF URLs without leaving the
terminal.

This allows me to compose the utility with other programs and tools. For
example, if I wanted to post a GIF in a GitHub Pull Request approval comment:

```shell
gh pr review --approve --comment -b "![yay]($(giphy yay))"
```

## Prerequisites

- [`curl`](https://curl.haxx.se/)
- [`rg`](https://github.com/BurntSushi/ripgrep) for consistent grep API between
  linux and macOS.
- [`jq`](https://stedolan.github.io/jq/) for command-line JSON parser

## Install

Simply, copy/paste the content of [`giphy.sh`](giphy.sh) somewhere on your
system (e.g. `${HOME}/.bash_profile` or `${HOME}/.bashrc`).

Alternatively, you can clone the repo down and
`source /path/to/giphy-cli/giphy.sh` from your `.bash_profile` (macOS users) or
your `.bashrc` (linux users).

## Usage

```shell
giphy <query>
```

You can compose this with other tools or programs:

- On macOS, you can open the GIF URL in your default browser with
  `open $(giphy yay)`
  - On Linux, replace `open` with `xdg-open`

## Contributing

GitHub Issues and Pull Requests are welcome:

- Fork & clone: `gh repo fork pbnj/giphy-cli --clone --remote`
- Create branch: `git checkout -b my-branch`
- Make changes
- Commit: `git add <files> && git commit -m "some message"`
- Push & open PR: `gh pr create`

![yay](https://media0.giphy.com/media/3oz8xRF0v9WMAUVLNK/giphy.gif?cid=790b76116wpmwqbk25s8w8wml7on6ge1i2shogm5z1v9h1ov&rid=giphy.gif)

## License

[MIT](LICENSE)
