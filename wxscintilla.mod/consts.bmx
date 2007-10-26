' Copyright (c) 2007 Bruce A Henderson
' 
' Permission is hereby granted, free of charge, to any person obtaining a copy
' of this software and associated documentation files (the "Software"), to deal
' in the Software without restriction, including without limitation the rights
' to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
' copies of the Software, and to permit persons to whom the Software is
' furnished to do so, subject to the following conditions:
' 
' The above copyright notice and this permission notice shall be included in
' all copies or substantial portions of the Software.
' 
' THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
' IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
' FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
' AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
' LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
' OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
' THE SOFTWARE.
' 
SuperStrict


Const wxSCI_INVALID_POSITION:Int = -1
Const wxSCI_START:Int = 2000
Const wxSCI_OPTIONAL_START:Int = 3000
Const wxSCI_LEXER_START:Int = 4000

' Is undo history being collected?
Const wxSCI_WS_INVISIBLE:Int = 0
Const wxSCI_WS_VISIBLEALWAYS:Int = 1
Const wxSCI_WS_VISIBLEAFTERINDENT:Int = 2

' Retrieve the position of the last correctly styled character.
Const wxSCI_EOL_CRLF:Int = 0
Const wxSCI_EOL_CR:Int = 1
Const wxSCI_EOL_LF:Int = 2
Const wxSCI_CP_UTF8:Int = 65001

' The SC_CP_DBCS value can be used to indicate a DBCS mode for GTK+.
Const wxSCI_CP_DBCS:Int = 1
Const wxSCI_MARKER_MAX:Int = 31
Const wxSCI_MARK_CIRCLE:Int = 0
Const wxSCI_MARK_ROUNDRECT:Int = 1
Const wxSCI_MARK_ARROW:Int = 2
Const wxSCI_MARK_SMALLRECT:Int = 3
Const wxSCI_MARK_SHORTARROW:Int = 4
Const wxSCI_MARK_EMPTY:Int = 5
Const wxSCI_MARK_ARROWDOWN:Int = 6
Const wxSCI_MARK_MINUS:Int = 7
Const wxSCI_MARK_PLUS:Int = 8

' Shapes used for outlining column.
Const wxSCI_MARK_VLINE:Int = 9
Const wxSCI_MARK_LCORNER:Int = 10
Const wxSCI_MARK_TCORNER:Int = 11
Const wxSCI_MARK_BOXPLUS:Int = 12
Const wxSCI_MARK_BOXPLUSCONNECTED:Int = 13
Const wxSCI_MARK_BOXMINUS:Int = 14
Const wxSCI_MARK_BOXMINUSCONNECTED:Int = 15
Const wxSCI_MARK_LCORNERCURVE:Int = 16
Const wxSCI_MARK_TCORNERCURVE:Int = 17
Const wxSCI_MARK_CIRCLEPLUS:Int = 18
Const wxSCI_MARK_CIRCLEPLUSCONNECTED:Int = 19
Const wxSCI_MARK_CIRCLEMINUS:Int = 20
Const wxSCI_MARK_CIRCLEMINUSCONNECTED:Int = 21

' Invisible mark that only sets the line background color.
Const wxSCI_MARK_BACKGROUND:Int = 22
Const wxSCI_MARK_DOTDOTDOT:Int = 23
Const wxSCI_MARK_ARROWS:Int = 24
Const wxSCI_MARK_PIXMAP:Int = 25
Const wxSCI_MARK_FULLRECT:Int = 26
Const wxSCI_MARK_CHARACTER:Int = 10000

' Markers used for outlining column.
Const wxSCI_MARKNUM_FOLDEREND:Int = 25
Const wxSCI_MARKNUM_FOLDEROPENMID:Int = 26
Const wxSCI_MARKNUM_FOLDERMIDTAIL:Int = 27
Const wxSCI_MARKNUM_FOLDERTAIL:Int = 28
Const wxSCI_MARKNUM_FOLDERSUB:Int = 29
Const wxSCI_MARKNUM_FOLDER:Int = 30
Const wxSCI_MARKNUM_FOLDEROPEN:Int = 31
Const wxSCI_MASK_FOLDERS:Int = $FE000000

' Set the alpha used for a marker that is drawn in the text area, not the margin.
Const wxSCI_MARGIN_SYMBOL:Int = 0
Const wxSCI_MARGIN_NUMBER:Int = 1
Const wxSCI_MARGIN_BACK:Int = 2
Const wxSCI_MARGIN_FORE:Int = 3
Const wxSCI_STYLE_DEFAULT:Int = 32
Const wxSCI_STYLE_LINENUMBER:Int = 33
Const wxSCI_STYLE_BRACELIGHT:Int = 34
Const wxSCI_STYLE_BRACEBAD:Int = 35
Const wxSCI_STYLE_CONTROLCHAR:Int = 36
Const wxSCI_STYLE_INDENTGUIDE:Int = 37
Const wxSCI_STYLE_CALLTIP:Int = 38
Const wxSCI_STYLE_LASTPREDEFINED:Int = 39
Const wxSCI_STYLE_MAX:Int = 127
Const wxSCI_CHARSET_ANSI:Int = 0
Const wxSCI_CHARSET_DEFAULT:Int = 1
Const wxSCI_CHARSET_BALTIC:Int = 186
Const wxSCI_CHARSET_CHINESEBIG5:Int = 136
Const wxSCI_CHARSET_EASTEUROPE:Int = 238
Const wxSCI_CHARSET_GB2312:Int = 134
Const wxSCI_CHARSET_GREEK:Int = 161
Const wxSCI_CHARSET_HANGUL:Int = 129
Const wxSCI_CHARSET_MAC:Int = 77
Const wxSCI_CHARSET_OEM:Int = 255
Const wxSCI_CHARSET_RUSSIAN:Int = 204
Const wxSCI_CHARSET_CYRILLIC:Int = 1251
Const wxSCI_CHARSET_SHIFTJIS:Int = 128
Const wxSCI_CHARSET_SYMBOL:Int = 2
Const wxSCI_CHARSET_TURKISH:Int = 162
Const wxSCI_CHARSET_JOHAB:Int = 130
Const wxSCI_CHARSET_HEBREW:Int = 177
Const wxSCI_CHARSET_ARABIC:Int = 178
Const wxSCI_CHARSET_VIETNAMESE:Int = 163
Const wxSCI_CHARSET_THAI:Int = 222
Const wxSCI_CHARSET_8859_15:Int = 1000

' Set a style to be underlined or not.
Const wxSCI_CASE_MIXED:Int = 0
Const wxSCI_CASE_UPPER:Int = 1
Const wxSCI_CASE_LOWER:Int = 2

' Indicator style enumeration and some constants
Const wxSCI_INDIC_PLAIN:Int = 0
Const wxSCI_INDIC_SQUIGGLE:Int = 1
Const wxSCI_INDIC_TT:Int = 2
Const wxSCI_INDIC_DIAGONAL:Int = 3
Const wxSCI_INDIC_STRIKE:Int = 4
Const wxSCI_INDIC_HIDDEN:Int = 5
Const wxSCI_INDIC_BOX:Int = 6
Const wxSCI_INDIC_ROUNDBOX:Int = 7
Const wxSCI_INDIC_MAX:Int = 31
Const wxSCI_INDIC_CONTAINER:Int = 8
Const wxSCI_INDIC0_MASK:Int = $20
Const wxSCI_INDIC1_MASK:Int = $40
Const wxSCI_INDIC2_MASK:Int = $80
Const wxSCI_INDICS_MASK:Int = $E0

' PrintColourMode - use same colours as screen.
Const wxSCI_PRINT_NORMAL:Int = 0

' PrintColourMode - invert the light value of each style for printing.
Const wxSCI_PRINT_INVERTLIGHT:Int = 1

' PrintColourMode - force black text on white background for printing.
Const wxSCI_PRINT_BLACKONWHITE:Int = 2

' PrintColourMode - text stays coloured, but all background is forced to be white for printing.
Const wxSCI_PRINT_COLOURONWHITE:Int = 3

' PrintColourMode - only the default-background is forced to be white for printing.
Const wxSCI_PRINT_COLOURONWHITEDEFAULTBG:Int = 4

' Returns the print colour mode.
Const wxSCI_WHOLEWORD:Int = 2
Const wxSCI_MATCHCASE:Int = 4
Const wxSCI_WORDSTART:Int = $00100000
Const wxSCI_REGEXP:Int = $00200000
Const wxSCI_POSIX:Int = $00400000

' The number of display lines needed to wrap a document line
Const wxSCI_FOLDLEVELBASE:Int = $400
Const wxSCI_FOLDLEVELWHITEFLAG:Int = $1000
Const wxSCI_FOLDLEVELHEADERFLAG:Int = $2000
Const wxSCI_FOLDLEVELBOXHEADERFLAG:Int = $4000
Const wxSCI_FOLDLEVELBOXFOOTERFLAG:Int = $8000
Const wxSCI_FOLDLEVELCONTRACTED:Int = $10000
Const wxSCI_FOLDLEVELUNINDENT:Int = $20000
Const wxSCI_FOLDLEVELNUMBERMASK:Int = $0FFF

' Ensure a particular line is visible by expanding any header line hiding it.
Const wxSCI_FOLDFLAG_LINEBEFORE_EXPANDED:Int = $0002
Const wxSCI_FOLDFLAG_LINEBEFORE_CONTRACTED:Int = $0004
Const wxSCI_FOLDFLAG_LINEAFTER_EXPANDED:Int = $0008
Const wxSCI_FOLDFLAG_LINEAFTER_CONTRACTED:Int = $0010
Const wxSCI_FOLDFLAG_LEVELNUMBERS:Int = $0040
Const wxSCI_FOLDFLAG_BOX:Int = $0001

' Does a backspace pressed when caret is within indentation unindent?
Const wxSCI_TIME_FOREVER:Int = 10000000

' Get position of end of word.
Const wxSCI_WRAP_NONE:Int = 0
Const wxSCI_WRAP_WORD:Int = 1
Const wxSCI_WRAP_CHAR:Int = 2

' Retrieve whether text is word wrapped.
Const wxSCI_WRAPVISUALFLAG_NONE:Int = $0000
Const wxSCI_WRAPVISUALFLAG_END:Int = $0001
Const wxSCI_WRAPVISUALFLAG_START:Int = $0002

' Retrive the display mode of visual flags for wrapped lines.
Const wxSCI_WRAPVISUALFLAGLOC_DEFAULT:Int = $0000
Const wxSCI_WRAPVISUALFLAGLOC_END_BY_TEXT:Int = $0001
Const wxSCI_WRAPVISUALFLAGLOC_START_BY_TEXT:Int = $0002

' Retrive the start indent for wrapped lines.
Const wxSCI_CACHE_NONE:Int = 0
Const wxSCI_CACHE_CARET:Int = 1
Const wxSCI_CACHE_PAGE:Int = 2
Const wxSCI_CACHE_DOCUMENT:Int = 3

' Set which document modification events are sent to the container.
Const wxSCI_EDGE_NONE:Int = 0
Const wxSCI_EDGE_LINE:Int = 1
Const wxSCI_EDGE_BACKGROUND:Int = 2

