" Declare vim9script
vim9script

# Import autoload
import autoload "nightvision.vim" as nv
import autoload "nightlight.vim" as nl
import autoload "config.vim" as nc

hi clear

if exists("syntax_on")
    syntax reset
endif

if has("termguicolors")
    set termguicolors
endif

var config = nc.Config()

var c: dict<any> = {}

if config.nv_nightlight == "off"
    c = nv.Generator(
        config.nv_dark,
        config.nv_light,
        config.nv_contrast)
elseif config.nv_nightlight == "on" 
    c = nv.Generator(
        nl.Nightlight()[0],
        nl.Nightlight()[1],
        config.nv_contrast)
endif

g:nv_colors = c
g:colors_name = "nightvision"

# Syntax groups. See :h group-name.

nv.HL("Comment", c.itlc, c.gray, c.none, c.none)

nv.HL("Constant",  c.none, c.jade, c.none, c.none)
nv.HL("String",    c.none, c.jade, c.none, c.none)
nv.HL("Character", c.none, c.jade, c.none, c.none)
nv.HL("Number",    c.none, c.jade, c.none, c.none)
nv.HL("Boolean",   c.none, c.jade, c.none, c.none)
nv.HL("Float",     c.none, c.jade, c.none, c.none)

nv.HL("Identifier", c.none,   c.pure, c.none, c.none)
nv.HL("Function",   c.itlc,   c.lime, c.none, c.none)

nv.HL("Statement",   c.none, c.pear, c.none, c.none)
nv.HL("Conditional", c.none, c.pear, c.none, c.none)
nv.HL("Repeat",      c.none, c.pear, c.none, c.none)
nv.HL("Label",       c.none, c.pear, c.none, c.none)
nv.HL("Operator",    c.none, c.pear, c.none, c.none)
nv.HL("Keyword",     c.none, c.pear, c.none, c.none)
nv.HL("Exception",   c.none, c.pear, c.none, c.none)

nv.HL("PreProc",   c.none, c.drab, c.none, c.none)
nv.HL("Include",   c.none, c.drab, c.none, c.none)
nv.HL("Define",    c.none, c.drab, c.none, c.none)
nv.HL("Macro",     c.none, c.drab, c.none, c.none)
nv.HL("PreCondit", c.none, c.drab, c.none, c.none)

nv.HL("Type",         c.none, c.aqua, c.none, c.none)
nv.HL("StorageClass", c.none, c.aqua, c.none, c.none)
nv.HL("Structure",    c.none, c.aqua, c.none, c.none)
nv.HL("Typedef",      c.none, c.aqua, c.none, c.none)

nv.HL("Special",        c.none, c.sage, c.none, c.none)
nv.HL("SpecialChar",    c.none, c.sage, c.none, c.none)
nv.HL("Tag",            c.none, c.sage, c.none, c.none)
nv.HL("Deliminator",    c.none, c.sage, c.none, c.none)
nv.HL("SpecialComment", c.none, c.sage, c.none, c.none)
nv.HL("Debug",          c.none, c.sage, c.none, c.none)

nv.HL("Underlined", c.none, c.teal, c.none, c.none)
nv.HL("Ignore",     c.none, c.teal, c.none, c.none)
nv.HL("Error",      c.none, c.teal, c.none, c.none)
nv.HL("Todo",       c.none, c.teal, c.none, c.none)

# HIGHLIGHTING GROUPS (see :h hi-groups):

# Modes.
nv.HL("Normal",    c.none, c.fg0,  c.bg0, c.none)
nv.HL("Terminal",  c.none, c.fg0,  c.bg0, c.none)
nv.HL("Visual",    c.none, c.none, c.bg2, c.none)
nv.HL("VisualNos", c.none, c.none, c.bg2, c.none)

# Cursors.
nv.HL("Cursor",         c.rvrs, c.none, c.none, c.none)
nv.HL("lCursor",        c.rvrs, c.none, c.none, c.none)
nv.HL("CursorIM",       c.rvrs, c.none, c.none, c.none)
nv.HL("CursorColumn",   c.none, c.none, c.bg1,  c.none)
nv.HL("CursorLine",     c.none, c.none, c.bg1,  c.none)
nv.HL("CursorLineFold", c.none, c.fg0,  c.bg0,  c.none)
nv.HL("CursorLineNr",   c.none, c.lime, c.bg1,  c.none)
nv.HL("CursorLineSign", c.none, c.fg0,  c.bg0,  c.none)

