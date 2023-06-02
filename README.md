# My dotfiles

These are my dotfiles. They are managed by [`toml bombadil`](https://github.com/oknozor/toml-bombadil).

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
```

## Changing dotfiles
From now on, change dotfiles in the `.dotfiles` folder. Edit the `bombadil.toml`
file with the directives on how and where to install the dotfiles, if you did
not already.

Finally, re-run `bombadil link`.

Refer to the [`toml bombadil`](https://oknozor.github.io/toml-bombadil/) docs for
more information.

## Content

### Neovim
The neovim config is based on [`theprimeagen`'s](https://github.com/ThePrimeagen/init.lua)
config, with edits of the remappings for the corne keyboard with the layout I'm using 
([see here](https://gist.github.com/MrHedmad/0d5bdb803d084f128ce316f74ab8ffe3)).


