" Declare vim9script
vim9script

export def HL(group: string, gui: string, fg: string, bg: string, sp: string): void
    exec "hi " .. group 
               .. " term=NONE"
               .. " cterm=" .. gui
               .. " ctermfg=NONE"
               .. " ctermbg=NONE"
               .. " gui=" .. gui 
               .. " guifg=" .. fg 
               .. " guibg=" .. bg 
               .. " guisp=" .. sp
enddef
