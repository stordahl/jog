# jog 🏃

For those that can't remember npm scripts. Supports npm, and pnpm repositories.

## Dependencies

- [jq](https://stedolan.github.io/jq/)
- [fzf](https://github.com/junegunn/fzf)
- [node.js & npm](https://nodejs.org/)

## Installation

Simply download `jog.sh` and configure it to run however you like. Personally, I prefer running scripts like this via a zsh alias in my .zshrc

```
alias jog="zsh ./path/to/script/jog.sh"
```

## Usage

If you have the recommended setup, then running `jog` in a directory with a package.json file will open fzf where you can select which script you'd like to run. It's as simple as that!
