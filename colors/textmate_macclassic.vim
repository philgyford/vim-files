" Vim color file
" Converted from Textmate theme Mac Classic using Coloration v0.2.5 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "textmate_macclassic"

hi Cursor  guifg=NONE guibg=#000000 gui=NONE
hi Visual  guifg=NONE guibg=#ffdfa1 gui=NONE
hi CursorLine  guifg=NONE guibg=#fef5e3 gui=NONE
"hi CursorColumn  guifg=NONE guibg=#fef5e3 gui=NONE
hi ColorColumn  guifg=NONE guibg=#e3e3e3 gui=NONE
hi LineNr  guifg=#979797 guibg=#e3e3e3 gui=NONE
hi VertSplit  guifg=#cfcfcf guibg=#cfcfcf gui=NONE
hi MatchParen  guifg=#ffffff guibg=#0000ff gui=bold
hi StatusLine  guifg=#000000 guibg=#cfcfcf gui=bold
hi StatusLineNC  guifg=#666666 guibg=#cfcfcf gui=NONE
hi Pmenu  guifg=NONE guibg=NONE gui=NONE
hi PmenuSel  guifg=NONE guibg=#ffdfa1 gui=NONE
hi IncSearch  guifg=NONE guibg=#ababff gui=NONE
hi Search  guifg=NONE guibg=#ababff gui=NONE
hi Directory  guifg=#c5060b guibg=NONE gui=bold
hi Folded  guifg=#0066ff guibg=#ffffff gui=NONE

hi Normal  guifg=#000000 guibg=#ffffff gui=NONE
hi Boolean  guifg=#585cf6 guibg=NONE gui=bold
hi Character  guifg=#c5060b guibg=NONE gui=bold
hi Comment  guifg=#0066ff guibg=NONE gui=italic
hi Conditional  guifg=#0000ff guibg=NONE gui=bold
hi Constant  guifg=#c5060b guibg=NONE gui=bold
hi Define  guifg=#0000ff guibg=NONE gui=bold
hi ErrorMsg  guifg=#ffffff guibg=#990000 gui=NONE
hi WarningMsg  guifg=#ffffff guibg=#990000 gui=NONE
hi Float  guifg=#0000cd guibg=NONE gui=NONE
hi Function  guifg=#0000a2 guibg=NONE gui=bold
hi Identifier  guifg=#6e79f5 guibg=NONE gui=bold
hi Keyword  guifg=#0000ff guibg=NONE gui=bold
hi Label  guifg=#036a07 guibg=NONE gui=NONE
hi NonText  guifg=#bfbfbf guibg=NONE gui=NONE
hi Number  guifg=#0000cd guibg=NONE gui=NONE
hi Operator  guifg=#0000ff guibg=NONE gui=bold
hi PreProc  guifg=#0000ff guibg=NONE gui=bold
hi Special  guifg=#000000 guibg=NONE gui=NONE
hi SpecialKey  guifg=#bfbfbf guibg=#fef5e3 gui=NONE
hi Statement  guifg=#0000ff guibg=NONE gui=bold
hi StorageClass  guifg=#0000ff guibg=NONE gui=bold
hi String  guifg=#036a07 guibg=NONE gui=NONE
hi Tag  guifg=NONE guibg=NONE gui=NONE
hi Title  guifg=#000000 guibg=NONE gui=bold
hi Todo  guifg=#0066ff guibg=NONE gui=inverse,bold,italic
hi Type  guifg=NONE guibg=NONE gui=NONE
hi Underlined  guifg=NONE guibg=NONE gui=underline
hi rubyClass  guifg=#0000ff guibg=NONE gui=bold
hi rubyFunction  guifg=#0000a2 guibg=NONE gui=bold
hi rubyInterpolationDelimiter  guifg=NONE guibg=NONE gui=NONE
hi rubySymbol  guifg=#c5060b guibg=NONE gui=bold
hi rubyConstant  guifg=#6d79de guibg=NONE gui=bold
hi rubyStringDelimiter  guifg=#036a07 guibg=NONE gui=NONE
hi rubyBlockParameter  guifg=NONE guibg=NONE gui=NONE
hi rubyInstanceVariable  guifg=#318495 guibg=NONE gui=NONE
hi rubyInclude  guifg=#0000ff guibg=NONE gui=bold
hi rubyGlobalVariable  guifg=#318495 guibg=NONE gui=NONE
hi rubyRegexp  guifg=#036a07 guibg=NONE gui=NONE
hi rubyRegexpDelimiter  guifg=#036a07 guibg=NONE gui=NONE
hi rubyEscape  guifg=#26b31a guibg=NONE gui=NONE
hi rubyControl  guifg=#0000ff guibg=NONE gui=bold
hi rubyClassVariable  guifg=NONE guibg=NONE gui=NONE
hi rubyOperator  guifg=#0000ff guibg=NONE gui=bold
hi rubyException  guifg=#0000ff guibg=NONE gui=bold
hi rubyPseudoVariable  guifg=#318495 guibg=NONE gui=NONE
hi rubyRailsUserClass  guifg=#6d79de guibg=NONE gui=bold
hi rubyRailsARAssociationMethod  guifg=#3c4c72 guibg=NONE gui=bold
hi rubyRailsARMethod  guifg=#3c4c72 guibg=NONE gui=bold
hi rubyRailsRenderMethod  guifg=#3c4c72 guibg=NONE gui=bold
hi rubyRailsMethod  guifg=#3c4c72 guibg=NONE gui=bold
hi erubyDelimiter  guifg=NONE guibg=NONE gui=NONE
hi erubyComment  guifg=#0066ff guibg=NONE gui=italic
hi erubyRailsMethod  guifg=#3c4c72 guibg=NONE gui=bold
hi htmlTag  guifg=#1c02ff guibg=NONE gui=NONE
hi htmlEndTag  guifg=#1c02ff guibg=NONE gui=NONE
hi htmlTagName  guifg=#1c02ff guibg=NONE gui=NONE
hi htmlArg  guifg=#1c02ff guibg=NONE gui=NONE
hi htmlSpecialChar  guifg=#c5060b guibg=NONE gui=bold
hi javaScriptFunction  guifg=#0000ff guibg=NONE gui=bold
hi javaScriptRailsFunction  guifg=#3c4c72 guibg=NONE gui=bold
hi javaScriptBraces  guifg=NONE guibg=NONE gui=NONE
hi yamlKey  guifg=NONE guibg=NONE gui=NONE
hi yamlAnchor  guifg=#318495 guibg=NONE gui=NONE
hi yamlAlias  guifg=#318495 guibg=NONE gui=NONE
hi yamlDocumentHeader  guifg=NONE guibg=#dde8fd gui=NONE
hi cssURL  guifg=NONE guibg=NONE gui=NONE
hi cssFunctionName  guifg=#3c4c72 guibg=NONE gui=bold
hi cssColor  guifg=#c5060b guibg=NONE gui=bold
hi cssPseudoClassId  guifg=NONE guibg=NONE gui=NONE
hi cssClassName  guifg=NONE guibg=NONE gui=NONE
hi cssValueLength  guifg=#0000cd guibg=NONE gui=NONE
hi cssCommonAttr  guifg=#06960e guibg=NONE gui=bold
hi cssBraces  guifg=NONE guibg=NONE gui=NONE


