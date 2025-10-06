# NVM

source_files=(
  "$NVM_DIR/nvm.sh" # nvm loader
  "$NVM_DIR/bash_completion" # nvm bash_completion
  "$HOME/.antigen/antigen.zsh" # antigen.zsh
  "$HOME/.cargo/env" # Rust 
)

for s in "${source_files[@]}"; do
  [ -s "$s" ] && . "$s"
done

# Directory Colors
[ -s ~/.dircolors ] && eval $(dircolors -b ~/.dircolors) || eval $(dircolors -b)

# Starship
command -v starship >/dev/null 2>&1 && eval "$(starship init zsh)"

# --- SSH agent setup ---
if ! pgrep -u "$USER" ssh-agent >/dev/null; then
  eval "$(ssh-agent -s 2>/dev/null)" >/dev/null
fi

ssh-add -l &>/dev/null || ssh-add ~/.ssh/github/id_* 2>/dev/null
