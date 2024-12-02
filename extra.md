# Extra

Some extra commands that may be helpful.

## Prep

### Install and enable SSH service

Install SSH, start its service and enable it to start at boot.

```bash
sudo apt install openssh-server
sudo systemctl start ssh
sudo systemctl enable ssh
sudo systemctl status ssh
```

### Config SSH

Copy SSH Keys to host

```bash
TBD

mkdir ~/.ssh
sudo chmod 700 ~/.ssh
sudo chown $USER:$USER ~/.ssh
chmod 600 ~/.ssh/id_rsa

```

Config SSH to use your SSH key to github.

Edit ssh config file `~/.ssh/config` and add the following entry:

```bash
# GitHub
Host github.com
    IdentityFile ~/.ssh/id_rsa # your priv ssh key 
    IdentitiesOnly yes
```

## Ansible useful commands

### Create role structure

To create the folder structure for an Ansible role, you can use the `ansible-galaxy` command-line tool or manually create the directories. Here's how to do it with `ansible-galaxy`:

```bash
ansible-galaxy init myrole
```

This command will create a role named myrole with the following structure:

```bash
myrole/
├── defaults
│   └── main.yml
├── files
├── handlers
│   └── main.yml
├── meta
│   └── main.yml
├── README.md
├── tasks
│   └── main.yml
├── templates
├── tests
│   ├── inventory
│   └── test.yml
├── vars
│   └── main.yml
└── .gitignore
```