# Columns, lines.
nv.HL("ColorColumn", c.none, c.none, c.bg1,  c.none)
nv.HL("EndOfBuffer", c.none, c.fg0,  c.bg0,  c.none)
nv.HL("LineNr",      c.bold, c.fg3,  c.bg1,  c.none)
nv.HL("LineNrAbove", c.none, c.gray, c.none, c.none)
nv.HL("LineNrBelow", c.none, c.gray, c.none, c.none)
nv.HL("SignColumn",  c.none, c.fg0,  c.none, c.none)
nv.HL("VertSplit",   c.none, c.fg0,  c.bg3,  c.none) 

# Messages.
nv.HL("ErrorMsg",   c.bold, c.teal, c.none, c.none)
nv.HL("ModeMsg",    c.bold, c.lime, c.none, c.none)
nv.HL("MoreMsg",    c.bold, c.lime, c.none, c.none) 
nv.HL("WarningMsg", c.bold, c.pear, c.none, c.none)

# Popup menu.
nv.HL("Pmenu",      c.none, c.none, c.bg3,  c.none)
nv.HL("PmenuSbar",  c.none, c.fg0,  c.none, c.none)
nv.HL("PmenuSel",   c.none, c.bg0,  c.fg0,  c.none)
nv.HL("PmenuThumb", c.none, c.fg0,  c.none, c.none)

# Search.
nv.HL("IncSearch",  c.none, c.bg0, c.pear, c.none)
nv.HL("MatchParen", c.bold, c.fg3, c.none, c.none)
nv.HL("Search",     c.none, c.bg0, c.teal, c.none)
nv.HL("WildMenu",   c.none, c.bg0, c.pear, c.none)

# Folds.
nv.HL("Folded",     c.none, c.gray, c.bg3, c.none)
nv.HL("FoldColumn", c.bold, c.fg0,  c.bg3, c.none)

# Diffs.
nv.HL("DiffAdd",    c.bold, c.lime, c.bg2, c.none)
nv.HL("DiffChange", c.bold, c.pear, c.bg2, c.none)
nv.HL("DiffDelete", c.bold, c.drab, c.bg2, c.none)
nv.HL("DiffText",   c.bold, c.fg0,  c.bg2, c.none) 

# Spellcheckers.
nv.HL("SpellBad",   c.undl, c.none, c.none, c.teal)
nv.HL("SpellCap",   c.undl, c.none, c.none, c.lime)
nv.HL("SpellLocal", c.undl, c.none, c.none, c.pear)
nv.HL("SpellRare",  c.undl, c.none, c.none, c.jade)

# Statuslines.
nv.HL("StatusLine",       c.none, c.fg1, c.bg3, c.none)
nv.HL("StatusLineNC",     c.none, c.fg3, c.bg2, c.none)
nv.HL("StatusLineTerm",   c.none, c.fg1, c.bg3, c.none)
nv.HL("StatusLineTermNC", c.none, c.fg3, c.bg2, c.none)

# Tablines.
nv.HL("TabLine",     c.none, c.fg0, c.bg1, c.none)
nv.HL("TabLineFill", c.none, c.fg0, c.bg2, c.none)
nv.HL("TabLineSel",  c.none, c.fg0, c.bg3, c.none)

# Misc.
nv.HL("Conceal",      c.none, c.lime, c.none, c.none)
nv.HL("Directory",    c.none, c.teal, c.none, c.none)
nv.HL("NonText",      c.none, c.fg0,  c.none, c.none)
nv.HL("Question",     c.none, c.aqua, c.none, c.none)
nv.HL("QuickFixLine", c.none, c.bg0,  c.lime, c.none)
nv.HL("SpecialKey",   c.bold, c.teal, c.bg3,  c.none)
nv.HL("Title",        c.none, c.pear, c.none, c.none)

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
