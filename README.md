## Usage

```bash
# only first time.
$ brew update
$ brew install python ansible
```

```bash
# e.g. install all
$ ansible-playbook localhost.yml -ihosts

# e.g. install only brew casks
$ ansible-playbook localhost.yml -ihosts --tags=brewcask

# e.g. install all but skip initial configurings
$ ansible-playbook localhost.yml -ihosts --skip-tags=init
```
