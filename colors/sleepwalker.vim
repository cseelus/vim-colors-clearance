" sleepwalker color scheme
" by @cseelus and based on ir_black
" https://github.com/cseelus/sleepwalker-vim


" ****************************************************************************
" The colors of the sleepwalker-theme
" x:x:x are RGB values
"
"  normal: #f6f3e8
"
"  string:                             #b2ff4f  168:255:96
"    string inner (punc, code, etc):   #00a0a0  0:160:160
"    string Delimiter                  #4ba747  75:167:71
"  number:                             #cf8688  207:134:136
"  comments:                           #7c7c7c  124:124:124
"  keywords:                           #96cbfe  150:203:254
"  operators:                          #fff
"  class:                              #ffffb6  255:255:182
"  method declaration name:            #ffd2a7  255:210:167
"  regular expression:                 #e9c062  233:192:98
"    regexp alternate:                 #ff8000  255:128:0
"    regexp alternate 2:               #B18A3D  177:138:61
"  variable:                           #c6c5fe  198:197:254
"
" Misc colors:
"  red color:                          #ff6c60   255:108:96
"     light red:                       #ffb6b0   255:182:176
"
"  brown:                              #e18964   225:137:100
"
"  light purple:                       #ffccff   255:204:255
"
" Interface colors:
"  background color:                   #000
"  cursor (where underscore is used):  #ffa560  255:165:96
"  cursor (where block is used):       #fff
"  visual selection:                   #e0d689  224:214:137
"  current line:                       #0a0a0a  21:21:21
"  search selection:                   #e0d689  224:214:137
"  line number:                        #3d3d3d  61:61:61


" ****************************************************************************
" The following are the preferred 16 colors for the terminal
"               Colors      Bright Colors
" Black         #4e4e4e     #7c7c7c
" Red           #ff6c60     #ffb6b0
" Green         #b2ff4f     #ceffab
" Yellow        #ffffb6     #ffffcb
" Blue          #96cbfe     #ffffcb
" Burgundy      #cf8688     #e0787d
" Cyan          #c6c5fe     #dfdffe
" White         #eeeeee     #ffffff


" ****************************************************************************
set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "sleepwalker"


"hi Example       guifg=NONE    guibg=NONE  gui=NONE  ctermfg=NONE  ctermbg=NONE        cterm=NONE

" General colors
hi Normal         guifg=#f6f3e8 guibg=#0a0a0a gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi NonText        guifg=#070707 guibg=#0a0a0a gui=NONE      ctermfg=black       ctermbg=NONE        cterm=NONE

hi Cursor         guifg=black   guibg=white   gui=NONE      ctermfg=black       ctermbg=white       cterm=reverse
hi LineNr         guifg=#3d3d3d guibg=black   gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE

hi VertSplit      guifg=#202020 guibg=#202020 gui=NONE      ctermfg=darkgray    ctermbg=darkgray    cterm=NONE
hi StatusLine     guifg=#CCCCCC guibg=#202020 gui=italic    ctermfg=white       ctermbg=darkgray    cterm=NONE
hi StatusLineNC   guifg=black   guibg=#202020 gui=NONE      ctermfg=blue        ctermbg=darkgray    cterm=NONE

hi Folded         guifg=NONE    guibg=NONE    gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi FoldColumn     guifg=NONE    guibg=NONE    gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi Title          guifg=#f6f3e8 guibg=NONE    gui=bold      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi Visual         guifg=NONE    guibg=#e0d689 gui=NONE      ctermfg=NONE        ctermbg=darkgray    cterm=NONE

hi SpecialKey     guifg=#808080 guibg=#343434 gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE

hi WildMenu       guifg=#b2ff4f   guibg=yellow  gui=NONE      ctermfg=black       ctermbg=yellow      cterm=NONE
hi PmenuSbar      guifg=black   guibg=white   gui=NONE      ctermfg=black       ctermbg=white       cterm=NONE
"hi Ignore        guifg=gray    guibg=#0a0a0a gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE

hi Error          guifg=NONE    guibg=NONE    gui=undercurl ctermfg=white       ctermbg=red         cterm=NONE     guisp=#FF6C60 " undercurl color
hi ErrorMsg       guifg=white   guibg=#FF6C60 gui=BOLD      ctermfg=white       ctermbg=red         cterm=NONE
hi WarningMsg     guifg=white   guibg=#FF6C60 gui=BOLD      ctermfg=white       ctermbg=red         cterm=NONE

" Message displayed in lower left, such as --INSERT--
hi ModeMsg        guifg=black   guibg=#C6C5FE gui=BOLD      ctermfg=black       ctermbg=cyan        cterm=BOLD

