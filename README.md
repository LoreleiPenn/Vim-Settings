# Vim Settings
This configuration repository was created under `~/.config/nvim` with the idea to keep my personal nvim and vim settings stored within Github. So for using these configuration, you must
 - Create the folder `~/.config/nvim` (i.e. `mkdir -p ~/.config/nvim`).
 - Then `cd` into `~/.config/nvim`.
 - And execute
   ```shell
   git clone git@github.com:LoreleiPenn/Vim-Settings.git .
   ```
## Neovim
For neovim, this should be all in order for it to install the plugins and read my configuration. The following files are Neovim configuration:
 - init.vim (Most common settings, setup and sourcing of personal settings).
 - ginit basis.vim (for loading options concerning the GUI. This is a basis for ginit.vim so that GUI settings are not mixed due to different screen hardware like font size).
 - local_init.vim (where most personal settings are written).
## Vim
For vim, I am using `vimrc` and `vimrc.local` as hardlinks for `~/.vimrc` and `~/.vimrc.local`. So after cloning the code, a hardlink must be made so that Vim detects the configuration and install the plugins.
## Setup Script
There is a script for automating the setup of these settings. For running such script, execute
```zsh
sh -c "$(curl -pfsSL https://raw.githubusercontent.com/LoreleiPenn/Vim-Settings/master/setup-vim-config.sh)"
```
and it will do the instructions mentioned prior to this point.
