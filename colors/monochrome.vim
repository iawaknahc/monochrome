hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "monochrome"

function! s:ResetColorGroup(colorGroup)
  execute 'hi ' . a:colorGroup . ' term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=fg guibg=bg guisp=NONE'
endfunction

function! s:ReverseColorGroup(colorGroup)
  execute 'hi ' . a:colorGroup . ' term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=fg guibg=bg guisp=NONE'
endfunction

let s:defaultGroups = [
  \'ColorColumn',
  \'Conceal',
  \'Cursor',
  \'CursorIM',
  \'CursorColumn',
  \'CursorLine',
  \'Directory',
  \'DiffAdd',
  \'DiffChange',
  \'DiffDelete',
  \'DiffText',
  \'EndOfBuffer',
  \'ErrorMsg',
  \'VertSplit',
  \'Folded',
  \'FoldColumn',
  \'SignColumn',
  \'IncSearch',
  \'LineNr',
  \'CursorLineNr',
  \'MatchParen',
  \'ModeMsg',
  \'MoreMsg',
  \'NonText',
  \'Normal',
  \'Pmenu',
  \'PmenuSel',
  \'PmenuSbar',
  \'PmenuThumb',
  \'Question',
  \'QuickFixLine',
  \'Search',
  \'SpecialKey',
  \'SpellBad',
  \'SpellCap',
  \'SpellLocal',
  \'SpellRare',
  \'StatusLine',
  \'StatusLineNC',
  \'StatusLineTerm',
  \'StatusLineTermNC',
  \'TabLine',
  \'TabLineFill',
  \'TabLineSel',
  \'Terminal',
  \'Title',
  \'Visual',
  \'VisualNOS',
  \'WarningMsg',
  \'WildMenu',
  \'ToolbarLine',
  \'ToolbarButton',
  \'Comment',
  \'Constant',
  \'Special',
  \'Identifier',
  \'Statement',
  \'PreProc',
  \'Type',
  \'Underlined',
  \'Ignore',
  \'Error',
  \'Todo',
  \]

let s:reversedGroups = [
  \'ErrorMsg',
  \'IncSearch',
  \'Search',
  \'StatusLine',
  \'StatusLineNC',
  \'VertSplit',
  \'Visual',
  \'WildMenu',
  \'Folded',
  \'FoldColumn',
  \'DiffAdd',
  \'DiffChange',
  \'DiffDelete',
  \'DiffText',
  \'SignColumn',
  \'Conceal',
  \'SpellBad',
  \'SpellCap',
  \'SpellRare',
  \'SpellLocal',
  \'Pmenu',
  \'PmenuSbar',
  \'PmenuThumb',
  \'TabLine',
  \'TabLineFill',
  \'CursorColumn',
  \'CursorLine',
  \'ColorColumn',
  \'QuickFixLine',
  \'StatusLineTerm',
  \'StatusLineTermNC',
  \'MatchParen',
  \'ToolbarLine',
  \'ToolbarButton',
  \'Error',
  \'Todo',
  \]

for g in s:defaultGroups
  call s:ResetColorGroup(g)
endfor

for g in s:reversedGroups
  call s:ReverseColorGroup(g)
endfor
