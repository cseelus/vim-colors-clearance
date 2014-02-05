" ----------------------------------------------------------------------------
" clearance color scheme
" by @cseelus and based on ir_black
" https://github.com/cseelus/vim-colors-clearance
" ----------------------------------------------------------------------------


" The colors of the clearance-theme
" ----------------------------------------------------------------------------
"
"  normal: #e6eef5
"
"  string:                             #c1f360
"    string Delimiter                  #00a0a0
"  number:                             #cf8688
"  comments:                           #657380
"  nontext:                            #3d4449
"  keywords:                           #7dbffe
"  operators:                          #fff
"  class:                              #ffffb6
"  method declaration name:            #ffd2a7
"  regular expression:                 #e9c062
"    regexp alternate:                 #ff8000
"    regexp alternate 2:               #B18A3D
"  variable:                           #d3c4f7
"
" Misc colors:
"  red color:                          #ff6c60
"     light red:                       #ffb6b0
"
"  brown:                              #e18964
"
" Interface colors:
"  background color:                   black
"  cursor (where underscore is used):  #ffa560
"  cursor (where block is used):       #b8c2cc
"  visual selection:                   #e0d689
"  current line:                       black  
"  search selection:                   #e0d689
"  line number:                        #484e52


" The following are the preferred 16 colors for the terminal
" ----------------------------------------------------------------------------
"
"               Colors      Bright Colors
" Black         #4e4e4e     #657380
" Red           #ff6c60     #ffb6b0
" Green         #c1f360     #ceffab 
" Yellow        #ffffb6     #ffffcb
" Blue          #7dbffe     #bddbf7
" Burgundy      #cf8688     #e0787d
" Cyan          #d3c4f7     #dfdffe
" White         #b8c2cc     #e6eef5


set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "clearance"


" General colors
hi Normal         guifg=#e6eef5 guibg=#151616  gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi NonText        guifg=#3d4449 guibg=NONE      gui=NONE      ctermfg=black       ctermbg=NONE        cterm=NONE

hi Cursor         guifg=#151616guibg=#b8c2cc gui=NONE      ctermfg=black       ctermbg=white       cterm=reverse
hi LineNr         guifg=#484e52 guibg=#151616  gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE

hi VertSplit      guifg=#202020 guibg=#151616  gui=NONE      ctermfg=darkgray    ctermbg=darkgray    cterm=NONE
hi StatusLine     guifg=#b8c2cc guibg=#222324 gui=NONE      ctermfg=white       ctermbg=NONE        cterm=NONE
hi StatusLineNC   guifg=#b8c2cc guibg=#222324 gui=NONE      ctermfg=blue        ctermbg=NONE        cterm=NONE

hi Folded         guifg=NONE    guibg=NONE    gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi FoldColumn     guifg=NONE    guibg=NONE    gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi Title          guifg=#e6eef5 guibg=NONE    gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi Visual         guifg=#151616 guibg=#ffffb6 gui=NONE      ctermfg=NONE        ctermbg=darkgray    cterm=NONE

hi SpecialKey     guifg=#808080 guibg=#343434 gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE

hi WildMenu       guifg=#c1f360   guibg=yellow  gui=NONE      ctermfg=black       ctermbg=yellow      cterm=NONE
hi PmenuSbar      guifg=black   guibg=white   gui=NONE      ctermfg=black       ctermbg=white       cterm=NONE
"hi Ignore        guifg=gray    guibg=black   gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE

hi Error          guifg=NONE    guibg=NONE    gui=undercurl ctermfg=white       ctermbg=red         cterm=NONE     guisp=#ff6c60 " undercurl color
hi ErrorMsg       guifg=white   guibg=#ff6c60 gui=NONE      ctermfg=white       ctermbg=red         cterm=NONE
hi WarningMsg     guifg=white   guibg=#ff6c60 gui=NONE      ctermfg=white       ctermbg=red         cterm=NONE
hi Question       guifg=#c1f360 guibg=NONE    gui=NONE      ctermfg=green       ctermbg=NONE        cterm=NONE

" Message displayed in lower left, such as --INSERT--
hi ModeMsg        guifg=black   guibg=#b8c2cc gui=NONE      ctermfg=black        ctermbg=grey        cterm=NONE

