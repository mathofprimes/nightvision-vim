vim9script

import autoload "nightvision.vim"

hi clear

if exists("syntax_on")
    syntax reset
endif

if has("termguicolors")
    set termguicolors
endif

var config = nightvision.Config()
var nv = nightvision.Generator(config.nv_dark, config.nv_light, config.nv_contrast)

g:nv_colors = nv
g:colors_name = "nightvision"

# Syntax groups. See :h group-name.

nightvision.HL("Comment", "italic", nv.gray, nv.none, nv.none)

nightvision.HL("Constant",  nv.none, nv.jade, nv.none, nv.none)
nightvision.HL("String",    nv.none, nv.jade, nv.none, nv.none)
nightvision.HL("Character", nv.none, nv.jade, nv.none, nv.none)
nightvision.HL("Number",    nv.none, nv.jade, nv.none, nv.none)
nightvision.HL("Boolean",   nv.none, nv.jade, nv.none, nv.none)
nightvision.HL("Float",     nv.none, nv.jade, nv.none, nv.none)

nightvision.HL("Identifier", nv.none, nv.pure, nv.none, nv.none)
nightvision.HL("Function",   "italic", nv.lime, nv.none, nv.none)

nightvision.HL("Statement",   nv.none, nv.pear, nv.none, nv.none)
nightvision.HL("Conditional", nv.none, nv.pear, nv.none, nv.none)
nightvision.HL("Repeat",      nv.none, nv.pear, nv.none, nv.none)
nightvision.HL("Label",       nv.none, nv.pear, nv.none, nv.none)
nightvision.HL("Operator",    nv.none, nv.pear, nv.none, nv.none)
nightvision.HL("Keyword",     nv.none, nv.pear, nv.none, nv.none)
nightvision.HL("Exception",   nv.none, nv.pear, nv.none, nv.none)

nightvision.HL("PreProc",   nv.none, nv.drab, nv.none, nv.none)
nightvision.HL("Include",   nv.none, nv.drab, nv.none, nv.none)
nightvision.HL("Define",    nv.none, nv.drab, nv.none, nv.none)
nightvision.HL("Macro",     nv.none, nv.drab, nv.none, nv.none)
nightvision.HL("PreCondit", nv.none, nv.drab, nv.none, nv.none)

nightvision.HL("Type",         nv.none, nv.aqua, nv.none, nv.none)
nightvision.HL("StorageClass", nv.none, nv.aqua, nv.none, nv.none)
nightvision.HL("Structure",    nv.none, nv.aqua, nv.none, nv.none)
nightvision.HL("Typedef",      nv.none, nv.aqua, nv.none, nv.none)

nightvision.HL("Special",        nv.none, nv.sage, nv.none, nv.none)
nightvision.HL("SpecialChar",    nv.none, nv.sage, nv.none, nv.none)
nightvision.HL("Tag",            nv.none, nv.sage, nv.none, nv.none)
nightvision.HL("Deliminator",    nv.none, nv.sage, nv.none, nv.none)
nightvision.HL("SpecialComment", nv.none, nv.sage, nv.none, nv.none)
nightvision.HL("Debug",          nv.none, nv.sage, nv.none, nv.none)

nightvision.HL("Underlined", nv.none, nv.teal, nv.none, nv.none)
nightvision.HL("Ignore",     nv.none, nv.teal, nv.none, nv.none)
nightvision.HL("Error",      nv.none, nv.teal, nv.none, nv.none)
nightvision.HL("Todo",       nv.none, nv.teal, nv.none, nv.none)

# HIGHLIGHTING GROUPS (see :h hi-groups):

# Modes.
nightvision.HL("Normal",    nv.none, nv.fg0,  nv.bg0, nv.none)
nightvision.HL("Terminal",  nv.none, nv.fg0,  nv.bg0, nv.none)
nightvision.HL("Visual",    nv.none, nv.none, nv.bg2, nv.none)
nightvision.HL("VisualNos", nv.none, nv.none, nv.bg2, nv.none)

# Cursors.
nightvision.HL("Cursor",         "reverse", nv.none, nv.none, nv.none)
nightvision.HL("lCursor",        "reverse", nv.none, nv.none, nv.none)
nightvision.HL("CursorIM",       "reverse", nv.none, nv.none, nv.none)
nightvision.HL("CursorColumn",   nv.none,   nv.none, nv.bg1,  nv.none)
nightvision.HL("CursorLine",     nv.none,   nv.none, nv.bg1,  nv.none)
nightvision.HL("CursorLineFold", nv.none,   nv.fg0,  nv.bg0,  nv.none)
nightvision.HL("CursorLineNr",   nv.none,   nv.lime, nv.bg1,  nv.none)
nightvision.HL("CursorLineSign", nv.none,   nv.fg0,  nv.bg0,  nv.none)

