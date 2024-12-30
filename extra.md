# Extra

Some extra commands that may be helpful.
Also some info from my previous attempt to document my Kali preferences - [Link](https://github.com/rafamarrara/CTFs/blob/main/kaliInstallation.md)

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

```bash
$ ssh git@github.com
The authenticity of host 'github.com (140.82.112.3)' can't be established.
EDXXXXX key fingerprint is SHA256:+XxXXxXXxxXX/xXxXxXxXxx.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'github.com' (EDXXXXX) to the list of known hosts.
Enter passphrase for key '/home/user/.ssh/id_rsa':
PTY allocation request failed on channel 0
Hi User! You've successfully authenticated, but GitHub does not provide shell access.
Connection to github.com closed.
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
