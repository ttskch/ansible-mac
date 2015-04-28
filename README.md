## Usage

```bash
# only first time.
$ brew update
$ brew install python ansible
$ ansible-galaxy install hnakamur.homebrew-packages
$ ansible-galaxy install hnakamur.homebrew-cask-packages
```

```bash
$ ansible-playbook localhost.yml -i hosts
```
