# List of Zsh scripts

SCRIPT_DIR="$HOME/.dotfiles/scripts/shell"

scripts=(
    aliases.sh
    env.sh
    path.sh
    loaders.sh
    plugins.sh
    extras.sh
)

# Loop and source each if it exists
for s in "${scripts[@]}"; do
    scriptPath="$SCRIPT_DIR/$s"
    [[ -s "$scriptPath" ]] && . "$scriptPath"
done
