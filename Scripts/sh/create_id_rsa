#!/bin/bash

# Check if ~/.ssh directory exists, create it if not
if [ ! -d "$HOME/.ssh" ]; then
    echo "Creating ~/.ssh directory..."
    mkdir -p "$HOME/.ssh"
    chmod 700 "$HOME/.ssh"
else
    echo "~/.ssh directory already exists."
fi

# Check if the key already exists, and prompt for overwriting
if [ -f "$HOME/.ssh/id_rsa" ]; then
    echo "SSH key already exists at $HOME/.ssh/id_rsa"
    read -p "Do you want to overwrite it? (y/n): " choice
    if [[ "$choice" != "y" ]]; then
        echo "Exiting script without overwriting."
        exit 1
    fi
fi

# Generate the SSH key pair
echo "Generating SSH key pair..."
ssh-keygen -t rsa -b 4096 -C "$USER@$(hostname)" -f "$HOME/.ssh/id_rsa" -N ""

# Set the correct permissions
chmod 600 "$HOME/.ssh/id_rsa"
chmod 644 "$HOME/.ssh/id_rsa.pub"

echo "SSH key pair generated successfully:"
echo "Private key: $HOME/.ssh/id_rsa"
echo "Public key: $HOME/.ssh/id_rsa.pub"