' Get whether mouse gets captured.
Const wxSCI_CURSORNORMAL:Int = -1
Const wxSCI_CURSORWAIT:Int = 4

' Constants for use with SetVisiblePolicy, similar to SetCaretPolicy.
Const wxSCI_VISIBLE_SLOP:Int = $01
Const wxSCI_VISIBLE_STRICT:Int = $04
Const wxSCI_CARET_SLOP:Int = $01
Const wxSCI_CARET_STRICT:Int = $04
Const wxSCI_CARET_JUMPS:Int = $10
Const wxSCI_CARET_EVEN:Int = $08

' Copy argument text to the clipboard.
Const wxSCI_SEL_STREAM:Int = 0
Const wxSCI_SEL_RECTANGLE:Int = 1
Const wxSCI_SEL_LINES:Int = 2

' Duplicate the selection. If selection empty duplicate the line containing the caret.
Const wxSCI_ALPHA_TRANSPARENT:Int = 0
Const wxSCI_ALPHA_OPAQUE:Int = 255
Const wxSCI_ALPHA_NOALPHA:Int = 256

' Get the background alpha of the caret line.
Const wxSCI_CARETSTYLE_INVISIBLE:Int = 0
Const wxSCI_CARETSTYLE_LINE:Int = 1
Const wxSCI_CARETSTYLE_BLOCK:Int = 2

' Maximum value of keywordSet parameter of SetKeyWords.
Const wxSCI_KEYWORDSET_MAX:Int = 8
Const wxSCI_MOD_INSERTTEXT:Int = $1
Const wxSCI_MOD_DELETETEXT:Int = $2
Const wxSCI_MOD_CHANGESTYLE:Int = $4
Const wxSCI_MOD_CHANGEFOLD:Int = $8
Const wxSCI_PERFORMED_USER:Int = $10
Const wxSCI_PERFORMED_UNDO:Int = $20
Const wxSCI_PERFORMED_REDO:Int = $40
Const wxSCI_MULTISTEPUNDOREDO:Int = $80
Const wxSCI_LASTSTEPINUNDOREDO:Int = $100
Const wxSCI_MOD_CHANGEMARKER:Int = $200
Const wxSCI_MOD_BEFOREINSERT:Int = $400
Const wxSCI_MOD_BEFOREDELETE:Int = $800
Const wxSCI_MULTILINEUNDOREDO:Int = $1000
Const wxSCI_STARTACTION:Int = $2000
Const wxSCI_MOD_CHANGEINDICATOR:Int = $4000
Const wxSCI_MODEVENTMASKALL:Int = $6FFF
Const wxSCI_KEY_DOWN:Int = 300
Const wxSCI_KEY_UP:Int = 301
Const wxSCI_KEY_LEFT:Int = 302
Const wxSCI_KEY_RIGHT:Int = 303
Const wxSCI_KEY_HOME:Int = 304
Const wxSCI_KEY_END:Int = 305
Const wxSCI_KEY_PRIOR:Int = 306
Const wxSCI_KEY_NEXT:Int = 307
Const wxSCI_KEY_DELETE:Int = 308
Const wxSCI_KEY_INSERT:Int = 309
Const wxSCI_KEY_ESCAPE:Int = 7
Const wxSCI_KEY_BACK:Int = 8
Const wxSCI_KEY_TAB:Int = 9
Const wxSCI_KEY_RETURN:Int = 13
Const wxSCI_KEY_ADD:Int = 310
Const wxSCI_KEY_SUBTRACT:Int = 311
Const wxSCI_KEY_DIVIDE:Int = 312
Const wxSCI_KEY_WIN:Int = 313
Const wxSCI_KEY_RWIN:Int = 314
Const wxSCI_KEY_MENU:Int = 315
Const wxSCI_SCMOD_NORM:Int = 0
Const wxSCI_SCMOD_SHIFT:Int = 1
Const wxSCI_SCMOD_CTRL:Int = 2
Const wxSCI_SCMOD_ALT:Int = 4

' For SciLexer.h
Const wxSCI_LEX_CONTAINER:Int = 0
Const wxSCI_LEX_NULL:Int = 1
Const wxSCI_LEX_PYTHON:Int = 2
Const wxSCI_LEX_CPP:Int = 3
Const wxSCI_LEX_HTML:Int = 4
Const wxSCI_LEX_XML:Int = 5
Const wxSCI_LEX_PERL:Int = 6
Const wxSCI_LEX_SQL:Int = 7
Const wxSCI_LEX_VB:Int = 8
Const wxSCI_LEX_PROPERTIES:Int = 9
Const wxSCI_LEX_ERRORLIST:Int = 10
Const wxSCI_LEX_MAKEFILE:Int = 11
Const wxSCI_LEX_BATCH:Int = 12
Const wxSCI_LEX_XCODE:Int = 13
Const wxSCI_LEX_LATEX:Int = 14
Const wxSCI_LEX_LUA:Int = 15
Const wxSCI_LEX_DIFF:Int = 16
Const wxSCI_LEX_CONF:Int = 17
Const wxSCI_LEX_PASCAL:Int = 18
Const wxSCI_LEX_AVE:Int = 19
Const wxSCI_LEX_ADA:Int = 20
Const wxSCI_LEX_LISP:Int = 21
Const wxSCI_LEX_RUBY:Int = 22
Const wxSCI_LEX_EIFFEL:Int = 23
Const wxSCI_LEX_EIFFELKW:Int = 24
Const wxSCI_LEX_TCL:Int = 25
Const wxSCI_LEX_NNCRONTAB:Int = 26
Const wxSCI_LEX_BULLANT:Int = 27
Const wxSCI_LEX_VBSCRIPT:Int = 28
Const wxSCI_LEX_BAAN:Int = 31
Const wxSCI_LEX_MATLAB:Int = 32
Const wxSCI_LEX_SCRIPTOL:Int = 33
Const wxSCI_LEX_ASM:Int = 34
Const wxSCI_LEX_CPPNOCASE:Int = 35
Const wxSCI_LEX_FORTRAN:Int = 36
Const wxSCI_LEX_F77:Int = 37
Const wxSCI_LEX_CSS:Int = 38
Const wxSCI_LEX_POV:Int = 39
Const wxSCI_LEX_LOUT:Int = 40
Const wxSCI_LEX_ESCRIPT:Int = 41
Const wxSCI_LEX_PS:Int = 42
Const wxSCI_LEX_NSIS:Int = 43
Const wxSCI_LEX_MMIXAL:Int = 44
Const wxSCI_LEX_CLW:Int = 45
Const wxSCI_LEX_CLWNOCASE:Int = 46
Const wxSCI_LEX_LOT:Int = 47
Const wxSCI_LEX_YAML:Int = 48
Const wxSCI_LEX_TEX:Int = 49
Const wxSCI_LEX_METAPOST:Int = 50
Const wxSCI_LEX_POWERBASIC:Int = 51
Const wxSCI_LEX_FORTH:Int = 52
Const wxSCI_LEX_ERLANG:Int = 53
Const wxSCI_LEX_OCTAVE:Int = 54
Const wxSCI_LEX_MSSQL:Int = 55
Const wxSCI_LEX_VERILOG:Int = 56
Const wxSCI_LEX_KIX:Int = 57
Const wxSCI_LEX_GUI4CLI:Int = 58
Const wxSCI_LEX_SPECMAN:Int = 59
Const wxSCI_LEX_AU3:Int = 60
Const wxSCI_LEX_APDL:Int = 61
Const wxSCI_LEX_BASH:Int = 62
Const wxSCI_LEX_ASN1:Int = 63
Const wxSCI_LEX_VHDL:Int = 64
Const wxSCI_LEX_CAML:Int = 65
Const wxSCI_LEX_BLITZBASIC:Int = 66
Const wxSCI_LEX_PUREBASIC:Int = 67
Const wxSCI_LEX_HASKELL:Int = 68
Const wxSCI_LEX_PHPSCRIPT:Int = 69
Const wxSCI_LEX_TADS3:Int = 70
Const wxSCI_LEX_REBOL:Int = 71
Const wxSCI_LEX_SMALLTALK:Int = 72
Const wxSCI_LEX_FLAGSHIP:Int = 73
Const wxSCI_LEX_CSOUND:Int = 74
Const wxSCI_LEX_FREEBASIC:Int = 75
Const wxSCI_LEX_INNOSETUP:Int = 76
Const wxSCI_LEX_OPAL:Int = 77
Const wxSCI_LEX_SPICE:Int = 78
Const wxSCI_LEX_D:Int = 79
Const wxSCI_LEX_CMAKE:Int = 80
Const wxSCI_LEX_GAP:Int = 81
Const wxSCI_LEX_PLM:Int = 82
Const wxSCI_LEX_PROGRESS:Int = 83
Const wxSCI_LEX_AUTOMATIC:Int = 1000

' Lexical states for SCLEX_PYTHON
Const wxSCI_P_DEFAULT:Int = 0
Const wxSCI_P_COMMENTLINE:Int = 1
Const wxSCI_P_NUMBER:Int = 2
Const wxSCI_P_STRING:Int = 3
Const wxSCI_P_CHARACTER:Int = 4
Const wxSCI_P_WORD:Int = 5
Const wxSCI_P_TRIPLE:Int = 6
Const wxSCI_P_TRIPLEDOUBLE:Int = 7
Const wxSCI_P_CLASSNAME:Int = 8
Const wxSCI_P_DEFNAME:Int = 9
Const wxSCI_P_OPERATOR:Int = 10
Const wxSCI_P_IDENTIFIER:Int = 11
Const wxSCI_P_COMMENTBLOCK:Int = 12
Const wxSCI_P_STRINGEOL:Int = 13
Const wxSCI_P_WORD2:Int = 14
Const wxSCI_P_DECORATOR:Int = 15

' Lexical states for SCLEX_CPP
Const wxSCI_C_DEFAULT:Int = 0
Const wxSCI_C_COMMENT:Int = 1
Const wxSCI_C_COMMENTLINE:Int = 2
Const wxSCI_C_COMMENTDOC:Int = 3
Const wxSCI_C_NUMBER:Int = 4
Const wxSCI_C_WORD:Int = 5
Const wxSCI_C_STRING:Int = 6
Const wxSCI_C_CHARACTER:Int = 7
Const wxSCI_C_UUID:Int = 8
Const wxSCI_C_PREPROCESSOR:Int = 9
Const wxSCI_C_OPERATOR:Int = 10
Const wxSCI_C_IDENTIFIER:Int = 11
Const wxSCI_C_STRINGEOL:Int = 12
Const wxSCI_C_VERBATIM:Int = 13
Const wxSCI_C_REGEX:Int = 14
Const wxSCI_C_COMMENTLINEDOC:Int = 15
Const wxSCI_C_WORD2:Int = 16
Const wxSCI_C_COMMENTDOCKEYWORD:Int = 17
Const wxSCI_C_COMMENTDOCKEYWORDERROR:Int = 18
Const wxSCI_C_GLOBALCLASS:Int = 19

