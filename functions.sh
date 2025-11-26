
gcp() {
    if [ -z "$1" ]; then
        echo "Usage: gcp \"commit message\""
        return 1
    fi

    # Get current branch name
    current_branch=$(git rev-parse --abbrev-ref HEAD)

    # Show details and ask for confirmation
    echo "You are about to commit and push:"
    echo "  Branch: $current_branch"
    echo "  Commit message: \"$1\""
    read -p "Proceed? [y/N]: " confirm

    if [[ ! "$confirm" =~ ^[yY]$ ]]; then
        echo "Operation canceled."
        return 1
    fi

    # Execute the commands
    git add -u && git commit -m "$1" && git push origin "$current_branch"
}
