![build](https://github.com/nlbao/stormEnv/workflows/build/badge.svg)

# stormEnv

Spring-up your favorite development environment easily and quickly (like a ***Storm***!).

## Installation

Clone
```bash
git clone https://github.com/nlbao/stormEnv.git
cd stormEnv
chmod -R +x ./*
```

Setup all the apps
```bash
./setup.sh
```

Setup one app
```bash
./apps/tmux/setup.sh
./apps/vim/setup.sh
```

## Features
* Auto detect your operating system and run the corresponding scripts. Currently support macOS and ubuntu (other linux distros may works, too).
* Support common apps such as vim, tmux, zsh, etc.
* Tested (see https://github.com/nlbao/stormEnv/actions).

## Contribution Guide
* Fork [this project](https://github.com/nlbao/stormEnv).
* Resolve an issue in [this list](https://github.com/nlbao/stormEnv/issues) or file your own issues. Bug fixings, app feature or new app contribution are welcome!
* Create a new [pull request](https://github.com/nlbao/stormEnv/pulls) and together we'll review & merge it. :)
