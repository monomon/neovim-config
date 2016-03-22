# .__   __.  _______   ______   ____    ____  __  .___  ___.          ______   ______   .__   __.  _______  __    _______ 
# |  \ |  | |   ____| /  __  \  \   \  /   / |  | |   \/   |         /      | /  __  \  |  \ |  | |   ____||  |  /  _____|
# |   \|  | |  |__   |  |  |  |  \   \/   /  |  | |  \  /  |  ______|  ,----'|  |  |  | |   \|  | |  |__   |  | |  |  __  
# |  . `  | |   __|  |  |  |  |   \      /   |  | |  |\/|  | |______|  |     |  |  |  | |  . `  | |   __|  |  | |  | |_ | 
# |  |\   | |  |____ |  `--'  |    \    /    |  | |  |  |  |        |  `----.|  `--'  | |  |\   | |  |     |  | |  |__| | 
# |__| \__| |_______| \______/      \__/     |__| |__|  |__|         \______| \______/  |__| \__| |__|     |__|  \______|

Welcome to my repo used for keeping my Neovim configuration files that are important for me whenever I setup a new system that I use neovim regularly on.

This project is licensed under the terms of the [MIT license](https://github.com/Tenn1518/neovim-config/blob/master/LICENSE).

 Plugins | Description
 ------- | -----------
 [Pathogen.vim](https://github.com/tpope/vim-pathogen) | Plugin installer and manager
 [unite.vim](https://github.com/https://github.com/Shougo/unite.vim) | Used to create interfaces, dependency of vim-fugitive
 [vim-airline](https://github.com/vim-airline/vim-airline) | Lean & mean status/tabline that's light as air
 [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes) | A collection of themes for vim-airline
 [vim-fugitive](https://github.com/tpope/vim-fugitive) | A Git wrapper for vim
 [vim-sensible](https://github.com/tpope/vim-sensible) | Defaults everyone can agree on
 [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized) | Precision colorscheme for the vim text editor
 [ag.vim](https://github.com/vim-scripts/ag.vim) | ag, the_silver_searcher (better than ack, which is better than grep)
 [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim) | Fuzzy file, buffer, mru, tag, etc finder

#### How do I use these files?
First, you'll (obviously) need [Neovim](https://github.com/neovim/neovim), though ordinary [Vim](https://github.com/vim/vim) may work also (but the following instructions will not work for Vim). You need to clone this repository and move it to $XDG_CONFIG_HOME/nvim.

In order to use vim-colors-solarized, you will need to download and install the solarized colorschemes for your terminal emulator. Without the solarized colorscheme enabled, your vim session will look very ugly. If you really don't want to use the solarized colorscheme or can't use it because your terminal emulator doesn't support it, comment lines 51-53 and line 67, and uncomment line 72 in init.vim.


Vim-airline is set up to use powerline symbols. If you don't already have pre-patched Powerline fonts, you can clone the [powerline/fonts](https://github.com/powerline/fonts) repo and run install.sh from inside the repository. Clone it with:
```
git clone https://github.com/powerline/fonts
```
And install it with:
```
cd fonts
bash install.sh
```
You'll then need to set a Powerline-patched font as your terminal font. I use "Ubuntu Mono deriative Powerline Regular" 14pt. If you are on OS X, Menlo seems like a popular choice.

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

Plugins are handled as [submodules](https://www.git-scm.com/book/en/v2/Git-Tools-Submodules), so when you pull the repository, you get the latest version of all the plugins. That's also why you have to clone the repo with the "--recursive" flag, so that all the submodules are also pulled and initialized. You'll need to do a `git fetch`, `git pull`, and `git submodule update --remote` in order to update the repository and the submodules. You'll also probably need to do a `git submodule init` if you find empty plugin folders, which basically mean I've added a new submodule and you need to let git initialize it and install it.

#### A quick warning

I'm a very nooby neovim user, and have only been using it for about a couple of weeks now. I've been using vim for perhaps ~5 months now, and though I can do basic things, I'm very much still a noob. I also don't care about any vi philosophies and just want to make things easier for myself, so if you don't agree with something I've decided to add, I don't care very much.