' Lexical states for SCLEX_D
Const wxSCI_D_DEFAULT:Int = 0
Const wxSCI_D_COMMENT:Int = 1
Const wxSCI_D_COMMENTLINE:Int = 2
Const wxSCI_D_COMMENTDOC:Int = 3
Const wxSCI_D_COMMENTNESTED:Int = 4
Const wxSCI_D_NUMBER:Int = 5
Const wxSCI_D_WORD:Int = 6
Const wxSCI_D_WORD2:Int = 7
Const wxSCI_D_WORD3:Int = 8
Const wxSCI_D_TYPEDEF:Int = 9
Const wxSCI_D_STRING:Int = 10
Const wxSCI_D_STRINGEOL:Int = 11
Const wxSCI_D_CHARACTER:Int = 12
Const wxSCI_D_OPERATOR:Int = 13
Const wxSCI_D_IDENTIFIER:Int = 14
Const wxSCI_D_COMMENTLINEDOC:Int = 15
Const wxSCI_D_COMMENTDOCKEYWORD:Int = 16
Const wxSCI_D_COMMENTDOCKEYWORDERROR:Int = 17

' Lexical states for SCLEX_TCL
Const wxSCI_TCL_DEFAULT:Int = 0
Const wxSCI_TCL_COMMENT:Int = 1
Const wxSCI_TCL_COMMENTLINE:Int = 2
Const wxSCI_TCL_NUMBER:Int = 3
Const wxSCI_TCL_WORD_IN_QUOTE:Int = 4
Const wxSCI_TCL_IN_QUOTE:Int = 5
Const wxSCI_TCL_OPERATOR:Int = 6
Const wxSCI_TCL_IDENTIFIER:Int = 7
Const wxSCI_TCL_SUBSTITUTION:Int = 8
Const wxSCI_TCL_SUB_BRACE:Int = 9
Const wxSCI_TCL_MODIFIER:Int = 10
Const wxSCI_TCL_EXPAND:Int = 11
Const wxSCI_TCL_WORD:Int = 12
Const wxSCI_TCL_WORD2:Int = 13
Const wxSCI_TCL_WORD3:Int = 14
Const wxSCI_TCL_WORD4:Int = 15
Const wxSCI_TCL_WORD5:Int = 16
Const wxSCI_TCL_WORD6:Int = 17
Const wxSCI_TCL_WORD7:Int = 18
Const wxSCI_TCL_WORD8:Int = 19
Const wxSCI_TCL_COMMENT_BOX:Int = 20
Const wxSCI_TCL_BLOCK_COMMENT:Int = 21

' Lexical states for SCLEX_HTML, SCLEX_XML
Const wxSCI_H_DEFAULT:Int = 0
Const wxSCI_H_TAG:Int = 1
Const wxSCI_H_TAGUNKNOWN:Int = 2
Const wxSCI_H_ATTRIBUTE:Int = 3
Const wxSCI_H_ATTRIBUTEUNKNOWN:Int = 4
Const wxSCI_H_NUMBER:Int = 5
Const wxSCI_H_DOUBLESTRING:Int = 6
Const wxSCI_H_SINGLESTRING:Int = 7
Const wxSCI_H_OTHER:Int = 8
Const wxSCI_H_COMMENT:Int = 9
Const wxSCI_H_ENTITY:Int = 10

' XML and ASP
Const wxSCI_H_TAGEND:Int = 11
Const wxSCI_H_XMLSTART:Int = 12
Const wxSCI_H_XMLEND:Int = 13
Const wxSCI_H_SCRIPT:Int = 14
Const wxSCI_H_ASP:Int = 15
Const wxSCI_H_ASPAT:Int = 16
Const wxSCI_H_CDATA:Int = 17
Const wxSCI_H_QUESTION:Int = 18

' More HTML
Const wxSCI_H_VALUE:Int = 19

' X-Code
Const wxSCI_H_XCCOMMENT:Int = 20

' SGML
Const wxSCI_H_SGML_DEFAULT:Int = 21
Const wxSCI_H_SGML_COMMAND:Int = 22
Const wxSCI_H_SGML_1ST_PARAM:Int = 23
Const wxSCI_H_SGML_DOUBLESTRING:Int = 24
Const wxSCI_H_SGML_SIMPLESTRING:Int = 25
Const wxSCI_H_SGML_ERROR:Int = 26
Const wxSCI_H_SGML_SPECIAL:Int = 27
Const wxSCI_H_SGML_ENTITY:Int = 28
Const wxSCI_H_SGML_COMMENT:Int = 29
Const wxSCI_H_SGML_1ST_PARAM_COMMENT:Int = 30
Const wxSCI_H_SGML_BLOCK_DEFAULT:Int = 31

' Embedded Javascript
Const wxSCI_HJ_START:Int = 40
Const wxSCI_HJ_DEFAULT:Int = 41
Const wxSCI_HJ_COMMENT:Int = 42
Const wxSCI_HJ_COMMENTLINE:Int = 43
Const wxSCI_HJ_COMMENTDOC:Int = 44
Const wxSCI_HJ_NUMBER:Int = 45
Const wxSCI_HJ_WORD:Int = 46
Const wxSCI_HJ_KEYWORD:Int = 47
Const wxSCI_HJ_DOUBLESTRING:Int = 48
Const wxSCI_HJ_SINGLESTRING:Int = 49
Const wxSCI_HJ_SYMBOLS:Int = 50
Const wxSCI_HJ_STRINGEOL:Int = 51
Const wxSCI_HJ_REGEX:Int = 52

' ASP Javascript
Const wxSCI_HJA_START:Int = 55
Const wxSCI_HJA_DEFAULT:Int = 56
Const wxSCI_HJA_COMMENT:Int = 57
Const wxSCI_HJA_COMMENTLINE:Int = 58
Const wxSCI_HJA_COMMENTDOC:Int = 59
Const wxSCI_HJA_NUMBER:Int = 60
Const wxSCI_HJA_WORD:Int = 61
Const wxSCI_HJA_KEYWORD:Int = 62
Const wxSCI_HJA_DOUBLESTRING:Int = 63
Const wxSCI_HJA_SINGLESTRING:Int = 64
Const wxSCI_HJA_SYMBOLS:Int = 65
Const wxSCI_HJA_STRINGEOL:Int = 66
Const wxSCI_HJA_REGEX:Int = 67

' Embedded VBScript
Const wxSCI_HB_START:Int = 70
Const wxSCI_HB_DEFAULT:Int = 71
Const wxSCI_HB_COMMENTLINE:Int = 72
Const wxSCI_HB_NUMBER:Int = 73
Const wxSCI_HB_WORD:Int = 74
Const wxSCI_HB_STRING:Int = 75
Const wxSCI_HB_IDENTIFIER:Int = 76
Const wxSCI_HB_STRINGEOL:Int = 77

' ASP VBScript
Const wxSCI_HBA_START:Int = 80
Const wxSCI_HBA_DEFAULT:Int = 81
Const wxSCI_HBA_COMMENTLINE:Int = 82
Const wxSCI_HBA_NUMBER:Int = 83
Const wxSCI_HBA_WORD:Int = 84
Const wxSCI_HBA_STRING:Int = 85
Const wxSCI_HBA_IDENTIFIER:Int = 86
Const wxSCI_HBA_STRINGEOL:Int = 87

' Embedded Python
Const wxSCI_HP_START:Int = 90
Const wxSCI_HP_DEFAULT:Int = 91
Const wxSCI_HP_COMMENTLINE:Int = 92
Const wxSCI_HP_NUMBER:Int = 93
Const wxSCI_HP_STRING:Int = 94
Const wxSCI_HP_CHARACTER:Int = 95
Const wxSCI_HP_WORD:Int = 96
Const wxSCI_HP_TRIPLE:Int = 97
Const wxSCI_HP_TRIPLEDOUBLE:Int = 98
Const wxSCI_HP_CLASSNAME:Int = 99
Const wxSCI_HP_DEFNAME:Int = 100
Const wxSCI_HP_OPERATOR:Int = 101
Const wxSCI_HP_IDENTIFIER:Int = 102

' PHP
Const wxSCI_HPHP_COMPLEX_VARIABLE:Int = 104

' ASP Python
Const wxSCI_HPA_START:Int = 105
Const wxSCI_HPA_DEFAULT:Int = 106
Const wxSCI_HPA_COMMENTLINE:Int = 107
Const wxSCI_HPA_NUMBER:Int = 108
Const wxSCI_HPA_STRING:Int = 109
Const wxSCI_HPA_CHARACTER:Int = 110
Const wxSCI_HPA_WORD:Int = 111
Const wxSCI_HPA_TRIPLE:Int = 112
Const wxSCI_HPA_TRIPLEDOUBLE:Int = 113
Const wxSCI_HPA_CLASSNAME:Int = 114
Const wxSCI_HPA_DEFNAME:Int = 115
Const wxSCI_HPA_OPERATOR:Int = 116
Const wxSCI_HPA_IDENTIFIER:Int = 117

' PHP
Const wxSCI_HPHP_DEFAULT:Int = 118
Const wxSCI_HPHP_HSTRING:Int = 119
Const wxSCI_HPHP_SIMPLESTRING:Int = 120
Const wxSCI_HPHP_WORD:Int = 121
Const wxSCI_HPHP_NUMBER:Int = 122
Const wxSCI_HPHP_VARIABLE:Int = 123
Const wxSCI_HPHP_COMMENT:Int = 124
Const wxSCI_HPHP_COMMENTLINE:Int = 125
Const wxSCI_HPHP_HSTRING_VARIABLE:Int = 126
Const wxSCI_HPHP_OPERATOR:Int = 127

' Lexical states for SCLEX_PERL
Const wxSCI_PL_DEFAULT:Int = 0
Const wxSCI_PL_ERROR:Int = 1
Const wxSCI_PL_COMMENTLINE:Int = 2
Const wxSCI_PL_POD:Int = 3
Const wxSCI_PL_NUMBER:Int = 4
Const wxSCI_PL_WORD:Int = 5
Const wxSCI_PL_STRING:Int = 6
Const wxSCI_PL_CHARACTER:Int = 7
Const wxSCI_PL_PUNCTUATION:Int = 8
Const wxSCI_PL_PREPROCESSOR:Int = 9
Const wxSCI_PL_OPERATOR:Int = 10
Const wxSCI_PL_IDENTIFIER:Int = 11
Const wxSCI_PL_SCALAR:Int = 12
Const wxSCI_PL_ARRAY:Int = 13
Const wxSCI_PL_HASH:Int = 14
Const wxSCI_PL_SYMBOLTABLE:Int = 15
Const wxSCI_PL_VARIABLE_INDEXER:Int = 16
Const wxSCI_PL_REGEX:Int = 17
Const wxSCI_PL_REGSUBST:Int = 18
Const wxSCI_PL_LONGQUOTE:Int = 19
Const wxSCI_PL_BACKTICKS:Int = 20
Const wxSCI_PL_DATASECTION:Int = 21
Const wxSCI_PL_HERE_DELIM:Int = 22
Const wxSCI_PL_HERE_Q:Int = 23
Const wxSCI_PL_HERE_QQ:Int = 24
Const wxSCI_PL_HERE_QX:Int = 25
Const wxSCI_PL_STRING_Q:Int = 26
Const wxSCI_PL_STRING_QQ:Int = 27
Const wxSCI_PL_STRING_QX:Int = 28
Const wxSCI_PL_STRING_QR:Int = 29
Const wxSCI_PL_STRING_QW:Int = 30
Const wxSCI_PL_POD_VERB:Int = 31

