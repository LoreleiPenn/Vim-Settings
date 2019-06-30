# Vim Settings
This configuration repository was created under `~/.config/nvim` with the idea to keep my personal nvim and vim settings stored within Github. So for using these configuration, you must
 - Have the folder `~/.config/nvim`.
 - Then `cd` into `~/.config/nvim`.
 - And execute `git clone git@github.com:LoreleiLVNH/Vim-Settings.git .`
## Neovim
For neovim, this should be all in order for it to install the plugins and read my configuration.

## Vim
For vim, I am using `vimrc` and `vimrc.local` as hardlinks for `~/.vimrc` and `~/.vimrc.local`. So after cloning the code, a hardlink must be made so that Vim detects the configuration and install the plugins.
