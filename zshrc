# List of Zsh scripts

SCRIPT_DIR="$HOME/.dotfiles/sh"

scripts=(
    aliases.sh
    env.sh
    path.sh
    loaders.sh
    plugins.sh
    extras.sh
)

script_paths=()

for s in "${scripts[@]}"; do
  script_paths+=("$SCRIPT_DIR/$s")
done

# Loop and source each if it exists
for cfg in "${script_paths[@]}"; do
    [[ -f "$cfg" ]] && source "$cfg"
done

