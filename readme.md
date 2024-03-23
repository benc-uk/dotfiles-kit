# Dotfiles Kit

This is a starting point for creating your own dotfiles repo, it is "fairly" opinionated, as it uses [Oh My Zsh](https://ohmyz.sh/) and the [Powerlevel10k](https://github.com/romkatv/powerlevel10k) theme.

It is based heavily on my own dotfiles repo with a lot of the personalization & aliases etc removed.

## Dotfiles Repo - What & Why

Storing your dotfiles on GitHub provides many advantages:

- Backup of your most important files and personal customizations
- Having a personalized & carefully tuned shell experience is a massive productivity boost
- Take all your familiar preferences, aliases, scripts, env vars and configurations anywhere
- Work the same way locally, in a cloud shell, in VSCode DevContainers, in CodeSpaces, on remote SSH hosts etc etc.

This guide has some great information: https://dotfiles.github.io/

## File Index

- `.aliases.rc` – All aliases go here (used with Bash and Zsh)
- `.banner.rc` – Logon banner message (used with Bash and Zsh)
- `.bashprompt.rc` – Bash prompt, like a poor mans p10k for Bash, disable with BASIC_PROMPT=1
- `.bashrc` – Bash setup/startup script
- `.env.rc` – Environmental vars and PATH settings, symlinked to `~/.bashenv` & `~/.zshenv`
- `.gitconfig.example` – Git config example, use as a reference
- `.p10k.zsh` – Customized Powerlevel10k prompt settings
- `.profile` – Untouched but synced just in case
- `.zshrc` – Zsh setup/startup script, enables Oh My Zsh and Powerlevel10k
- `backup.sh` – Git add, commit and push to GitHub to backup everything :)
- `install-zsh.sh` – Installs Zsh for you
- `install.sh` – Main dotfile install script, run this on any new system you clone into
- `update.sh` – Pulls latest version from GitHub and overwrites local changes

## Usage

💥 FIRST! FORK THIS REPO! DON'T TRY TO USE A CLONE. If you insist on cloning it, remove the origin remote to disconnect from my GitHub

Clone into `~/dotfiles`

```bash
cd ~
git clone https://github.com/<your-account>/dotfiles-kit.git dotfiles
```

Install zsh if it's not already installed, there's a script to help but it won't change the default shell, you need to run `chsh` for that.

```bash
cd ~
./dotfiles/install-zsh.sh
```

Now run main install script, which will install p10k, 'Oh My Zsh' & set up the various dotfiles symlinks etc
If you have an existing `.gitconfig` in $HOME it will be copied to this repo and symlinked as well.

```bash
cd ~
./dotfiles/install.sh
```

## Local overrides & Secrets

Place any secrets, and local overrides and anything else you don't want to be public into `~/.local.rc` this will be sourced by .zshrc or .bashrc  
**But DO NOT add this file to the repo or commit to git**

## Backup & syncing changes