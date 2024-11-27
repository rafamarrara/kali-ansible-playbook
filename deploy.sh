#!/bin/sh

# Ensure .local/bin is in the PATH for ansible executables
PATH=$PATH:$HOME/.local/bin

if ! command -v ansible >/dev/null; then
    printf "[+] Installing Ansible\n"
    sudo apt-get update -y && sudo apt-get install -y ansible
    if [ $? -gt 0 ]; then
        printf "[!] Error occurred when attempting to install ansible package.\n"
        exit 1
    fi
fi

printf "[+] Running Ansible playbooks\n"
ansible-playbook -i inventory --ask-become-pass main.yml
if [ $? -gt 0 ]; then
    printf "[!] Error occurred during playbook run.\n"
    exit 1
fi

printf "[!] Finished\n"