# Columns, lines.
nightvision.HL("ColorColumn", nv.none, nv.none, nv.bg1, nv.none)
nightvision.HL("EndOfBuffer", nv.none, nv.fg0, nv.bg0, nv.none)
nightvision.HL("LineNr",      nv.bold, nv.fg3, nv.bg1, nv.none)
nightvision.HL("LineNrAbove", nv.none, nv.gray, nv.none, nv.none)
nightvision.HL("LineNrBelow", nv.none, nv.gray, nv.none, nv.none)
nightvision.HL("SignColumn",  nv.none, nv.fg0, nv.none, nv.none)
nightvision.HL("VertSplit",   nv.none, nv.fg0, nv.bg3, nv.none) 

# Messages.
nightvision.HL("ErrorMsg",   nv.bold, nv.teal, nv.none, nv.none)
nightvision.HL("ModeMsg",    nv.bold, nv.lime, nv.none, nv.none)
nightvision.HL("MoreMsg",    nv.bold, nv.lime, nv.none, nv.none) 
nightvision.HL("WarningMsg", nv.bold, nv.pear, nv.none, nv.none)

# Popup menu.
nightvision.HL("Pmenu",      nv.none, nv.none, nv.bg3, nv.none)
nightvision.HL("PmenuSbar",  nv.none, nv.fg0, nv.none, nv.none)
nightvision.HL("PmenuSel",   nv.none, nv.bg0, nv.fg0, nv.none)
nightvision.HL("PmenuThumb", nv.none, nv.fg0, nv.none, nv.none)

# Search.
nightvision.HL("IncSearch",  nv.none, nv.bg0, nv.pear, nv.none)
nightvision.HL("MatchParen", nv.bold, nv.fg3, nv.none, nv.none)
nightvision.HL("Search",     nv.none, nv.bg0, nv.teal, nv.none)
nightvision.HL("WildMenu",   nv.none, nv.bg0, nv.pear, nv.none)

# Folds.
nightvision.HL("Folded",     nv.none, nv.gray, nv.bg3, nv.none)
nightvision.HL("FoldColumn", nv.bold, nv.fg0, nv.bg3, nv.none)

# Diffs.
nightvision.HL("DiffAdd", nv.bold, nv.lime, nv.bg2, nv.none)
nightvision.HL("DiffChange", nv.bold, nv.pear, nv.bg2, nv.none)
nightvision.HL("DiffDelete", nv.bold, nv.drab, nv.bg2, nv.none)
nightvision.HL("DiffText", nv.bold, nv.fg0, nv.bg2, nv.none) 

# Spellcheckers.
nightvision.HL("SpellBad", nv.undl, nv.none, nv.none, nv.teal)
nightvision.HL("SpellCap", nv.undl, nv.none, nv.none, nv.lime)
nightvision.HL("SpellLocal", nv.undl, nv.none, nv.none, nv.pear)
nightvision.HL("SpellRare", nv.undl, nv.none, nv.none, nv.jade)

# Statuslines.
nightvision.HL("StatusLine", nv.none, nv.fg1, nv.bg3, nv.none)
nightvision.HL("StatusLineNC", nv.none, nv.fg3, nv.bg2, nv.none)
nightvision.HL("StatusLineTerm", nv.none, nv.fg1, nv.bg3, nv.none)
nightvision.HL("StatusLineTermNC", nv.none, nv.fg3, nv.bg2, nv.none)

# Tablines.
nightvision.HL("TabLine", nv.none, nv.fg0, nv.bg1, nv.none)
nightvision.HL("TabLineFill", nv.none, nv.fg0, nv.bg2, nv.none)
nightvision.HL("TabLineSel", nv.none, nv.fg0, nv.bg3, nv.none)

# Misc.
nightvision.HL("Conceal", nv.none, nv.lime, nv.none, nv.none)
nightvision.HL("Directory", nv.none, nv.teal, nv.none, nv.none)
nightvision.HL("NonText", nv.none, nv.fg0, nv.none, nv.none)
nightvision.HL("Question", nv.none, nv.aqua, nv.none, nv.none)
nightvision.HL("QuickFixLine", nv.none, nv.bg0, nv.lime, nv.none)
nightvision.HL("SpecialKey", nv.bold, nv.teal, nv.bg3, nv.none)
nightvision.HL("Title", nv.none, nv.pear, nv.none, nv.none)
