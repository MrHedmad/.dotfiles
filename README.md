# My dotfiles

These are my dotfiles. They are managed by [`toml bombadil`](https://github.com/oknozor/toml-bombadil).

You can use `doctor` to check if the configuration works.
See `shell/doctor.sh` for more info.

## Branches
Each branch is a different configuration for an environment:
- `arch` for Arch Linux machines running `zsh`.

## Installing

Of course you need to have `toml bombadil` installed.

### On a new machine
```bash
git clone git@github.com:MrHedmad/dotfiles.git $HOME/.dotfiles
bombadil install $HOME/.dotfiles
bombadil link
```

### On an old machine
Simply:
```bash
cd $HOME/.dotfiles
git pull
bombadil link
```

## Changing dotfiles
From now on, change dotfiles in the `.dotfiles` folder. Edit the `bombadil.toml`
file with the directives on how and where to install the dotfiles, if you did
not already.

Finally, re-run `bombadil link` to refresh local configuration.
If you want to iteratively edit configurations you can run `bombadil watch` to
refresh the installed config at every file change.

Refer to the [`toml bombadil`](https://oknozor.github.io/toml-bombadil/) docs for
more information.
