vim9script

import autoload "nightvision.vim"

hi clear

if exists("syntax_on")
    syntax reset
endif

if has("termguicolors")
    set termguicolors
endif

g:colors_name = "nightvision"

var config = nightvision.Config()
var nv = nightvision.Generator(config.nv_dark, config.nv_light, config.nv_contrast)

g:nv_colors = nv

nightvision.Highlight("Comment", nv.itlc, nv.gray, nv.none, nv.none)

nightvision.Highlight("Constant", nv.none, nv.jade, nv.none, nv.none)
nightvision.Highlight("String", nv.none, nv.jade, nv.none, nv.none)
nightvision.Highlight("Character", nv.none, nv.jade, nv.none, nv.none)
nightvision.Highlight("Number", nv.none, nv.jade, nv.none, nv.none)
nightvision.Highlight("Boolean", nv.none, nv.jade, nv.none, nv.none)
nightvision.Highlight("Float", nv.none, nv.jade, nv.none, nv.none)

nightvision.Highlight("Identifier", nv.none, nv.pure, nv.none, nv.none)
nightvision.Highlight("Function", nv.itlc, nv.lime, nv.none, nv.none)

nightvision.Highlight("Statement", nv.none, nv.pear, nv.none, nv.none)
nightvision.Highlight("Conditional", nv.none, nv.pear, nv.none, nv.none)
nightvision.Highlight("Repeat", nv.none, nv.pear, nv.none, nv.none)
nightvision.Highlight("Label", nv.none, nv.pear, nv.none, nv.none)
nightvision.Highlight("Operator", nv.none, nv.pear, nv.none, nv.none)
nightvision.Highlight("Keyword", nv.none, nv.pear, nv.none, nv.none)
nightvision.Highlight("Exception", nv.none, nv.pear, nv.none, nv.none)

nightvision.Highlight("PreProc", nv.none, nv.drab, nv.none, nv.none)
nightvision.Highlight("Include", nv.none, nv.drab, nv.none, nv.none)
nightvision.Highlight("Define", nv.none, nv.drab, nv.none, nv.none)
nightvision.Highlight("Macro", nv.none, nv.drab, nv.none, nv.none)
nightvision.Highlight("PreCondit", nv.none, nv.drab, nv.none, nv.none)

nightvision.Highlight("Type", nv.none, nv.aqua, nv.none, nv.none)
nightvision.Highlight("StorageClass", nv.none, nv.aqua, nv.none, nv.none)
nightvision.Highlight("Structure", nv.none, nv.aqua, nv.none, nv.none)
nightvision.Highlight("Typedef", nv.none, nv.aqua, nv.none, nv.none)

nightvision.Highlight("Special", nv.none, nv.sage, nv.none, nv.none)
nightvision.Highlight("SpecialChar", nv.none, nv.sage, nv.none, nv.none)
nightvision.Highlight("Tag", nv.none, nv.sage, nv.none, nv.none)
nightvision.Highlight("Deliminator", nv.none, nv.sage, nv.none, nv.none)
nightvision.Highlight("SpecialComment", nv.none, nv.sage, nv.none, nv.none)
nightvision.Highlight("Debug", nv.none, nv.sage, nv.none, nv.none)

nightvision.Highlight("Underlined", nv.none, nv.teal, nv.none, nv.none)
nightvision.Highlight("Ignore", nv.none, nv.teal, nv.none, nv.none)
nightvision.Highlight("Error", nv.none, nv.teal, nv.none, nv.none)
nightvision.Highlight("Todo", nv.none, nv.teal, nv.none, nv.none)

# HIGHLIGHTING GROUPS (see :h hi-groups):

# Modes.
nightvision.Highlight("Normal", nv.none, nv.fg0, nv.bg0, nv.none)
nightvision.Highlight("Terminal", nv.none, nv.fg0, nv.bg0, nv.none)
nightvision.Highlight("Visual", nv.none, nv.none, nv.bg2, nv.none)
nightvision.Highlight("VisualNos", nv.none, nv.none, nv.bg2, nv.none)

# Cursors.
nightvision.Highlight("Cursor", nv.rvrs, nv.none, nv.none, nv.none)
nightvision.Highlight("lCursor", nv.rvrs, nv.none, nv.none, nv.none)
nightvision.Highlight("CursorIM", nv.rvrs, nv.none, nv.none, nv.none)
nightvision.Highlight("CursorColumn", nv.none, nv.none, nv.bg1, nv.none)
nightvision.Highlight("CursorLine", nv.none, nv.none, nv.bg1, nv.none)
nightvision.Highlight("CursorLineFold", nv.none, nv.fg0, nv.bg0, nv.none)
nightvision.Highlight("CursorLineNr", nv.none, nv.lime, nv.bg1, nv.none)
nightvision.Highlight("CursorLineSign", nv.none, nv.fg0, nv.bg0, nv.none)