if version >= 700 " Vim 7.x specific colors
  hi CursorLine   guifg=#e6eef5 guibg=#222324 gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=bold
  hi CursorLineNR guifg=#484e52 guibg=#151616 gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=bold
  hi CursorColumn guifg=NONE    guibg=#121212 gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=bold
  hi MatchParen   guifg=#151616 guibg=#7dbffe gui=NONE      ctermfg=white       ctermbg=darkgray    cterm=NONE
  hi Pmenu        guifg=#e6eef5 guibg=#2e3132 gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
  hi PmenuSel     guifg=#151616 guibg=#7dbffe gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
  hi Search       guifg=NONE    guibg=NONE    gui=underline ctermfg=NONE        ctermbg=NONE        cterm=underline
endif

" Syntax highlighting
hi Comment        guifg=#657380 guibg=NONE    gui=italic      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
hi String         guifg=#c1f360 guibg=#21271b gui=NONE      ctermfg=green       ctermbg=NONE        cterm=NONE
hi Number         guifg=#cf8688 guibg=NONE    gui=NONE      ctermfg=magenta     ctermbg=NONE        cterm=NONE

hi Keyword        guifg=#8fc4fd guibg=NONE    gui=bold      ctermfg=blue        ctermbg=NONE        cterm=NONE
hi PreProc        guifg=#8fc4fd guibg=NONE    gui=NONE      ctermfg=blue        ctermbg=NONE        cterm=NONE
hi Conditional    guifg=#6d90d1 guibg=NONE    gui=bold      ctermfg=blue        ctermbg=NONE        cterm=NONE  " if else end

hi Todo           guifg=#8f8f8f guibg=NONE    gui=NONE      ctermfg=red         ctermbg=NONE        cterm=NONE
hi Constant       guifg=#b1f7e0 guibg=NONE    gui=NONE      ctermfg=cyan        ctermbg=NONE        cterm=NONE

hi Identifier     guifg=#d3c4f7 guibg=NONE    gui=NONE      ctermfg=cyan        ctermbg=NONE        cterm=NONE
hi Function       guifg=#FFD2A7 guibg=NONE    gui=NONE      ctermfg=brown       ctermbg=NONE        cterm=NONE
hi Type           guifg=#ffffb6 guibg=NONE    gui=NONE      ctermfg=yellow      ctermbg=NONE        cterm=NONE
hi Statement      guifg=#6d90d1 guibg=NONE    gui=NONE      ctermfg=lightblue   ctermbg=NONE        cterm=NONE

hi Special        guifg=#eb7a4b guibg=NONE    gui=NONE      ctermfg=white       ctermbg=NONE        cterm=NONE
hi Delimiter      guifg=#00a0a0 guibg=NONE    gui=NONE   ctermfg=cyan        ctermbg=NONE        cterm=NONE
hi Operator       guifg=white   guibg=NONE    gui=NONE   ctermfg=white ctermbg=NONE        cterm=NONE

hi link Character       Constant
hi link Boolean         Constant
hi link Float           Number
hi link Repeat          Statement
hi link Label           Statement
hi link Exception       Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special


" Special for Ruby
hi link rubyRegexpDelimiter Special
hi link rubyInterpolationDelimiter Delimiter
hi link rubyStringDelimiter  Delimiter
"rubyInclude
"rubySharpBang
"rubyAccess
"rubyPredefinedVariable
"rubyBoolean
"rubyClassVariable
"rubyBeginEnd
"rubyRepeatModifier
"hi link rubyArrayDelimiter    Special  " [ , , ]
"rubyCurlyBlock  { , , }
hi link rubyClass             Keyword
hi link rubyModule            Keyword
hi link rubyKeyword           Keyword
hi link rubyOperator          Operator
hi link rubyIdentifier        Identifier
hi link rubyInstanceVariable  Identifier
hi link rubyGlobalVariable    Identifier
hi link rubyClassVariable     Identifier
hi link rubyConstant          Type


" Special for XML
hi link xmlTag                Keyword
hi link xmlTagName            Conditional
hi link xmlEndTag             Identifier


" Special for HTML
hi link htmlTag               Normal
hi link htmlTagName           Keyword
hi link htmlEndTag            Identifier


" Special for Javascript
hi link javaScriptNumber      Number

" Special for CSS
hi link cssBraces			        Normal
hi link cssTagName		        Keyword
hi link StorageClass	        Normal
hi link cssClassName	        Type
hi link cssIdentifier	        Identifier
hi link cssColor			        Constant
hi link cssValueInteger	    	Number
hi link cssValueNumber	    	Number
hi link cssValueLength	    	Number
