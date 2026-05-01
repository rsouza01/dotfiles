#!/bin/bash
# Get the directory where this script is located
DOTFILES_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

# Link everything starting with a dot, excluding .git and the script itself
for file in $(find "$DOTFILES_DIR" -maxdepth 1 -name ".*" -not -name ".git" -not -name ".github"); do
    target="$HOME/$(basename "$file")"
    ln -sf "$file" "$target"
    echo "Linked $file to $target"
done

# Source the aliases in the current subshell
[ -f ~/.aliases ] && . ~/.aliases

ln -sf "$PWD/functions.sh" ~/.functions.sh
