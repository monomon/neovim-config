# **neovim-config**

Welcome to my repo used for keeping my Neovim configuration files that are important for me whenever I setup a new system that I use neovim regularly on.

| Plugins | Description |
| --- | --- |
| [Pathogen.vim](https://github.com/tpope/vim-pathogen) | Plugin installer and manager |
| [unite.vim](https://github.com/https://github.com/Shougo/unite.vim) | Used to create interfaces, dependency of vim-fugitive |
| [vim-airline](https://github.com/vim-airline/vim-airline) | Lean & mean status/tabline that's light as air |
| [vimfiler](https://github.com/Shougo/vimfiler.vim) | Powerful file explorer implemented by vimscript |
| [vim-fugitive](https://github.com/tpope/vim-fugitive) | A Git wrapper for vim |
| [vim-sensible](https://github.com/tpope/vim-sensible) | Defaults everyone can agree on |
| [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized) | Precision colorscheme for the vim text editor |

#### How do I use these files?
First, you'll (obviously) need [Neovim](https://github.com/neovim/neovim), though ordinary [Vim](https://github.com/vim/vim) may work also (but the following instructions will not work for Vim). You need to clone this repository and move it to $XDG_CONFIG_HOME/nvim.

In order to use vim-colors-solarized, you will need to download and install the solarized colorschemes for your terminal emulator. Without the solarized colorscheme enabled, your vim session will look very ugly. If you really don't want to use the solarized colorscheme or can't use it because your terminal emulator doesn't support it, comment lines 51-53 in init.vim.

##### On Mac/Linux/BSD:
```
git clone --recursive https://github.com/Tenn1518/neovim-config ~/.config/nvim
```
That's it! Surprised?

##### On Windows
I don't really know a simple way to clone the repo and move it to ~/AppData/Local/nvim since I don't have a Windows system to test that, so just clone this repository and move the folder to ~/AppData/Local/nvim.

#### To-Do
Add more plugins and stuffs

That's pretty much it.

#### Plugins?
Plugins are managed by [Pathogen.vim](https://github.com/tpope/vim-pathogen), a plugin installer and manager for Vim/Neovim and my personal favorite. To install more plugins, you need to drop your plugin folder into $MYVIMRC/bundle/, which on Unix-like systems should be ~/.config/nvim. 

I'm a very nooby neovim user, and have only been using it for about a couple of weeks now. I've been using vim for perhaps ~5 months now, and though I can do basic things, I'm very much still a noob. I also don't care about any vi philosophies and just want to make things easier for myself, so if you don't agree with something I've decided to add, I don't care very much.
