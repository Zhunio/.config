# .config

`.config` is a collection of configuration files for quickly setting up development environments.

### Clone .config repo

```bash
$ git clone https://github.com/Zhunio/.config.git
```

### Install Apple Command Line Tools, which are required for Git and Homebrew

```bash
$ xcode-select --install
```

### Install Homebrew

```bash
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Bootstrap Homebrew dependencies

```bash
$ brew bundle --file ~/.config/Brewfile
```