' Lexical states for SCLEX_RUBY
Const wxSCI_RB_DEFAULT:Int = 0
Const wxSCI_RB_ERROR:Int = 1
Const wxSCI_RB_COMMENTLINE:Int = 2
Const wxSCI_RB_POD:Int = 3
Const wxSCI_RB_NUMBER:Int = 4
Const wxSCI_RB_WORD:Int = 5
Const wxSCI_RB_STRING:Int = 6
Const wxSCI_RB_CHARACTER:Int = 7
Const wxSCI_RB_CLASSNAME:Int = 8
Const wxSCI_RB_DEFNAME:Int = 9
Const wxSCI_RB_OPERATOR:Int = 10
Const wxSCI_RB_IDENTIFIER:Int = 11
Const wxSCI_RB_REGEX:Int = 12
Const wxSCI_RB_GLOBAL:Int = 13
Const wxSCI_RB_SYMBOL:Int = 14
Const wxSCI_RB_MODULE_NAME:Int = 15
Const wxSCI_RB_INSTANCE_VAR:Int = 16
Const wxSCI_RB_CLASS_VAR:Int = 17
Const wxSCI_RB_BACKTICKS:Int = 18
Const wxSCI_RB_DATASECTION:Int = 19
Const wxSCI_RB_HERE_DELIM:Int = 20
Const wxSCI_RB_HERE_Q:Int = 21
Const wxSCI_RB_HERE_QQ:Int = 22
Const wxSCI_RB_HERE_QX:Int = 23
Const wxSCI_RB_STRING_Q:Int = 24
Const wxSCI_RB_STRING_QQ:Int = 25
Const wxSCI_RB_STRING_QX:Int = 26
Const wxSCI_RB_STRING_QR:Int = 27
Const wxSCI_RB_STRING_QW:Int = 28
Const wxSCI_RB_WORD_DEMOTED:Int = 29
Const wxSCI_RB_STDIN:Int = 30
Const wxSCI_RB_STDOUT:Int = 31
Const wxSCI_RB_STDERR:Int = 40
Const wxSCI_RB_UPPER_BOUND:Int = 41

' Lexical states for SCLEX_VB, SCLEX_VBSCRIPT, SCLEX_POWERBASIC
Const wxSCI_B_DEFAULT:Int = 0
Const wxSCI_B_COMMENT:Int = 1
Const wxSCI_B_NUMBER:Int = 2
Const wxSCI_B_KEYWORD:Int = 3
Const wxSCI_B_STRING:Int = 4
Const wxSCI_B_PREPROCESSOR:Int = 5
Const wxSCI_B_OPERATOR:Int = 6
Const wxSCI_B_IDENTIFIER:Int = 7
Const wxSCI_B_DATE:Int = 8
Const wxSCI_B_STRINGEOL:Int = 9
Const wxSCI_B_KEYWORD2:Int = 10
Const wxSCI_B_KEYWORD3:Int = 11
Const wxSCI_B_KEYWORD4:Int = 12
Const wxSCI_B_CONSTANT:Int = 13
Const wxSCI_B_ASM:Int = 14
Const wxSCI_B_LABEL:Int = 15
Const wxSCI_B_ERROR:Int = 16
Const wxSCI_B_HEXNUMBER:Int = 17
Const wxSCI_B_BINNUMBER:Int = 18

' Lexical states for SCLEX_PROPERTIES
Const wxSCI_PROPS_DEFAULT:Int = 0
Const wxSCI_PROPS_COMMENT:Int = 1
Const wxSCI_PROPS_SECTION:Int = 2
Const wxSCI_PROPS_ASSIGNMENT:Int = 3
Const wxSCI_PROPS_DEFVAL:Int = 4
Const wxSCI_PROPS_KEY:Int = 5

' Lexical states for SCLEX_LATEX
Const wxSCI_L_DEFAULT:Int = 0
Const wxSCI_L_COMMAND:Int = 1
Const wxSCI_L_TAG:Int = 2
Const wxSCI_L_MATH:Int = 3
Const wxSCI_L_COMMENT:Int = 4

' Lexical states for SCLEX_LUA
Const wxSCI_LUA_DEFAULT:Int = 0
Const wxSCI_LUA_COMMENT:Int = 1
Const wxSCI_LUA_COMMENTLINE:Int = 2
Const wxSCI_LUA_COMMENTDOC:Int = 3
Const wxSCI_LUA_NUMBER:Int = 4
Const wxSCI_LUA_WORD:Int = 5
Const wxSCI_LUA_STRING:Int = 6
Const wxSCI_LUA_CHARACTER:Int = 7
Const wxSCI_LUA_LITERALSTRING:Int = 8
Const wxSCI_LUA_PREPROCESSOR:Int = 9
Const wxSCI_LUA_OPERATOR:Int = 10
Const wxSCI_LUA_IDENTIFIER:Int = 11
Const wxSCI_LUA_STRINGEOL:Int = 12
Const wxSCI_LUA_WORD2:Int = 13
Const wxSCI_LUA_WORD3:Int = 14
Const wxSCI_LUA_WORD4:Int = 15
Const wxSCI_LUA_WORD5:Int = 16
Const wxSCI_LUA_WORD6:Int = 17
Const wxSCI_LUA_WORD7:Int = 18
Const wxSCI_LUA_WORD8:Int = 19

' Lexical states for SCLEX_ERRORLIST
Const wxSCI_ERR_DEFAULT:Int = 0
Const wxSCI_ERR_PYTHON:Int = 1
Const wxSCI_ERR_GCC:Int = 2
Const wxSCI_ERR_MS:Int = 3
Const wxSCI_ERR_CMD:Int = 4
Const wxSCI_ERR_BORLAND:Int = 5
Const wxSCI_ERR_PERL:Int = 6
Const wxSCI_ERR_NET:Int = 7
Const wxSCI_ERR_LUA:Int = 8
Const wxSCI_ERR_CTAG:Int = 9
Const wxSCI_ERR_DIFF_CHANGED:Int = 10
Const wxSCI_ERR_DIFF_ADDITION:Int = 11
Const wxSCI_ERR_DIFF_DELETION:Int = 12
Const wxSCI_ERR_DIFF_MESSAGE:Int = 13
Const wxSCI_ERR_PHP:Int = 14
Const wxSCI_ERR_ELF:Int = 15
Const wxSCI_ERR_IFC:Int = 16
Const wxSCI_ERR_IFORT:Int = 17
Const wxSCI_ERR_ABSF:Int = 18
Const wxSCI_ERR_TIDY:Int = 19
Const wxSCI_ERR_JAVA_STACK:Int = 20

' Lexical states for SCLEX_BATCH
Const wxSCI_BAT_DEFAULT:Int = 0
Const wxSCI_BAT_COMMENT:Int = 1
Const wxSCI_BAT_WORD:Int = 2
Const wxSCI_BAT_LABEL:Int = 3
Const wxSCI_BAT_HIDE:Int = 4
Const wxSCI_BAT_COMMAND:Int = 5
Const wxSCI_BAT_IDENTIFIER:Int = 6
Const wxSCI_BAT_OPERATOR:Int = 7

' Lexical states for SCLEX_MAKEFILE
Const wxSCI_MAKE_DEFAULT:Int = 0
Const wxSCI_MAKE_COMMENT:Int = 1
Const wxSCI_MAKE_PREPROCESSOR:Int = 2
Const wxSCI_MAKE_IDENTIFIER:Int = 3
Const wxSCI_MAKE_OPERATOR:Int = 4
Const wxSCI_MAKE_TARGET:Int = 5
Const wxSCI_MAKE_IDEOL:Int = 9

' Lexical states for SCLEX_DIFF
Const wxSCI_DIFF_DEFAULT:Int = 0
Const wxSCI_DIFF_COMMENT:Int = 1
Const wxSCI_DIFF_COMMAND:Int = 2
Const wxSCI_DIFF_HEADER:Int = 3
Const wxSCI_DIFF_POSITION:Int = 4
Const wxSCI_DIFF_DELETED:Int = 5
Const wxSCI_DIFF_ADDED:Int = 6

' Lexical states for SCLEX_CONF (Apache Configuration Files Lexer)
Const wxSCI_CONF_DEFAULT:Int = 0
Const wxSCI_CONF_COMMENT:Int = 1
Const wxSCI_CONF_NUMBER:Int = 2
Const wxSCI_CONF_IDENTIFIER:Int = 3
Const wxSCI_CONF_EXTENSION:Int = 4
Const wxSCI_CONF_PARAMETER:Int = 5
Const wxSCI_CONF_STRING:Int = 6
Const wxSCI_CONF_OPERATOR:Int = 7
Const wxSCI_CONF_IP:Int = 8
Const wxSCI_CONF_DIRECTIVE:Int = 9

' Lexical states for SCLEX_AVE, Avenue
Const wxSCI_AVE_DEFAULT:Int = 0
Const wxSCI_AVE_COMMENT:Int = 1
Const wxSCI_AVE_NUMBER:Int = 2
Const wxSCI_AVE_WORD:Int = 3
Const wxSCI_AVE_STRING:Int = 6
Const wxSCI_AVE_ENUM:Int = 7
Const wxSCI_AVE_STRINGEOL:Int = 8
Const wxSCI_AVE_IDENTIFIER:Int = 9
Const wxSCI_AVE_OPERATOR:Int = 10
Const wxSCI_AVE_WORD1:Int = 11
Const wxSCI_AVE_WORD2:Int = 12
Const wxSCI_AVE_WORD3:Int = 13
Const wxSCI_AVE_WORD4:Int = 14
Const wxSCI_AVE_WORD5:Int = 15
Const wxSCI_AVE_WORD6:Int = 16

' Lexical states for SCLEX_ADA
Const wxSCI_ADA_DEFAULT:Int = 0
Const wxSCI_ADA_WORD:Int = 1
Const wxSCI_ADA_IDENTIFIER:Int = 2
Const wxSCI_ADA_NUMBER:Int = 3
Const wxSCI_ADA_DELIMITER:Int = 4
Const wxSCI_ADA_CHARACTER:Int = 5
Const wxSCI_ADA_CHARACTEREOL:Int = 6
Const wxSCI_ADA_STRING:Int = 7
Const wxSCI_ADA_STRINGEOL:Int = 8
Const wxSCI_ADA_LABEL:Int = 9
Const wxSCI_ADA_COMMENTLINE:Int = 10
Const wxSCI_ADA_ILLEGAL:Int = 11

' Lexical states for SCLEX_BAAN
Const wxSCI_BAAN_DEFAULT:Int = 0
Const wxSCI_BAAN_COMMENT:Int = 1
Const wxSCI_BAAN_COMMENTDOC:Int = 2
Const wxSCI_BAAN_NUMBER:Int = 3
Const wxSCI_BAAN_WORD:Int = 4
Const wxSCI_BAAN_STRING:Int = 5
Const wxSCI_BAAN_PREPROCESSOR:Int = 6
Const wxSCI_BAAN_OPERATOR:Int = 7
Const wxSCI_BAAN_IDENTIFIER:Int = 8
Const wxSCI_BAAN_STRINGEOL:Int = 9
Const wxSCI_BAAN_WORD2:Int = 10

