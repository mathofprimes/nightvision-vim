" Declare vim9script
vim9script

# Import autoload
import autoload "generator.vim" as gr
import autoload "highlight.vim" as hl
import autoload "nightlight.vim" as nl
import autoload "configuration.vim" as nc

hi clear

if exists("syntax_on")
    syntax reset
endif

if has("termguicolors")
    set termguicolors
endif

var c: dict<string> = {}

if nc.Config().nv_nightlight == "off"
    c = gr.Generator(
        nc.Config().nv_dark,
        nc.Config().nv_light,
        nc.Config().nv_contrast
    )
elseif nc.Config().nv_nightlight == "on" 
    c = gr.Generator(
        nl.Nightlight(nc.Config().nv_start_hour)[0],
        nl.Nightlight(nc.Config().nv_start_hour)[1],
        nc.Config().nv_contrast
    )
endif

g:nv_colors = c
g:colors_name = "nightvision"

# Syntax groups. See :h group-name.

hl.HL("Comment", c.itlc, c.gray, c.none, c.none)

hl.HL("Constant",  c.none, c.jade, c.none, c.none)
hl.HL("String",    c.none, c.jade, c.none, c.none)
hl.HL("Character", c.none, c.jade, c.none, c.none)
hl.HL("Number",    c.none, c.jade, c.none, c.none)
hl.HL("Boolean",   c.none, c.jade, c.none, c.none)
hl.HL("Float",     c.none, c.jade, c.none, c.none)

hl.HL("Identifier", c.none,   c.pure, c.none, c.none)
hl.HL("Function",   c.itlc,   c.lime, c.none, c.none)

hl.HL("Statement",   c.none, c.pear, c.none, c.none)
hl.HL("Conditional", c.none, c.pear, c.none, c.none)
hl.HL("Repeat",      c.none, c.pear, c.none, c.none)
hl.HL("Label",       c.none, c.pear, c.none, c.none)
hl.HL("Operator",    c.none, c.pear, c.none, c.none)
hl.HL("Keyword",     c.none, c.pear, c.none, c.none)
hl.HL("Exception",   c.none, c.pear, c.none, c.none)

hl.HL("PreProc",   c.none, c.drab, c.none, c.none)
hl.HL("Include",   c.none, c.drab, c.none, c.none)
hl.HL("Define",    c.none, c.drab, c.none, c.none)
hl.HL("Macro",     c.none, c.drab, c.none, c.none)
hl.HL("PreCondit", c.none, c.drab, c.none, c.none)

hl.HL("Type",         c.none, c.aqua, c.none, c.none)
hl.HL("StorageClass", c.none, c.aqua, c.none, c.none)
hl.HL("Structure",    c.none, c.aqua, c.none, c.none)
hl.HL("Typedef",      c.none, c.aqua, c.none, c.none)

hl.HL("Special",        c.none, c.sage, c.none, c.none)
hl.HL("SpecialChar",    c.none, c.sage, c.none, c.none)
hl.HL("Tag",            c.none, c.sage, c.none, c.none)
hl.HL("Deliminator",    c.none, c.sage, c.none, c.none)
hl.HL("SpecialComment", c.none, c.sage, c.none, c.none)
hl.HL("Debug",          c.none, c.sage, c.none, c.none)

hl.HL("Underlined", c.none, c.teal, c.none, c.none)
hl.HL("Ignore",     c.none, c.teal, c.none, c.none)
hl.HL("Error",      c.none, c.teal, c.none, c.none)
hl.HL("Todo",       c.none, c.teal, c.none, c.none)

# HIGHLIGHTING GROUPS (see :h hi-groups):

# Modes.
hl.HL("Normal",    c.none, c.fg0,  c.bg0, c.none)
hl.HL("Terminal",  c.none, c.fg0,  c.bg0, c.none)
hl.HL("Visual",    c.none, c.none, c.bg2, c.none)
hl.HL("VisualNos", c.none, c.none, c.bg2, c.none)

# Cursors.
hl.HL("Cursor",         c.rvrs, c.none, c.none, c.none)
hl.HL("lCursor",        c.rvrs, c.none, c.none, c.none)
hl.HL("CursorIM",       c.rvrs, c.none, c.none, c.none)
hl.HL("CursorColumn",   c.none, c.none, c.bg1,  c.none)
hl.HL("CursorLine",     c.none, c.none, c.bg1,  c.none)
hl.HL("CursorLineFold", c.none, c.fg0,  c.bg0,  c.none)
hl.HL("CursorLineNr",   c.none, c.lime, c.bg1,  c.none)
hl.HL("CursorLineSign", c.none, c.fg0,  c.bg0,  c.none)