# Columns, lines.
nightvision.Highlight("ColorColumn", nv.none, nv.none, nv.bg1, nv.none)
nightvision.Highlight("EndOfBuffer", nv.none, nv.fg0, nv.bg0, nv.none)
nightvision.Highlight("LineNr", nv.bold, nv.fg3, nv.bg1, nv.none)
nightvision.Highlight("LineNrAbove", nv.none, nv.gray, nv.none, nv.none)
nightvision.Highlight("LineNrBelow", nv.none, nv.gray, nv.none, nv.none)
nightvision.Highlight("SignColumn", nv.none, nv.fg0, nv.none, nv.none)
nightvision.Highlight("VertSplit", nv.none, nv.fg0, nv.bg3, nv.none) 

# Messages.
nightvision.Highlight("ErrorMsg", nv.bold, nv.pear, nv.none, nv.none)
nightvision.Highlight("ModeMsg", nv.bold, nv.teal, nv.none, nv.none)
nightvision.Highlight("MoreMsg", nv.bold, nv.lime, nv.none, nv.none) 
nightvision.Highlight("WarningMsg", nv.bold, nv.pear, nv.none, nv.none)

# Popup menu.
nightvision.Highlight("Pmenu", nv.none, nv.none, nv.bg3, nv.none)
nightvision.Highlight("PmenuSbar", nv.none, nv.fg0, nv.none, nv.none)
nightvision.Highlight("PmenuSel", nv.none, nv.bg0, nv.fg0, nv.none)
nightvision.Highlight("PmenuThumb", nv.none, nv.fg0, nv.none, nv.none)

# Search.
nightvision.Highlight("IncSearch", nv.none, nv.bg0, nv.pear, nv.none)
nightvision.Highlight("MatchParen", nv.bold, nv.fg3, nv.none, nv.none)
nightvision.Highlight("Search", nv.none, nv.bg0, nv.teal, nv.none)
nightvision.Highlight("WildMenu", nv.none, nv.bg0, nv.pear, nv.none)

# Folds.
nightvision.Highlight("Folded", nv.none, nv.gray, nv.bg3, nv.none)
nightvision.Highlight("FoldColumn", nv.bold, nv.fg0, nv.bg3, nv.none)

# Diffs.
nightvision.Highlight("DiffAdd", nv.bold, nv.lime, nv.bg2, nv.none)
nightvision.Highlight("DiffChange", nv.bold, nv.pear, nv.bg2, nv.none)
nightvision.Highlight("DiffDelete", nv.bold, nv.drab, nv.bg2, nv.none)
nightvision.Highlight("DiffText", nv.bold, nv.fg0, nv.bg2, nv.none) 

# Spellcheckers.
nightvision.Highlight("SpellBad", nv.undl, nv.none, nv.none, nv.teal)
nightvision.Highlight("SpellCap", nv.undl, nv.none, nv.none, nv.lime)
nightvision.Highlight("SpellLocal", nv.undl, nv.none, nv.none, nv.pear)
nightvision.Highlight("SpellRare", nv.undl, nv.none, nv.none, nv.jade)

# Statuslines.
nightvision.Highlight("StatusLine", nv.none, nv.fg1, nv.bg3, nv.none)
nightvision.Highlight("StatusLineNC", nv.none, nv.fg3, nv.bg2, nv.none)
nightvision.Highlight("StatusLineTerm", nv.none, nv.fg1, nv.bg3, nv.none)
nightvision.Highlight("StatusLineTermNC", nv.none, nv.fg3, nv.bg2, nv.none)

# Tablines.
nightvision.Highlight("TabLine", nv.none, nv.fg0, nv.bg1, nv.none)
nightvision.Highlight("TabLineFill", nv.none, nv.fg0, nv.bg2, nv.none)
nightvision.Highlight("TabLineSel", nv.none, nv.fg0, nv.bg3, nv.none)

# Misc.
nightvision.Highlight("Conceal", nv.none, nv.lime, nv.none, nv.none)
nightvision.Highlight("Directory", nv.none, nv.teal, nv.none, nv.none)
nightvision.Highlight("NonText", nv.none, nv.fg0, nv.none, nv.none)
nightvision.Highlight("Question", nv.none, nv.aqua, nv.none, nv.none)
nightvision.Highlight("QuickFixLine", nv.none, nv.bg0, nv.lime, nv.none)
nightvision.Highlight("SpecialKey", nv.bold, nv.teal, nv.bg3, nv.none)
nightvision.Highlight("Title", nv.none, nv.pear, nv.none, nv.none)