' Lexical states for SCLEX_LISP
Const wxSCI_LISP_DEFAULT:Int = 0
Const wxSCI_LISP_COMMENT:Int = 1
Const wxSCI_LISP_NUMBER:Int = 2
Const wxSCI_LISP_KEYWORD:Int = 3
Const wxSCI_LISP_KEYWORD_KW:Int = 4
Const wxSCI_LISP_SYMBOL:Int = 5
Const wxSCI_LISP_STRING:Int = 6
Const wxSCI_LISP_STRINGEOL:Int = 8
Const wxSCI_LISP_IDENTIFIER:Int = 9
Const wxSCI_LISP_OPERATOR:Int = 10
Const wxSCI_LISP_SPECIAL:Int = 11
Const wxSCI_LISP_MULTI_COMMENT:Int = 12

' Lexical states for SCLEX_EIFFEL and SCLEX_EIFFELKW
Const wxSCI_EIFFEL_DEFAULT:Int = 0
Const wxSCI_EIFFEL_COMMENTLINE:Int = 1
Const wxSCI_EIFFEL_NUMBER:Int = 2
Const wxSCI_EIFFEL_WORD:Int = 3
Const wxSCI_EIFFEL_STRING:Int = 4
Const wxSCI_EIFFEL_CHARACTER:Int = 5
Const wxSCI_EIFFEL_OPERATOR:Int = 6
Const wxSCI_EIFFEL_IDENTIFIER:Int = 7
Const wxSCI_EIFFEL_STRINGEOL:Int = 8

' Lexical states for SCLEX_NNCRONTAB (nnCron crontab Lexer)
Const wxSCI_NNCRONTAB_DEFAULT:Int = 0
Const wxSCI_NNCRONTAB_COMMENT:Int = 1
Const wxSCI_NNCRONTAB_TASK:Int = 2
Const wxSCI_NNCRONTAB_SECTION:Int = 3
Const wxSCI_NNCRONTAB_KEYWORD:Int = 4
Const wxSCI_NNCRONTAB_MODIFIER:Int = 5
Const wxSCI_NNCRONTAB_ASTERISK:Int = 6
Const wxSCI_NNCRONTAB_NUMBER:Int = 7
Const wxSCI_NNCRONTAB_STRING:Int = 8
Const wxSCI_NNCRONTAB_ENVIRONMENT:Int = 9
Const wxSCI_NNCRONTAB_IDENTIFIER:Int = 10

' Lexical states for SCLEX_FORTH (Forth Lexer)
Const wxSCI_FORTH_DEFAULT:Int = 0
Const wxSCI_FORTH_COMMENT:Int = 1
Const wxSCI_FORTH_COMMENT_ML:Int = 2
Const wxSCI_FORTH_IDENTIFIER:Int = 3
Const wxSCI_FORTH_CONTROL:Int = 4
Const wxSCI_FORTH_KEYWORD:Int = 5
Const wxSCI_FORTH_DEFWORD:Int = 6
Const wxSCI_FORTH_PREWORD1:Int = 7
Const wxSCI_FORTH_PREWORD2:Int = 8
Const wxSCI_FORTH_NUMBER:Int = 9
Const wxSCI_FORTH_STRING:Int = 10
Const wxSCI_FORTH_LOCALE:Int = 11

' Lexical states for SCLEX_MATLAB
Const wxSCI_MATLAB_DEFAULT:Int = 0
Const wxSCI_MATLAB_COMMENT:Int = 1
Const wxSCI_MATLAB_COMMAND:Int = 2
Const wxSCI_MATLAB_NUMBER:Int = 3
Const wxSCI_MATLAB_KEYWORD:Int = 4

' single quoted string
Const wxSCI_MATLAB_STRING:Int = 5
Const wxSCI_MATLAB_OPERATOR:Int = 6
Const wxSCI_MATLAB_IDENTIFIER:Int = 7
Const wxSCI_MATLAB_DOUBLEQUOTESTRING:Int = 8

' Lexical states for SCLEX_SCRIPTOL
Const wxSCI_SCRIPTOL_DEFAULT:Int = 0
Const wxSCI_SCRIPTOL_WHITE:Int = 1
Const wxSCI_SCRIPTOL_COMMENTLINE:Int = 2
Const wxSCI_SCRIPTOL_PERSISTENT:Int = 3
Const wxSCI_SCRIPTOL_CSTYLE:Int = 4
Const wxSCI_SCRIPTOL_COMMENTBLOCK:Int = 5
Const wxSCI_SCRIPTOL_NUMBER:Int = 6
Const wxSCI_SCRIPTOL_STRING:Int = 7
Const wxSCI_SCRIPTOL_CHARACTER:Int = 8
Const wxSCI_SCRIPTOL_STRINGEOL:Int = 9
Const wxSCI_SCRIPTOL_KEYWORD:Int = 10
Const wxSCI_SCRIPTOL_OPERATOR:Int = 11
Const wxSCI_SCRIPTOL_IDENTIFIER:Int = 12
Const wxSCI_SCRIPTOL_TRIPLE:Int = 13
Const wxSCI_SCRIPTOL_CLASSNAME:Int = 14
Const wxSCI_SCRIPTOL_PREPROCESSOR:Int = 15

' Lexical states for SCLEX_ASM
Const wxSCI_ASM_DEFAULT:Int = 0
Const wxSCI_ASM_COMMENT:Int = 1
Const wxSCI_ASM_NUMBER:Int = 2
Const wxSCI_ASM_STRING:Int = 3
Const wxSCI_ASM_OPERATOR:Int = 4
Const wxSCI_ASM_IDENTIFIER:Int = 5
Const wxSCI_ASM_CPUINSTRUCTION:Int = 6
Const wxSCI_ASM_MATHINSTRUCTION:Int = 7
Const wxSCI_ASM_REGISTER:Int = 8
Const wxSCI_ASM_DIRECTIVE:Int = 9
Const wxSCI_ASM_DIRECTIVEOPERAND:Int = 10
Const wxSCI_ASM_COMMENTBLOCK:Int = 11
Const wxSCI_ASM_CHARACTER:Int = 12
Const wxSCI_ASM_STRINGEOL:Int = 13
Const wxSCI_ASM_EXTINSTRUCTION:Int = 14

' Lexical states for SCLEX_FORTRAN
Const wxSCI_F_DEFAULT:Int = 0
Const wxSCI_F_COMMENT:Int = 1
Const wxSCI_F_NUMBER:Int = 2
Const wxSCI_F_STRING1:Int = 3
Const wxSCI_F_STRING2:Int = 4
Const wxSCI_F_STRINGEOL:Int = 5
Const wxSCI_F_OPERATOR:Int = 6
Const wxSCI_F_IDENTIFIER:Int = 7
Const wxSCI_F_WORD:Int = 8
Const wxSCI_F_WORD2:Int = 9
Const wxSCI_F_WORD3:Int = 10
Const wxSCI_F_PREPROCESSOR:Int = 11
Const wxSCI_F_OPERATOR2:Int = 12
Const wxSCI_F_LABEL:Int = 13
Const wxSCI_F_CONTINUATION:Int = 14

' Lexical states for SCLEX_CSS
Const wxSCI_CSS_DEFAULT:Int = 0
Const wxSCI_CSS_TAG:Int = 1
Const wxSCI_CSS_CLASS:Int = 2
Const wxSCI_CSS_PSEUDOCLASS:Int = 3
Const wxSCI_CSS_UNKNOWN_PSEUDOCLASS:Int = 4
Const wxSCI_CSS_OPERATOR:Int = 5
Const wxSCI_CSS_IDENTIFIER:Int = 6
Const wxSCI_CSS_UNKNOWN_IDENTIFIER:Int = 7
Const wxSCI_CSS_VALUE:Int = 8
Const wxSCI_CSS_COMMENT:Int = 9
Const wxSCI_CSS_ID:Int = 10
Const wxSCI_CSS_IMPORTANT:Int = 11
Const wxSCI_CSS_DIRECTIVE:Int = 12
Const wxSCI_CSS_DOUBLESTRING:Int = 13
Const wxSCI_CSS_SINGLESTRING:Int = 14
Const wxSCI_CSS_IDENTIFIER2:Int = 15
Const wxSCI_CSS_ATTRIBUTE:Int = 16

' Lexical states for SCLEX_POV
Const wxSCI_POV_DEFAULT:Int = 0
Const wxSCI_POV_COMMENT:Int = 1
Const wxSCI_POV_COMMENTLINE:Int = 2
Const wxSCI_POV_NUMBER:Int = 3
Const wxSCI_POV_OPERATOR:Int = 4
Const wxSCI_POV_IDENTIFIER:Int = 5
Const wxSCI_POV_STRING:Int = 6
Const wxSCI_POV_STRINGEOL:Int = 7
Const wxSCI_POV_DIRECTIVE:Int = 8
Const wxSCI_POV_BADDIRECTIVE:Int = 9
Const wxSCI_POV_WORD2:Int = 10
Const wxSCI_POV_WORD3:Int = 11
Const wxSCI_POV_WORD4:Int = 12
Const wxSCI_POV_WORD5:Int = 13
Const wxSCI_POV_WORD6:Int = 14
Const wxSCI_POV_WORD7:Int = 15
Const wxSCI_POV_WORD8:Int = 16

' Lexical states for SCLEX_LOUT
Const wxSCI_LOUT_DEFAULT:Int = 0
Const wxSCI_LOUT_COMMENT:Int = 1
Const wxSCI_LOUT_NUMBER:Int = 2
Const wxSCI_LOUT_WORD:Int = 3
Const wxSCI_LOUT_WORD2:Int = 4
Const wxSCI_LOUT_WORD3:Int = 5
Const wxSCI_LOUT_WORD4:Int = 6
Const wxSCI_LOUT_STRING:Int = 7
Const wxSCI_LOUT_OPERATOR:Int = 8
Const wxSCI_LOUT_IDENTIFIER:Int = 9
Const wxSCI_LOUT_STRINGEOL:Int = 10

' Lexical states for SCLEX_ESCRIPT
Const wxSCI_ESCRIPT_DEFAULT:Int = 0
Const wxSCI_ESCRIPT_COMMENT:Int = 1
Const wxSCI_ESCRIPT_COMMENTLINE:Int = 2
Const wxSCI_ESCRIPT_COMMENTDOC:Int = 3
Const wxSCI_ESCRIPT_NUMBER:Int = 4
Const wxSCI_ESCRIPT_WORD:Int = 5
Const wxSCI_ESCRIPT_STRING:Int = 6
Const wxSCI_ESCRIPT_OPERATOR:Int = 7
Const wxSCI_ESCRIPT_IDENTIFIER:Int = 8
Const wxSCI_ESCRIPT_BRACE:Int = 9
Const wxSCI_ESCRIPT_WORD2:Int = 10
Const wxSCI_ESCRIPT_WORD3:Int = 11

