" Declare vim9script.
vim9script 

# Function which returns configurations, or default configurations 
# if there are none.
export def Config(): dict<string>
    return {
        nv_dark: get(g:, "nv_dark", "pure"),
        nv_light: get(g:, "nv_light", "pure"),
        nv_contrast: get(g:, "nv_contrast", "medium")
    }
enddef

# Function which generates the correct palette based off configurations,
# which are background color in dark mode, background color in light mode, 
# and contrast.
export def Generator(dark: string, light: string, contrast: string): dict<string> 

    # The ratios of RGB in each color. 
    var rgb: dict<list<number>> = {
        pure: [04, 17, 04, -1],
        gray: [16, 17, 16, -4],
        jade: [00, 17, 08,  2],
        lime: [08, 17, 00,  3],
        pear: [16, 17, 04,  1],
        drab: [16, 17, 08, -2],
        aqua: [12, 17, 16, -2],
        sage: [12, 17, 12,  3],
        teal: [04, 17, 16,  1]
    }

    # teal, pear, lime, and sage are prominant highlighting colors

    # Dark mode. First column are the numbers by which the RGB in rgb are
    # multiplied to get the desired color, the second column is the same but
    # for syntax, and the third is used to make three additional slightly
    # brighter colors which are the same as the background.
    var dm: dict<list<number>> = {
        soft:   [3,  8, 4],
        medium: [2,  9, 2],
        hard:   [1, 10, 1]
    }
    
    # Light mode.
    var lm: dict<list<number>> = {
        soft:   [12, 7, -4],
        medium: [13, 6, -2],
        hard:   [14, 5, -1]
    }

    var palette: dict<string> = {
        none: "NONE",
        bold: "bold",
        itlc: "italic",
        rvrs: "reverse",
        undl: "underline",
        undc: "undercurl"
    }
   
    # Initialize variables.
    var bg: list<number> # Color of background.
    var fg: list<number> # Color of foreground.
    var bg_con: list<number> 
    var fg_con: list<number> 
    var sn_con: list<number>

    if &background ==# "dark"
        bg = rgb[dark ]
        fg = rgb[light]
        bg_con = dm[contrast]
        fg_con = lm[contrast]
    else
        bg = rgb[light]
        fg = rgb[dark ]
        bg_con = lm[contrast]
        fg_con = dm[contrast]
    endif
    
    for bg_num in [0, 1, 2, 3] 
        palette["bg" .. bg_num] = "#" .. printf("%02X%02X%02X",
            bg[0] * bg_con[0] + bg_num * bg[0] / bg_con[2],
            bg[1] * bg_con[0] + bg_num *    16 / bg_con[2],
            bg[2] * bg_con[0] + bg_num * bg[2] / bg_con[2]
        )
    endfor

    for fg_num in [0, 1, 2, 3] 
        palette["fg" .. fg_num] = "#" .. printf("%02X%02X%02X", 
            fg[0] * fg_con[0] + fg_num * fg[0] / fg_con[2],
            fg[1] * fg_con[0] + fg_num *    16 / fg_con[2], 
            fg[2] * fg_con[0] + fg_num * fg[2] / fg_con[2]
        )
    endfor
    
    for [k, v] in items(rgb)
        palette[k] = "#" .. printf("%02X%02X%02X",
            v[0] * bg_con[1] + v[3] * v[0] / bg_con[2],
            v[1] * bg_con[1] + v[3] *   16 / bg_con[2],
            v[2] * bg_con[1] + v[3] * v[2] / bg_con[2]
        )
    endfor   
    
    return palette
enddef

export def Highlight(group: string, gui: string, fg: string, bg: string, sp: string): void
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