if version >= 700 " Vim 7.x specific colors
  hi CursorLine   guifg=NONE    guibg=#121212 gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=BOLD
  hi CursorLineNR guifg=#3d3d3d guibg=#121212 gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=BOLD
  hi CursorColumn guifg=NONE    guibg=#121212 gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=BOLD
  hi MatchParen   guifg=#f6f3e8 guibg=#857b6f gui=BOLD      ctermfg=white       ctermbg=darkgray    cterm=NONE
  hi Pmenu        guifg=#f6f3e8 guibg=#444444 gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
  hi PmenuSel     guifg=#000000 guibg=#cae682 gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
  hi Search       guifg=NONE    guibg=NONE    gui=underline ctermfg=NONE        ctermbg=NONE        cterm=underline
endif

" Syntax highlighting
hi Comment        guifg=#7C7C7C guibg=NONE    gui=italic      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
hi String         guifg=#b2ff4f guibg=NONE    gui=NONE      ctermfg=green       ctermbg=NONE        cterm=NONE
hi Number         guifg=#cf8688 guibg=NONE    gui=NONE      ctermfg=magenta     ctermbg=NONE        cterm=NONE

hi Keyword        guifg=#96CBFE guibg=NONE    gui=NONE      ctermfg=blue        ctermbg=NONE        cterm=NONE
hi PreProc        guifg=#96CBFE guibg=NONE    gui=NONE      ctermfg=blue        ctermbg=NONE        cterm=NONE
hi Conditional    guifg=#6699CC guibg=NONE    gui=NONE      ctermfg=blue        ctermbg=NONE        cterm=NONE  " if else end

hi Todo           guifg=#8f8f8f guibg=NONE    gui=NONE      ctermfg=red         ctermbg=NONE        cterm=NONE
hi Constant       guifg=#99CC99 guibg=NONE    gui=NONE      ctermfg=cyan        ctermbg=NONE        cterm=NONE

hi Identifier     guifg=#C6C5FE guibg=NONE    gui=NONE      ctermfg=cyan        ctermbg=NONE        cterm=NONE
hi Function       guifg=#FFD2A7 guibg=NONE    gui=NONE      ctermfg=brown       ctermbg=NONE        cterm=NONE
hi Type           guifg=#FFFFB6 guibg=NONE    gui=NONE      ctermfg=yellow      ctermbg=NONE        cterm=NONE
hi Statement      guifg=#6699CC guibg=NONE    gui=NONE      ctermfg=lightblue   ctermbg=NONE        cterm=NONE

hi Special        guifg=#E18964 guibg=NONE    gui=NONE      ctermfg=white       ctermbg=NONE        cterm=NONE
hi Delimiter      guifg=#00A0A0 guibg=NONE    gui=NONE   ctermfg=cyan        ctermbg=NONE        cterm=NONE
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
hi rubyRegexp                 guifg=#B18A3D guibg=NONE    gui=NONE      ctermfg=brown          ctermbg=NONE      cterm=NONE
hi rubyRegexpDelimiter        guifg=#FF8000      guibg=NONE      gui=NONE      ctermfg=brown          ctermbg=NONE      cterm=NONE
hi rubyEscape                 guifg=white        guibg=NONE      gui=NONE      ctermfg=cyan           ctermbg=NONE      cterm=NONE
hi rubyInterpolationDelimiter guifg=#00A0A0      guibg=NONE      gui=NONE      ctermfg=blue           ctermbg=NONE      cterm=NONE
hi rubyControl                guifg=#6699CC      guibg=NONE      gui=NONE      ctermfg=blue           ctermbg=NONE      cterm=NONE  "and break, etc
"hi rubyGlobalVariable        guifg=#FFCCFF      guibg=NONE      gui=NONE      ctermfg=lightblue      ctermbg=NONE      cterm=NONE  "yield
hi rubyStringDelimiter        guifg=#4ba747      guibg=NONE      gui=NONE      ctermfg=lightgreen     ctermbg=NONE      cterm=NONE
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


" Special for Java
" hi link javaClassDecl    Type
hi link javaScopeDecl         Identifier
hi link javaCommentTitle      javaDocSeeTag
hi link javaDocTags           javaDocSeeTag
hi link javaDocParam          javaDocSeeTag
hi link javaDocSeeTagParam    javaDocSeeTag

hi javaDocSeeTag              guifg=#CCCCCC     guibg=NONE        gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
hi javaDocSeeTag              guifg=#CCCCCC     guibg=NONE        gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
"hi javaClassDecl              guifg=#CCFFCC     guibg=NONE        gui=NONE      ctermfg=white       ctermbg=NONE        cterm=NONE


" Special for XML
hi link xmlTag          Keyword
hi link xmlTagName      Conditional
hi link xmlEndTag       Identifier


" Special for HTML
hi link htmlTag         Keyword
hi link htmlTagName     Conditional
hi link htmlEndTag      Identifier


" Special for Javascript
hi link javaScriptNumber      Number


" Special for Python
"hi  link pythonEscape         Keyword


" Special for CSharp
hi  link csXmlTag             Keyword