' Lexical states for SCLEX_PS
Const wxSCI_PS_DEFAULT:Int = 0
Const wxSCI_PS_COMMENT:Int = 1
Const wxSCI_PS_DSC_COMMENT:Int = 2
Const wxSCI_PS_DSC_VALUE:Int = 3
Const wxSCI_PS_NUMBER:Int = 4
Const wxSCI_PS_NAME:Int = 5
Const wxSCI_PS_KEYWORD:Int = 6
Const wxSCI_PS_LITERAL:Int = 7
Const wxSCI_PS_IMMEVAL:Int = 8
Const wxSCI_PS_PAREN_ARRAY:Int = 9
Const wxSCI_PS_PAREN_DICT:Int = 10
Const wxSCI_PS_PAREN_PROC:Int = 11
Const wxSCI_PS_TEXT:Int = 12
Const wxSCI_PS_HEXSTRING:Int = 13
Const wxSCI_PS_BASE85STRING:Int = 14
Const wxSCI_PS_BADSTRINGCHAR:Int = 15

' Lexical states for SCLEX_NSIS
Const wxSCI_NSIS_DEFAULT:Int = 0
Const wxSCI_NSIS_COMMENT:Int = 1
Const wxSCI_NSIS_STRINGDQ:Int = 2
Const wxSCI_NSIS_STRINGLQ:Int = 3
Const wxSCI_NSIS_STRINGRQ:Int = 4
Const wxSCI_NSIS_FUNCTION:Int = 5
Const wxSCI_NSIS_VARIABLE:Int = 6
Const wxSCI_NSIS_LABEL:Int = 7
Const wxSCI_NSIS_USERDEFINED:Int = 8
Const wxSCI_NSIS_SECTIONDEF:Int = 9
Const wxSCI_NSIS_SUBSECTIONDEF:Int = 10
Const wxSCI_NSIS_IFDEFINEDEF:Int = 11
Const wxSCI_NSIS_MACRODEF:Int = 12
Const wxSCI_NSIS_STRINGVAR:Int = 13
Const wxSCI_NSIS_NUMBER:Int = 14
Const wxSCI_NSIS_SECTIONGROUP:Int = 15
Const wxSCI_NSIS_PAGEEX:Int = 16
Const wxSCI_NSIS_FUNCTIONDEF:Int = 17
Const wxSCI_NSIS_COMMENTBOX:Int = 18

' Lexical states for SCLEX_MMIXAL
Const wxSCI_MMIXAL_LEADWS:Int = 0
Const wxSCI_MMIXAL_COMMENT:Int = 1
Const wxSCI_MMIXAL_LABEL:Int = 2
Const wxSCI_MMIXAL_OPCODE:Int = 3
Const wxSCI_MMIXAL_OPCODE_PRE:Int = 4
Const wxSCI_MMIXAL_OPCODE_VALID:Int = 5
Const wxSCI_MMIXAL_OPCODE_UNKNOWN:Int = 6
Const wxSCI_MMIXAL_OPCODE_POST:Int = 7
Const wxSCI_MMIXAL_OPERANDS:Int = 8
Const wxSCI_MMIXAL_NUMBER:Int = 9
Const wxSCI_MMIXAL_REF:Int = 10
Const wxSCI_MMIXAL_CHAR:Int = 11
Const wxSCI_MMIXAL_STRING:Int = 12
Const wxSCI_MMIXAL_REGISTER:Int = 13
Const wxSCI_MMIXAL_HEX:Int = 14
Const wxSCI_MMIXAL_OPERATOR:Int = 15
Const wxSCI_MMIXAL_SYMBOL:Int = 16
Const wxSCI_MMIXAL_INCLUDE:Int = 17

' Lexical states for SCLEX_CLW
Const wxSCI_CLW_DEFAULT:Int = 0
Const wxSCI_CLW_LABEL:Int = 1
Const wxSCI_CLW_COMMENT:Int = 2
Const wxSCI_CLW_STRING:Int = 3
Const wxSCI_CLW_USER_IDENTIFIER:Int = 4
Const wxSCI_CLW_INTEGER_CONSTANT:Int = 5
Const wxSCI_CLW_REAL_CONSTANT:Int = 6
Const wxSCI_CLW_PICTURE_STRING:Int = 7
Const wxSCI_CLW_KEYWORD:Int = 8
Const wxSCI_CLW_COMPILER_DIRECTIVE:Int = 9
Const wxSCI_CLW_RUNTIME_EXPRESSIONS:Int = 10
Const wxSCI_CLW_BUILTIN_PROCEDURES_FUNCTION:Int = 11
Const wxSCI_CLW_STRUCTURE_DATA_TYPE:Int = 12
Const wxSCI_CLW_ATTRIBUTE:Int = 13
Const wxSCI_CLW_STANDARD_EQUATE:Int = 14
Const wxSCI_CLW_ERROR:Int = 15
Const wxSCI_CLW_DEPRECATED:Int = 16

' Lexical states for SCLEX_LOT
Const wxSCI_LOT_DEFAULT:Int = 0
Const wxSCI_LOT_HEADER:Int = 1
Const wxSCI_LOT_BREAK:Int = 2
Const wxSCI_LOT_SET:Int = 3
Const wxSCI_LOT_PASS:Int = 4
Const wxSCI_LOT_FAIL:Int = 5
Const wxSCI_LOT_ABORT:Int = 6

' Lexical states for SCLEX_YAML
Const wxSCI_YAML_DEFAULT:Int = 0
Const wxSCI_YAML_COMMENT:Int = 1
Const wxSCI_YAML_IDENTIFIER:Int = 2
Const wxSCI_YAML_KEYWORD:Int = 3
Const wxSCI_YAML_NUMBER:Int = 4
Const wxSCI_YAML_REFERENCE:Int = 5
Const wxSCI_YAML_DOCUMENT:Int = 6
Const wxSCI_YAML_TEXT:Int = 7
Const wxSCI_YAML_ERROR:Int = 8

' Lexical states for SCLEX_TEX
Const wxSCI_TEX_DEFAULT:Int = 0
Const wxSCI_TEX_SPECIAL:Int = 1
Const wxSCI_TEX_GROUP:Int = 2
Const wxSCI_TEX_SYMBOL:Int = 3
Const wxSCI_TEX_COMMAND:Int = 4
Const wxSCI_TEX_TEXT:Int = 5
Const wxSCI_METAPOST_DEFAULT:Int = 0
Const wxSCI_METAPOST_SPECIAL:Int = 1
Const wxSCI_METAPOST_GROUP:Int = 2
Const wxSCI_METAPOST_SYMBOL:Int = 3
Const wxSCI_METAPOST_COMMAND:Int = 4
Const wxSCI_METAPOST_TEXT:Int = 5
Const wxSCI_METAPOST_EXTRA:Int = 6

' Lexical states for SCLEX_ERLANG
Const wxSCI_ERLANG_DEFAULT:Int = 0
Const wxSCI_ERLANG_COMMENT:Int = 1
Const wxSCI_ERLANG_VARIABLE:Int = 2
Const wxSCI_ERLANG_NUMBER:Int = 3
Const wxSCI_ERLANG_KEYWORD:Int = 4
Const wxSCI_ERLANG_STRING:Int = 5
Const wxSCI_ERLANG_OPERATOR:Int = 6
Const wxSCI_ERLANG_ATOM:Int = 7
Const wxSCI_ERLANG_FUNCTION_NAME:Int = 8
Const wxSCI_ERLANG_CHARACTER:Int = 9
Const wxSCI_ERLANG_MACRO:Int = 10
Const wxSCI_ERLANG_RECORD:Int = 11
Const wxSCI_ERLANG_SEPARATOR:Int = 12
Const wxSCI_ERLANG_NODE_NAME:Int = 13
Const wxSCI_ERLANG_UNKNOWN:Int = 31

' Lexical states for SCLEX_MSSQL
Const wxSCI_MSSQL_DEFAULT:Int = 0
Const wxSCI_MSSQL_COMMENT:Int = 1
Const wxSCI_MSSQL_LINE_COMMENT:Int = 2
Const wxSCI_MSSQL_NUMBER:Int = 3
Const wxSCI_MSSQL_STRING:Int = 4
Const wxSCI_MSSQL_OPERATOR:Int = 5
Const wxSCI_MSSQL_IDENTIFIER:Int = 6
Const wxSCI_MSSQL_VARIABLE:Int = 7
Const wxSCI_MSSQL_COLUMN_NAME:Int = 8
Const wxSCI_MSSQL_STATEMENT:Int = 9
Const wxSCI_MSSQL_DATATYPE:Int = 10
Const wxSCI_MSSQL_SYSTABLE:Int = 11
Const wxSCI_MSSQL_GLOBAL_VARIABLE:Int = 12
Const wxSCI_MSSQL_FUNCTION:Int = 13
Const wxSCI_MSSQL_STORED_PROCEDURE:Int = 14
Const wxSCI_MSSQL_DEFAULT_PREF_DATATYPE:Int = 15
Const wxSCI_MSSQL_COLUMN_NAME_2:Int = 16

' Lexical states for SCLEX_VERILOG
Const wxSCI_V_DEFAULT:Int = 0
Const wxSCI_V_COMMENT:Int = 1
Const wxSCI_V_COMMENTLINE:Int = 2
Const wxSCI_V_COMMENTLINEBANG:Int = 3
Const wxSCI_V_NUMBER:Int = 4
Const wxSCI_V_WORD:Int = 5
Const wxSCI_V_STRING:Int = 6
Const wxSCI_V_WORD2:Int = 7
Const wxSCI_V_WORD3:Int = 8
Const wxSCI_V_PREPROCESSOR:Int = 9
Const wxSCI_V_OPERATOR:Int = 10
Const wxSCI_V_IDENTIFIER:Int = 11
Const wxSCI_V_STRINGEOL:Int = 12
Const wxSCI_V_USER:Int = 19

' Lexical states for SCLEX_KIX
Const wxSCI_KIX_DEFAULT:Int = 0
Const wxSCI_KIX_COMMENT:Int = 1
Const wxSCI_KIX_STRING1:Int = 2
Const wxSCI_KIX_STRING2:Int = 3
Const wxSCI_KIX_NUMBER:Int = 4
Const wxSCI_KIX_VAR:Int = 5
Const wxSCI_KIX_MACRO:Int = 6
Const wxSCI_KIX_KEYWORD:Int = 7
Const wxSCI_KIX_FUNCTIONS:Int = 8
Const wxSCI_KIX_OPERATOR:Int = 9
Const wxSCI_KIX_IDENTIFIER:Int = 31

' Lexical states for SCLEX_GUI4CLI
Const wxSCI_GC_DEFAULT:Int = 0
Const wxSCI_GC_COMMENTLINE:Int = 1
Const wxSCI_GC_COMMENTBLOCK:Int = 2
Const wxSCI_GC_GLOBAL:Int = 3
Const wxSCI_GC_EVENT:Int = 4
Const wxSCI_GC_ATTRIBUTE:Int = 5
Const wxSCI_GC_CONTROL:Int = 6
Const wxSCI_GC_COMMAND:Int = 7
Const wxSCI_GC_STRING:Int = 8
Const wxSCI_GC_OPERATOR:Int = 9

