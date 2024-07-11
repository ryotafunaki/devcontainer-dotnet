#!/bin/bash

# Execute all scripts in the shells.d directory
TARGET_FILES=$(find shells.d -type f -name "*.sh")
for file in $TARGET_FILES; do
    bash "$file"
done

# Add path to the .bashrc file
cat << EOT >> ~/.bashrc

# Add .NET tools to the PATH
if [ -d "$HOME/.dotnet/tools" ]; then
    export PATH="$PATH:$HOME/.dotnet/tools"
fi
EOT