hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "simple"

function! s:ResetColorGroup(colorGroup)
  execute 'hi ' . a:colorGroup . ' term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=fg guibg=bg guisp=NONE'
endfunction

function! s:ReverseColorGroup(colorGroup)
  execute 'hi ' . a:colorGroup . ' term=reverse cterm=reverse gui=reverse'
endfunction

let s:defaultGroups = [
  \'ColorColumn',
  \'Comment',
  \'Conceal',
  \'Constant',
  \'Cursor',
  \'CursorColumn',
  \'CursorIM',
  \'CursorLine',
  \'CursorLineNr',
  \'DiffAdd',
  \'DiffChange',
  \'DiffDelete',
  \'DiffText',
  \'Directory',
  \'EndOfBuffer',
  \'Error',
  \'ErrorMsg',
  \'FoldColumn',
  \'Folded',
  \'Identifier',
  \'Ignore',
  \'IncSearch',
  \'LineNr',
  \'MatchParen',
  \'ModeMsg',
  \'MoreMsg',
  \'NonText',
  \'Normal',
  \'Pmenu',
  \'PmenuSbar',
  \'PmenuSel',
  \'PmenuThumb',
  \'PreProc',
  \'Question',
  \'QuickFixLine',
  \'Search',
  \'SignColumn',
  \'Special',
  \'SpecialKey',
  \'SpellBad',
  \'SpellCap',
  \'SpellLocal',
  \'SpellRare',
  \'Statement',
  \'StatusLine',
  \'StatusLineNC',
  \'StatusLineTerm',
  \'StatusLineTermNC',
  \'TabLine',
  \'TabLineFill',
  \'TabLineSel',
  \'Terminal',
  \'Title',
  \'Todo',
  \'ToolbarButton',
  \'ToolbarLine',
  \'Type',
  \'Underlined',
  \'VertSplit',
  \'Visual',
  \'VisualNOS',
  \'WarningMsg',
  \'WildMenu',
  \]

let s:reversedGroups = [
  \'ColorColumn',
  \'Conceal',
  \'CursorColumn',
  \'CursorLine',
  \'Error',
  \'ErrorMsg',
  \'FoldColumn',
  \'Folded',
  \'IncSearch',
  \'MatchParen',
  \'Pmenu',
  \'PmenuSbar',
  \'PmenuThumb',
  \'QuickFixLine',
  \'Search',
  \'SignColumn',
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
  \'Todo',
  \'ToolbarButton',
  \'ToolbarLine',
  \'VertSplit',
  \'Visual',
  \]

for g in s:defaultGroups
  call s:ResetColorGroup(g)
endfor

for g in s:reversedGroups
  call s:ReverseColorGroup(g)
endfor

hi Comment term=bold cterm=bold gui=bold
hi SpecialKey term=bold cterm=bold gui=bold
hi NonText term=bold cterm=bold gui=bold
hi Underlined term=underline cterm=underline gui=underline
hi PmenuSel term=reverse,bold cterm=reverse,bold gui=reverse,bold
hi WildMenu term=reverse,bold cterm=reverse,bold gui=reverse,bold

hi DiffAdd ctermfg=Green
hi DiffDelete ctermfg=Red
hi link diffRemoved DiffDelete
hi link diffAdded DiffAdd