' Lexical states for SCLEX_SPECMAN
Const wxSCI_SN_DEFAULT:Int = 0
Const wxSCI_SN_CODE:Int = 1
Const wxSCI_SN_COMMENTLINE:Int = 2
Const wxSCI_SN_COMMENTLINEBANG:Int = 3
Const wxSCI_SN_NUMBER:Int = 4
Const wxSCI_SN_WORD:Int = 5
Const wxSCI_SN_STRING:Int = 6
Const wxSCI_SN_WORD2:Int = 7
Const wxSCI_SN_WORD3:Int = 8
Const wxSCI_SN_PREPROCESSOR:Int = 9
Const wxSCI_SN_OPERATOR:Int = 10
Const wxSCI_SN_IDENTIFIER:Int = 11
Const wxSCI_SN_STRINGEOL:Int = 12
Const wxSCI_SN_REGEXTAG:Int = 13
Const wxSCI_SN_SIGNAL:Int = 14
Const wxSCI_SN_USER:Int = 19

' Lexical states for SCLEX_AU3
Const wxSCI_AU3_DEFAULT:Int = 0
Const wxSCI_AU3_COMMENT:Int = 1
Const wxSCI_AU3_COMMENTBLOCK:Int = 2
Const wxSCI_AU3_NUMBER:Int = 3
Const wxSCI_AU3_FUNCTION:Int = 4
Const wxSCI_AU3_KEYWORD:Int = 5
Const wxSCI_AU3_MACRO:Int = 6
Const wxSCI_AU3_STRING:Int = 7
Const wxSCI_AU3_OPERATOR:Int = 8
Const wxSCI_AU3_VARIABLE:Int = 9
Const wxSCI_AU3_SENT:Int = 10
Const wxSCI_AU3_PREPROCESSOR:Int = 11
Const wxSCI_AU3_SPECIAL:Int = 12
Const wxSCI_AU3_EXPAND:Int = 13
Const wxSCI_AU3_COMOBJ:Int = 14
Const wxSCI_AU3_UDF:Int = 15

' Lexical states for SCLEX_APDL
Const wxSCI_APDL_DEFAULT:Int = 0
Const wxSCI_APDL_COMMENT:Int = 1
Const wxSCI_APDL_COMMENTBLOCK:Int = 2
Const wxSCI_APDL_NUMBER:Int = 3
Const wxSCI_APDL_STRING:Int = 4
Const wxSCI_APDL_OPERATOR:Int = 5
Const wxSCI_APDL_WORD:Int = 6
Const wxSCI_APDL_PROCESSOR:Int = 7
Const wxSCI_APDL_COMMAND:Int = 8
Const wxSCI_APDL_SLASHCOMMAND:Int = 9
Const wxSCI_APDL_STARCOMMAND:Int = 10
Const wxSCI_APDL_ARGUMENT:Int = 11
Const wxSCI_APDL_FUNCTION:Int = 12

' Lexical states for SCLEX_BASH
Const wxSCI_SH_DEFAULT:Int = 0
Const wxSCI_SH_ERROR:Int = 1
Const wxSCI_SH_COMMENTLINE:Int = 2
Const wxSCI_SH_NUMBER:Int = 3
Const wxSCI_SH_WORD:Int = 4
Const wxSCI_SH_STRING:Int = 5
Const wxSCI_SH_CHARACTER:Int = 6
Const wxSCI_SH_OPERATOR:Int = 7
Const wxSCI_SH_IDENTIFIER:Int = 8
Const wxSCI_SH_SCALAR:Int = 9
Const wxSCI_SH_PARAM:Int = 10
Const wxSCI_SH_BACKTICKS:Int = 11
Const wxSCI_SH_HERE_DELIM:Int = 12
Const wxSCI_SH_HERE_Q:Int = 13

' Lexical states for SCLEX_ASN1
Const wxSCI_ASN1_DEFAULT:Int = 0
Const wxSCI_ASN1_COMMENT:Int = 1
Const wxSCI_ASN1_IDENTIFIER:Int = 2
Const wxSCI_ASN1_STRING:Int = 3
Const wxSCI_ASN1_OID:Int = 4
Const wxSCI_ASN1_SCALAR:Int = 5
Const wxSCI_ASN1_KEYWORD:Int = 6
Const wxSCI_ASN1_ATTRIBUTE:Int = 7
Const wxSCI_ASN1_DESCRIPTOR:Int = 8
Const wxSCI_ASN1_TYPE:Int = 9
Const wxSCI_ASN1_OPERATOR:Int = 10

' Lexical states for SCLEX_VHDL
Const wxSCI_VHDL_DEFAULT:Int = 0
Const wxSCI_VHDL_COMMENT:Int = 1
Const wxSCI_VHDL_COMMENTLINEBANG:Int = 2
Const wxSCI_VHDL_NUMBER:Int = 3
Const wxSCI_VHDL_STRING:Int = 4
Const wxSCI_VHDL_OPERATOR:Int = 5
Const wxSCI_VHDL_IDENTIFIER:Int = 6
Const wxSCI_VHDL_STRINGEOL:Int = 7
Const wxSCI_VHDL_KEYWORD:Int = 8
Const wxSCI_VHDL_STDOPERATOR:Int = 9
Const wxSCI_VHDL_ATTRIBUTE:Int = 10
Const wxSCI_VHDL_STDFUNCTION:Int = 11
Const wxSCI_VHDL_STDPACKAGE:Int = 12
Const wxSCI_VHDL_STDTYPE:Int = 13
Const wxSCI_VHDL_USERWORD:Int = 14

' Lexical states for SCLEX_CAML
Const wxSCI_CAML_DEFAULT:Int = 0
Const wxSCI_CAML_IDENTIFIER:Int = 1
Const wxSCI_CAML_TAGNAME:Int = 2
Const wxSCI_CAML_KEYWORD:Int = 3
Const wxSCI_CAML_KEYWORD2:Int = 4
Const wxSCI_CAML_KEYWORD3:Int = 5
Const wxSCI_CAML_LINENUM:Int = 6
Const wxSCI_CAML_OPERATOR:Int = 7
Const wxSCI_CAML_NUMBER:Int = 8
Const wxSCI_CAML_CHAR:Int = 9
Const wxSCI_CAML_STRING:Int = 11
Const wxSCI_CAML_COMMENT:Int = 12
Const wxSCI_CAML_COMMENT1:Int = 13
Const wxSCI_CAML_COMMENT2:Int = 14
Const wxSCI_CAML_COMMENT3:Int = 15

' Lexical states for SCLEX_HASKELL
Const wxSCI_HA_DEFAULT:Int = 0
Const wxSCI_HA_IDENTIFIER:Int = 1
Const wxSCI_HA_KEYWORD:Int = 2
Const wxSCI_HA_NUMBER:Int = 3
Const wxSCI_HA_STRING:Int = 4
Const wxSCI_HA_CHARACTER:Int = 5
Const wxSCI_HA_CLASS:Int = 6
Const wxSCI_HA_MODULE:Int = 7
Const wxSCI_HA_CAPITAL:Int = 8
Const wxSCI_HA_DATA:Int = 9
Const wxSCI_HA_IMPORT:Int = 10
Const wxSCI_HA_OPERATOR:Int = 11
Const wxSCI_HA_INSTANCE:Int = 12
Const wxSCI_HA_COMMENTLINE:Int = 13
Const wxSCI_HA_COMMENTBLOCK:Int = 14
Const wxSCI_HA_COMMENTBLOCK2:Int = 15
Const wxSCI_HA_COMMENTBLOCK3:Int = 16

' Lexical states of SCLEX_TADS3
Const wxSCI_T3_DEFAULT:Int = 0
Const wxSCI_T3_X_DEFAULT:Int = 1
Const wxSCI_T3_PREPROCESSOR:Int = 2
Const wxSCI_T3_BLOCK_COMMENT:Int = 3
Const wxSCI_T3_LINE_COMMENT:Int = 4
Const wxSCI_T3_OPERATOR:Int = 5
Const wxSCI_T3_KEYWORD:Int = 6
Const wxSCI_T3_NUMBER:Int = 7
Const wxSCI_T3_IDENTIFIER:Int = 8
Const wxSCI_T3_S_STRING:Int = 9
Const wxSCI_T3_D_STRING:Int = 10
Const wxSCI_T3_X_STRING:Int = 11
Const wxSCI_T3_LIB_DIRECTIVE:Int = 12
Const wxSCI_T3_MSG_PARAM:Int = 13
Const wxSCI_T3_HTML_TAG:Int = 14
Const wxSCI_T3_HTML_DEFAULT:Int = 15
Const wxSCI_T3_HTML_STRING:Int = 16
Const wxSCI_T3_USER1:Int = 17
Const wxSCI_T3_USER2:Int = 18
Const wxSCI_T3_USER3:Int = 19
Const wxSCI_T3_BRACE:Int = 20

' Lexical states for SCLEX_REBOL
Const wxSCI_REBOL_DEFAULT:Int = 0
Const wxSCI_REBOL_COMMENTLINE:Int = 1
Const wxSCI_REBOL_COMMENTBLOCK:Int = 2
Const wxSCI_REBOL_PREFACE:Int = 3
Const wxSCI_REBOL_OPERATOR:Int = 4
Const wxSCI_REBOL_CHARACTER:Int = 5
Const wxSCI_REBOL_QUOTEDSTRING:Int = 6
Const wxSCI_REBOL_BRACEDSTRING:Int = 7
Const wxSCI_REBOL_NUMBER:Int = 8
Const wxSCI_REBOL_PAIR:Int = 9
Const wxSCI_REBOL_TUPLE:Int = 10
Const wxSCI_REBOL_BINARY:Int = 11
Const wxSCI_REBOL_MONEY:Int = 12
Const wxSCI_REBOL_ISSUE:Int = 13
Const wxSCI_REBOL_TAG:Int = 14
Const wxSCI_REBOL_FILE:Int = 15
Const wxSCI_REBOL_EMAIL:Int = 16
Const wxSCI_REBOL_URL:Int = 17
Const wxSCI_REBOL_DATE:Int = 18
Const wxSCI_REBOL_TIME:Int = 19
Const wxSCI_REBOL_IDENTIFIER:Int = 20
Const wxSCI_REBOL_WORD:Int = 21
Const wxSCI_REBOL_WORD2:Int = 22
Const wxSCI_REBOL_WORD3:Int = 23
Const wxSCI_REBOL_WORD4:Int = 24
Const wxSCI_REBOL_WORD5:Int = 25
Const wxSCI_REBOL_WORD6:Int = 26
Const wxSCI_REBOL_WORD7:Int = 27
Const wxSCI_REBOL_WORD8:Int = 28