" Added by Phil.

hi Error  guifg=#ff0000 guibg=NONE gui=bold,underline
hi Tab guifg=#999999 guibg=NONE gui=NONE

hi javaScriptLabel guifg=#2c00b7 guibg=NONE gui=bold
hi javaScriptType guifg=#0000ff guibg=NONE gui=bold
hi javaScriptValue guifg=#3900db guibg=NONE gui=NONE

hi phpAssignByRef guifg=#0000b7 guibg=NONE gui=bold
hi phpConstants guifg=#7a62fe guibg=NONE gui=bold
hi phpFunctions guifg=#4b5d87 guibg=NONE gui=bold
hi phpIdentifier guifg=#1a97a8 guibg=NONE gui=NONE
hi phpMemberSelector guifg=#0000b7 guibg=NONE gui=bold
hi phpNumber guifg=#3900dd guibg=NONE gui=NONE
hi phpSpecialFunction guifg=#4b5d87 guibg=NONE gui=bold
hi phpStringDouble guifg=#008200 guibg=NONE gui=NONE
hi phpStringSingle guifg=#008200 guibg=NONE gui=NONE
hi phpStructure guifg=#0000ff guibg=NONE gui=bold
hi phpType guifg=#4500ff guibg=NONE gui=bold
hi phpVarSelector guifg=#1a97a8 guibg=NONE gui=NONE

hi pythonStatement  guifg=#6e79f5 guibg=NONE gui=bold
hi pythonStrFormatting guifg=#b53817 guibg=NONE gui=bold



