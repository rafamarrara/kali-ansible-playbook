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
