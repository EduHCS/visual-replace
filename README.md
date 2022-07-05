# visual-replace

Is a small plugin writen in lua to make substituting a region of text easy

## Install

Install with your preferred package manager:

[vim-plug](https://github.com/junegunn/vim-plug)
'''vim
Plug 'eduhcs/visual-replace'
'''

[packer](https://github.com/wbthomason/packer.nvim)
'''lua
use 'eduhcs/visual-replace'
'''

## Usage

You will need to setup your own keybings as **visual-replace** doesn't come with any:
'''lua
map("v", "<leader>r", ":lua require('visual-replace').replace()<cr>", options )
'''

This will bind the replace action to **<leader>r** in visual mode
