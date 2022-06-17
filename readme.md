# Dotfiles Kit

This is a starting point for creating your own dotfiles repo, it uses [Oh My Zsh](https://ohmyz.sh/) and the [Powerlevel10k](https://github.com/romkatv/powerlevel10k) theme.

It is based heavily on my own dotfiles repo with a lot of the personalization & aliases etc removed.

## File Index

- `.aliases.rc` – All aliases go here (used with Bash and Zsh)
- `.banner.rc` – Logon banner message (used with Bash and Zsh)
- `.bashprompt.rc` – Bash prompt, like a poor mans p10k for Bash, disable with BASIC_PROMPT=1
- `.bashrc` – Bash setup/startup script
- `.env.rc` – Environmental vars and PATH settings, symlinked to `~/.bashenv` & `~/.zshenv`
- `.gitconfig` – Git config
- `.p10k.zsh` – Customized Powerlevel10k prompt settings
- `.profile` – Untouched but synced just in case
- `.zshrc` – Zsh setup/startup script, enables Oh My Zsh and Powerlevel10k
- `backup.sh` – Git add, commit and push to GitHub
- `install-zsh.sh` – Installs Zsh
- `install.sh` – Main install script
- `update.sh` – Pulls version from GitHub and overwrites local changes

## Usage

💥 FIRST! FORK THIS REPO! DON'T TRY TO USE A CLONE. If you insist on cloning it, remove the origin remote to disconnect from my GitHub

Clone into `~/dotfiles`

```bash
cd ~
git clone https://github.com/<you>/dotfiles-kit.git dotfiles
```

Install zsh if it's not already installed

```bash
cd ~
./dotfiles/install-zsh.sh
```

Run main install script, to install p10k, omz & set up the dotfiles symlinks etc

```bash
cd ~
./dotfiles/install.sh
```

Place any secrets, and local overrides into `~/.local.rc` **DO NOT add this file to the repo**
