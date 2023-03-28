# Nightvision for Vim

Nightvision uses only green.

## Features

* Light and dark mode
* Soft, medium, and hard contrast
* Nine-color, all-green palette
> * pure, gray, jade, lime, pear, drab, aqua, sage, and teal
* Change background and foreground colors to any in the palette
* Palette is generated, ensuring colors are correct
* Fully written in vim9script

## Screenshots

## Dark and Light Mode Backgrounds

The background color in dark mode can be set by specifying a color,

```
" Legacy vimscript
let g:nv_dark = 'jade'
```

```
# Vim9script
g:nv_dark = 'jade'
```

or, for light mode,

``` 
" Legacy vimscript
let g:nv_light = 'sage'
```

```
# Vim9script
g:nv_light = 'sage'
```

## Contrast

Contrast changes the brightness of the background, the brightness of text, and the difference in brightness between syntax (for instance, comments are darker than other syntax highlights in dark mode, or brighter in light mode). Set contrast by specifying one of the three options,

``` 
" Legacy vimscript:
let g:nv_contrast = "soft"
```

```
# Vim9script:
g:nv_contrast = "soft"
```

## Other Features

Enter ```:echo g:nv_colors``` in Vim to view the hex values of the current nightvision configuration.

## Installation

Nightvision can be installed with any of the usual package managers.

### Pathogen

Clone into the directory where you keep your plugins. For example, 

``` 
cd ~/.vim/bundle/ && git clone https://github.com/mathofprimes/nightvision-vim.git
```

### Vim-Plug

Add

```
Plug 'mathofprimes/nightvision-vim'
``` 

to you're .vimrc file and run ```:PlugInstall```.

### Vundle

Add 

```
Plugin 'mathofprimes/nightvision-vim'
``` 

to you're .vimrc file and run ```:PluginInstall```.

## Other Text Editors

* [Neovim](https://github.com/mathofprimes/nightvision-nvim)