# Columns, lines.
hl.HL("ColorColumn", c.none, c.none, c.bg1,  c.none)
hl.HL("EndOfBuffer", c.none, c.fg0,  c.bg0,  c.none)
hl.HL("LineNr",      c.bold, c.fg3,  c.bg1,  c.none)
hl.HL("LineNrAbove", c.none, c.gray, c.none, c.none)
hl.HL("LineNrBelow", c.none, c.gray, c.none, c.none)
hl.HL("SignColumn",  c.none, c.fg0,  c.none, c.none)
hl.HL("VertSplit",   c.none, c.fg0,  c.bg3,  c.none) 

# Messages.
hl.HL("ErrorMsg",   c.bold, c.teal, c.none, c.none)
hl.HL("ModeMsg",    c.bold, c.lime, c.none, c.none)
hl.HL("MoreMsg",    c.bold, c.lime, c.none, c.none) 
hl.HL("WarningMsg", c.bold, c.pear, c.none, c.none)

# Popup menu.
hl.HL("Pmenu",      c.none, c.none, c.bg3,  c.none)
hl.HL("PmenuSbar",  c.none, c.fg0,  c.none, c.none)
hl.HL("PmenuSel",   c.none, c.bg0,  c.fg0,  c.none)
hl.HL("PmenuThumb", c.none, c.fg0,  c.none, c.none)

# Search.
hl.HL("IncSearch",  c.none, c.bg0, c.pear, c.none)
hl.HL("MatchParen", c.bold, c.fg3, c.none, c.none)
hl.HL("Search",     c.none, c.bg0, c.teal, c.none)
hl.HL("WildMenu",   c.none, c.bg0, c.pear, c.none)

# Folds.
hl.HL("Folded",     c.none, c.gray, c.bg3, c.none)
hl.HL("FoldColumn", c.bold, c.fg0,  c.bg3, c.none)

# Diffs.
hl.HL("DiffAdd",    c.bold, c.lime, c.bg2, c.none)
hl.HL("DiffChange", c.bold, c.pear, c.bg2, c.none)
hl.HL("DiffDelete", c.bold, c.drab, c.bg2, c.none)
hl.HL("DiffText",   c.bold, c.fg0,  c.bg2, c.none) 

# Spellcheckers.
hl.HL("SpellBad",   c.undl, c.none, c.none, c.teal)
hl.HL("SpellCap",   c.undl, c.none, c.none, c.lime)
hl.HL("SpellLocal", c.undl, c.none, c.none, c.pear)
hl.HL("SpellRare",  c.undl, c.none, c.none, c.jade)

# Statuslines.
hl.HL("StatusLine",       c.none, c.fg1, c.bg3, c.none)
hl.HL("StatusLineNC",     c.none, c.fg3, c.bg2, c.none)
hl.HL("StatusLineTerm",   c.none, c.fg1, c.bg3, c.none)
hl.HL("StatusLineTermNC", c.none, c.fg3, c.bg2, c.none)

# Tablines.
hl.HL("TabLine",     c.none, c.fg0, c.bg1, c.none)
hl.HL("TabLineFill", c.none, c.fg0, c.bg2, c.none)
hl.HL("TabLineSel",  c.none, c.fg0, c.bg3, c.none)

# Misc.
hl.HL("Conceal",      c.none, c.lime, c.none, c.none)
hl.HL("Directory",    c.none, c.teal, c.none, c.none)
hl.HL("NonText",      c.none, c.fg0,  c.none, c.none)
hl.HL("Question",     c.none, c.aqua, c.none, c.none)
hl.HL("QuickFixLine", c.none, c.bg0,  c.lime, c.none)
hl.HL("SpecialKey",   c.bold, c.teal, c.bg3,  c.none)
hl.HL("Title",        c.none, c.pear, c.none, c.none)

if exists('*term_setansicolors')
    g:terminal_ansi_colors = repeat([0], 16)
    g:terminal_ansi_colors[0] = c.gray
    g:terminal_ansi_colors[1] = c.pure
    g:terminal_ansi_colors[2] = c.jade
    g:terminal_ansi_colors[3] = c.lime
    g:terminal_ansi_colors[4] = c.pear
    g:terminal_ansi_colors[5] = c.drab
    g:terminal_ansi_colors[6] = c.teal
    g:terminal_ansi_colors[7] = c.sage
    g:terminal_ansi_colors[8] = c.gray
    g:terminal_ansi_colors[9] = c.pure
    g:terminal_ansi_colors[10] = c.jade 
    g:terminal_ansi_colors[11] = c.lime
    g:terminal_ansi_colors[12] = c.pear
    g:terminal_ansi_colors[13] = c.drab
    g:terminal_ansi_colors[14] = c.teal
    g:terminal_ansi_colors[15] = c.sage
endif
