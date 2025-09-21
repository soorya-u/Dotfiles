# List of desired PATH directories
my_paths=(
    "$HOME/.local/bin"
    "$HOME/.local/share/pnpm" # pnpm cache path
    "$HOME/.bun/bin" # bun global path
    "$HOME/.modular/pkg/packages.modular.com_mojo/bin" # modular global path
    "/snap/bin" # snap binaries
)

# Loop through and add only if directory exists and not already in PATH
for p in "${my_paths[@]}"; do
    if [ -d "$p" ] && [[ ":$PATH:" != *":$p:"* ]]; then
        export PATH="$p:$PATH"
    fi
done
