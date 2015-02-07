## Usage

```bash
# only first time.
$ brew update
$ brew install python ansible
$ ansible-galaxy install hnakamur.homebrew-packages
$ ansible-galaxy install hnakamur.homebrew-cask-packages
$ echo localhost > /usr/local/etc/ansible/hosts
```

```bash
$ ansible-playbook localhost.yml
```