' Lexical states for SCLEX_SQL
Const wxSCI_SQL_DEFAULT:Int = 0
Const wxSCI_SQL_COMMENT:Int = 1
Const wxSCI_SQL_COMMENTLINE:Int = 2
Const wxSCI_SQL_COMMENTDOC:Int = 3
Const wxSCI_SQL_NUMBER:Int = 4
Const wxSCI_SQL_WORD:Int = 5
Const wxSCI_SQL_STRING:Int = 6
Const wxSCI_SQL_CHARACTER:Int = 7
Const wxSCI_SQL_SQLPLUS:Int = 8
Const wxSCI_SQL_SQLPLUS_PROMPT:Int = 9
Const wxSCI_SQL_OPERATOR:Int = 10
Const wxSCI_SQL_IDENTIFIER:Int = 11
Const wxSCI_SQL_SQLPLUS_COMMENT:Int = 13
Const wxSCI_SQL_COMMENTLINEDOC:Int = 15
Const wxSCI_SQL_WORD2:Int = 16
Const wxSCI_SQL_COMMENTDOCKEYWORD:Int = 17
Const wxSCI_SQL_COMMENTDOCKEYWORDERROR:Int = 18
Const wxSCI_SQL_USER1:Int = 19
Const wxSCI_SQL_USER2:Int = 20
Const wxSCI_SQL_USER3:Int = 21
Const wxSCI_SQL_USER4:Int = 22
Const wxSCI_SQL_QUOTEDIDENTIFIER:Int = 23

' Lexical states for SCLEX_SMALLTALK
Const wxSCI_ST_DEFAULT:Int = 0
Const wxSCI_ST_STRING:Int = 1
Const wxSCI_ST_NUMBER:Int = 2
Const wxSCI_ST_COMMENT:Int = 3
Const wxSCI_ST_SYMBOL:Int = 4
Const wxSCI_ST_BINARY:Int = 5
Const wxSCI_ST_BOOL:Int = 6
Const wxSCI_ST_SELF:Int = 7
Const wxSCI_ST_SUPER:Int = 8
Const wxSCI_ST_NIL:Int = 9
Const wxSCI_ST_GLOBAL:Int = 10
Const wxSCI_ST_RETURN:Int = 11
Const wxSCI_ST_SPECIAL:Int = 12
Const wxSCI_ST_KWSEND:Int = 13
Const wxSCI_ST_ASSIGN:Int = 14
Const wxSCI_ST_CHARACTER:Int = 15
Const wxSCI_ST_SPEC_SEL:Int = 16

' Lexical states for SCLEX_FLAGSHIP (clipper)
Const wxSCI_FS_DEFAULT:Int = 0
Const wxSCI_FS_COMMENT:Int = 1
Const wxSCI_FS_COMMENTLINE:Int = 2
Const wxSCI_FS_COMMENTDOC:Int = 3
Const wxSCI_FS_COMMENTLINEDOC:Int = 4
Const wxSCI_FS_COMMENTDOCKEYWORD:Int = 5
Const wxSCI_FS_COMMENTDOCKEYWORDERROR:Int = 6
Const wxSCI_FS_KEYWORD:Int = 7
Const wxSCI_FS_KEYWORD2:Int = 8
Const wxSCI_FS_KEYWORD3:Int = 9
Const wxSCI_FS_KEYWORD4:Int = 10
Const wxSCI_FS_NUMBER:Int = 11
Const wxSCI_FS_STRING:Int = 12
Const wxSCI_FS_PREPROCESSOR:Int = 13
Const wxSCI_FS_OPERATOR:Int = 14
Const wxSCI_FS_IDENTIFIER:Int = 15
Const wxSCI_FS_DATE:Int = 16
Const wxSCI_FS_STRINGEOL:Int = 17
Const wxSCI_FS_CONSTANT:Int = 18
Const wxSCI_FS_ASM:Int = 19
Const wxSCI_FS_LABEL:Int = 20
Const wxSCI_FS_ERROR:Int = 21
Const wxSCI_FS_HEXNUMBER:Int = 22
Const wxSCI_FS_BINNUMBER:Int = 23

' Lexical states for SCLEX_CSOUND
Const wxSCI_CSOUND_DEFAULT:Int = 0
Const wxSCI_CSOUND_COMMENT:Int = 1
Const wxSCI_CSOUND_NUMBER:Int = 2
Const wxSCI_CSOUND_OPERATOR:Int = 3
Const wxSCI_CSOUND_INSTR:Int = 4
Const wxSCI_CSOUND_IDENTIFIER:Int = 5
Const wxSCI_CSOUND_OPCODE:Int = 6
Const wxSCI_CSOUND_HEADERSTMT:Int = 7
Const wxSCI_CSOUND_USERKEYWORD:Int = 8
Const wxSCI_CSOUND_COMMENTBLOCK:Int = 9
Const wxSCI_CSOUND_PARAM:Int = 10
Const wxSCI_CSOUND_ARATE_VAR:Int = 11
Const wxSCI_CSOUND_KRATE_VAR:Int = 12
Const wxSCI_CSOUND_IRATE_VAR:Int = 13
Const wxSCI_CSOUND_GLOBAL_VAR:Int = 14
Const wxSCI_CSOUND_STRINGEOL:Int = 15

' Lexical states for SCLEX_INNOSETUP
Const wxSCI_INNO_DEFAULT:Int = 0
Const wxSCI_INNO_COMMENT:Int = 1
Const wxSCI_INNO_KEYWORD:Int = 2
Const wxSCI_INNO_PARAMETER:Int = 3
Const wxSCI_INNO_SECTION:Int = 4
Const wxSCI_INNO_PREPROC:Int = 5
Const wxSCI_INNO_PREPROC_INLINE:Int = 6
Const wxSCI_INNO_COMMENT_PASCAL:Int = 7
Const wxSCI_INNO_KEYWORD_PASCAL:Int = 8
Const wxSCI_INNO_KEYWORD_USER:Int = 9
Const wxSCI_INNO_STRING_DOUBLE:Int = 10
Const wxSCI_INNO_STRING_SINGLE:Int = 11
Const wxSCI_INNO_IDENTIFIER:Int = 12

' Lexical states for SCLEX_OPAL
Const wxSCI_OPAL_SPACE:Int = 0
Const wxSCI_OPAL_COMMENT_BLOCK:Int = 1
Const wxSCI_OPAL_COMMENT_LINE:Int = 2
Const wxSCI_OPAL_INTEGER:Int = 3
Const wxSCI_OPAL_KEYWORD:Int = 4
Const wxSCI_OPAL_SORT:Int = 5
Const wxSCI_OPAL_STRING:Int = 6
Const wxSCI_OPAL_PAR:Int = 7
Const wxSCI_OPAL_BOOL_CONST:Int = 8
Const wxSCI_OPAL_DEFAULT:Int = 32

' Lexical states for SCLEX_SPICE
Const wxSCI_SPICE_DEFAULT:Int = 0
Const wxSCI_SPICE_IDENTIFIER:Int = 1
Const wxSCI_SPICE_KEYWORD:Int = 2
Const wxSCI_SPICE_KEYWORD2:Int = 3
Const wxSCI_SPICE_KEYWORD3:Int = 4
Const wxSCI_SPICE_NUMBER:Int = 5
Const wxSCI_SPICE_DELIMITER:Int = 6
Const wxSCI_SPICE_VALUE:Int = 7
Const wxSCI_SPICE_COMMENTLINE:Int = 8

' Lexical states for SCLEX_CMAKE
Const wxSCI_CMAKE_DEFAULT:Int = 0
Const wxSCI_CMAKE_COMMENT:Int = 1
Const wxSCI_CMAKE_STRINGDQ:Int = 2
Const wxSCI_CMAKE_STRINGLQ:Int = 3
Const wxSCI_CMAKE_STRINGRQ:Int = 4
Const wxSCI_CMAKE_COMMANDS:Int = 5
Const wxSCI_CMAKE_PARAMETERS:Int = 6
Const wxSCI_CMAKE_VARIABLE:Int = 7
Const wxSCI_CMAKE_USERDEFINED:Int = 8
Const wxSCI_CMAKE_WHILEDEF:Int = 9
Const wxSCI_CMAKE_FOREACHDEF:Int = 10
Const wxSCI_CMAKE_IFDEFINEDEF:Int = 11
Const wxSCI_CMAKE_MACRODEF:Int = 12
Const wxSCI_CMAKE_STRINGVAR:Int = 13
Const wxSCI_CMAKE_NUMBER:Int = 14

' Lexical states for SCLEX_GAP
Const wxSCI_GAP_DEFAULT:Int = 0
Const wxSCI_GAP_IDENTIFIER:Int = 1
Const wxSCI_GAP_KEYWORD:Int = 2
Const wxSCI_GAP_KEYWORD2:Int = 3
Const wxSCI_GAP_KEYWORD3:Int = 4
Const wxSCI_GAP_KEYWORD4:Int = 5
Const wxSCI_GAP_STRING:Int = 6
Const wxSCI_GAP_CHAR:Int = 7
Const wxSCI_GAP_OPERATOR:Int = 8
Const wxSCI_GAP_COMMENT:Int = 9
Const wxSCI_GAP_NUMBER:Int = 10
Const wxSCI_GAP_STRINGEOL:Int = 11

' Lexical state for SCLEX_PLM
Const wxSCI_PLM_DEFAULT:Int = 0
Const wxSCI_PLM_COMMENT:Int = 1
Const wxSCI_PLM_STRING:Int = 2
Const wxSCI_PLM_NUMBER:Int = 3
Const wxSCI_PLM_IDENTIFIER:Int = 4
Const wxSCI_PLM_OPERATOR:Int = 5
Const wxSCI_PLM_CONTROL:Int = 6
Const wxSCI_PLM_KEYWORD:Int = 7
Const wxSCI_4GL_DEFAULT:Int = 0
Const wxSCI_4GL_NUMBER:Int = 1
Const wxSCI_4GL_WORD:Int = 2
Const wxSCI_4GL_STRING:Int = 3
Const wxSCI_4GL_CHARACTER:Int = 4
Const wxSCI_4GL_PREPROCESSOR:Int = 5
Const wxSCI_4GL_OPERATOR:Int = 6
Const wxSCI_4GL_IDENTIFIER:Int = 7
Const wxSCI_4GL_BLOCK:Int = 8
Const wxSCI_4GL_END:Int = 9
Const wxSCI_4GL_COMMENT1:Int = 10
Const wxSCI_4GL_COMMENT2:Int = 11
Const wxSCI_4GL_COMMENT3:Int = 12
Const wxSCI_4GL_COMMENT4:Int = 13
Const wxSCI_4GL_COMMENT5:Int = 14
Const wxSCI_4GL_COMMENT6:Int = 15
Const wxSCI_4GL_DEFAULT_:Int = 16
Const wxSCI_4GL_NUMBER_:Int = 17
Const wxSCI_4GL_WORD_:Int = 18
Const wxSCI_4GL_STRING_:Int = 19
Const wxSCI_4GL_CHARACTER_:Int = 20
Const wxSCI_4GL_PREPROCESSOR_:Int = 21
Const wxSCI_4GL_OPERATOR_:Int = 22
Const wxSCI_4GL_IDENTIFIER_:Int = 23
Const wxSCI_4GL_BLOCK_:Int = 24
Const wxSCI_4GL_END_:Int = 25
Const wxSCI_4GL_COMMENT1_:Int = 26
Const wxSCI_4GL_COMMENT2_:Int = 27
Const wxSCI_4GL_COMMENT3_:Int = 28
Const wxSCI_4GL_COMMENT4_:Int = 29
Const wxSCI_4GL_COMMENT5_:Int = 30
Const wxSCI_4GL_COMMENT6_:Int = 31
' //--Autogenerated
