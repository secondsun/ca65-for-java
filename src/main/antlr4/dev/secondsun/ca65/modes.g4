lexer grammar modes;

COMMENT :  ';' .*? '\r'? ('\n'|EOF)   -> skip;
COMMENT2: '/*' .*? '*/' -> skip ;

TOK_A16: '.A16';
TOK_A8: '.A8';
TOK_ADDR: '.ADDR';
TOK_ADDRSIZE: '.ADDRSIZE';
TOK_ALIGN: '.ALIGN';
TOK_BOOLAND: '.AND' | '&&';
TOK_ASCIIZ: '.ASCIIZ';
TOK_ASIZE: '.ASIZE';
TOK_ASSERT: '.ASSERT';
TOK_AUTOIMPORT: '.AUTOIMPORT';
TOK_BANK: '.BANK';
TOK_BANKBYTE: '.BANKBYTE';
TOK_BANKBYTES: '.BANKBYTES';
TOK_AND: '.BITAND' | '&';
TOK_NOT: '.BITNOT' | '~';
TOK_OR: '.BITOR' | '|';
TOK_XOR: '.BITXOR' | '^';
TOK_BLANK: '.BLANK';
TOK_BSS: '.BSS';
TOK_BYTE: '.BYTE'| '.BYT' ;
TOK_CASE: '.CASE';
TOK_CHARMAP: '.CHARMAP';
TOK_CODE: '.CODE';
TOK_CONCAT: '.CONCAT';
TOK_CONDES: '.CONDES';
TOK_CONST: '.CONST';
TOK_CONSTRUCTOR: '.CONSTRUCTOR';
TOK_CPU: '.CPU';
TOK_DATA: '.DATA';
TOK_DBG: '.DBG';
TOK_DBYT: '.DBYT';
TOK_DEBUGINFO: '.DEBUGINFO';
TOK_DEFINED: '.DEF';
TOK_DEFINE: '.DEFINE' | '.DEFINED';

TOK_DEFINEDMACRO: '.DEFINEDMACRO';
TOK_DELMAC: '.DELMAC' | '.DELMACRO';

TOK_DESTRUCTOR: '.DESTRUCTOR';
TOK_DWORD: '.DWORD';
TOK_ELSE: '.ELSE';
TOK_ELSEIF: '.ELSEIF';
TOK_END: '.END';
TOK_ENDENUM: '.ENDENUM';
TOK_ENDIF: '.ENDIF';
TOK_ENDMACRO: '.ENDMAC' | '.ENDMACRO';

TOK_ENDPROC: '.ENDPROC';
TOK_ENDREP: '.ENDREP' | '.ENDREPEAT';

TOK_ENDSCOPE: '.ENDSCOPE';
TOK_ENDSTRUCT: '.ENDSTRUCT';
TOK_ENDUNION: '.ENDUNION';
TOK_ENUM: '.ENUM';
TOK_ERROR: '.ERROR';
TOK_EXITMACRO: '.EXITMAC' | '.EXITMACRO';

TOK_EXPORT: '.EXPORT';
TOK_EXPORTZP: '.EXPORTZP';
TOK_FARADDR: '.FARADDR';
TOK_FATAL: '.FATAL';
TOK_FEATURE: '.FEATURE';
TOK_FILEOPT: '.FILEOPT' | '.FOPT';
TOK_FORCEIMPORT: '.FORCEIMPORT';
TOK_FORCEWORD: '.FORCEWORD';
TOK_GLOBAL: '.GLOBAL';
TOK_GLOBALZP: '.GLOBALZP';
TOK_HIBYTE: '.HIBYTE';
TOK_HIBYTES: '.HIBYTES';
TOK_HIWORD: '.HIWORD';
TOK_I16: '.I16';
TOK_I8: '.I8';
TOK_MAKEIDENT: '.IDENT';
TOK_IF: '.IF';
TOK_IFBLANK: '.IFBLANK';
TOK_IFCONST: '.IFCONST';
TOK_IFDEF: '.IFDEF';
TOK_IFNBLANK: '.IFNBLANK';
TOK_IFNCONST: '.IFNCONST';
TOK_IFNDEF: '.IFNDEF';
TOK_IFNREF: '.IFNREF';
TOK_IFP02: '.IFP02';
TOK_IFP4510: '.IFP4510';
TOK_IFP816: '.IFP816';
TOK_IFPC02: '.IFPC02';
TOK_IFPSC02: '.IFPSC02';
TOK_IFREF: '.IFREF';
TOK_IMPORT: '.IMPORT';
TOK_IMPORTZP: '.IMPORTZP';
TOK_INCBIN: '.INCBIN';
TOK_INCLUDE: '.INCLUDE';
TOK_INTERRUPTOR: '.INTERRUPTOR';
TOK_ISIZE: '.ISIZE';
TOK_ISMNEMONIC: '.ISMNEM' | '.ISMNEMONIC';

TOK_LEFT: '.LEFT';
TOK_LINECONT: '.LINECONT';
TOK_LIST: '.LIST';
TOK_LISTBYTES: '.LISTBYTES';
TOK_LOBYTE: '.LOBYTE';
TOK_LOBYTES: '.LOBYTES';
TOK_LOCAL: '.LOCAL';
TOK_LOCALCHAR: '.LOCALCHAR';
TOK_LOWORD: '.LOWORD';
TOK_MACRO: '.MAC' | '.MACRO';
TOK_MACPACK: '.MACPACK';
TOK_MATCH: '.MATCH';
TOK_MAX: '.MAX';
TOK_MID: '.MID';
TOK_MIN: '.MIN';
TOK_MOD: '.MOD';
TOK_BOOLNOT: '.NOT' | '!';




TOK_NULL: '.NULL';
TOK_BOOLOR: '.OR' | '||' ;



TOK_ORG: '.ORG';
TOK_OUT: '.OUT';
TOK_P02: '.P02';
TOK_P4510: '.P4510';
TOK_P816: '.P816';
TOK_PAGELENGTH: '.PAGELEN'|'.PAGELENGTH';

TOK_PARAMCOUNT: '.PARAMCOUNT';
TOK_PC02: '.PC02';
TOK_POPCPU: '.POPCPU';
TOK_POPSEG: '.POPSEG';
TOK_PROC: '.PROC';
TOK_PSC02: '.PSC02';
TOK_PUSHCPU: '.PUSHCPU';
TOK_PUSHSEG: '.PUSHSEG';
TOK_REFERENCED: '.REF'|'.REFERENCED';

TOK_RELOC: '.RELOC';
TOK_REPEAT: '.REPEAT';
TOK_RES: '.RES';
TOK_RIGHT: '.RIGHT';
TOK_RODATA: '.RODATA';
TOK_SCOPE: '.SCOPE';
TOK_SEGMENT: '.SEGMENT';
TOK_SET: '.SET';
TOK_SETCPU: '.SETCPU';
TOK_SHL: '.SHL'|'<<';
TOK_SHR: '.SHR' | '>>';



TOK_SIZEOF: '.SIZEOF';
TOK_SMART: '.SMART';
TOK_SPRINTF: '.SPRINTF';
TOK_STRAT: '.STRAT';
TOK_STRING: '.STRING';
TOK_STRLEN: '.STRLEN';
TOK_STRUCT: '.STRUCT';
TOK_TAG: '.TAG';
TOK_TCOUNT: '.TCOUNT';
TOK_TIME: '.TIME';
TOK_UNDEF: '.UNDEF' | '.UNDEFINE';
TOK_UNION: '.UNION';
TOK_VERSION: '.VERSION';
TOK_WARNING: '.WARNING';
TOK_WORD: '.WORD';
TOK_XMATCH: '.XMATCH';
TOK_BOOLXOR: '.XOR';
TOK_ZEROPAGE: '.ZEROPAGE';

TOK_STRCON:  '"' ('\\"'|.)*? '"' ;
//SINGLE_LINE_DIRECTIVE: '.' ('a16'|'a8'|'addr'|'align'|'asciiz'|'assert'|'autoimport'|'bankbytes'|'bss'|'byt'|'byte'|'case'|'charmap'|'code'|'condes'|'constructor'|'data'|'dbyt'|'debuginfo'|'def'|'define'|'defined'|'delmac'|'delmacro'|'destructor'|'dword'|'else'|'elseif'|'end'|'endenum'|'endif'|'endmac'|'endmacro'|'endproc'|'endrep'|'endrepeat'|'endscope'|'endstruct'|'endunion'|'enum'|'error'|'exitmac'|'exitmacro'|'export'|'exportzp'|'faraddr'|'fatal'|'feature'|'fileopt'|'fopt'|'forceimport'|'global'|'globalzp'|'hibytes'|'i16'|'i8'|'if'|'ifblank'|'ifconst'|'ifdef'|'ifnblank'|'ifndef'|'ifnref'|'ifp02'|'ifp816'|'ifpc02'|'ifpsc02'|'ifref'|'import'|'importzp'|'incbin'|'include'|'interruptor'|'linecont'|'list'|'listbytes'|'lobytes'|'local'|'localchar'|'mac'|'macpack'|'macro'|'org'|'out'|'p02'|'p816'|'pagelen'|'pagelength'|'pc02'|'popcpu'|'popseg'|'proc'|'psc02'|'pushcpu'|'pushseg'|'reloc'|'repeat'|'res'|'rodata'|'scope'|'segment'|'set'|'setcpu'|'smart'|'struct'|'tag'|'undef'|'undefine'|'union'|'warning'|'word'|'zeropage') ;
DOT: '.' ;
INT : '-'? [0-9]+ [hH]? | HEX_INT | BINARY_INT;
fragment HEX_INT: '$'[_a-fA-F0-9]([_a-fA-F0-9])*;
fragment BINARY_INT: '%'[_01][_01]*;

TOK_OVERRIDE_ABS : 'A:' ;
TOK_A : 'A' WS;
TOK_OVERRIDE_FAR : 'F:' ;
TOK_S : 'S' WS | 'SP' WS ; //Needs special CPU mode
TOK_X : 'X' WS ;
TOK_Y : 'Y' WS ;
TOK_Z : 'Z' WS ; //Needs special CPU mode
TOK_OVERRIDE_ZP : 'Z:' ;
//TODO Sweet 16 support scanner.c:1215

TOK_NAMESPACE : '::';
TOK_ULABEL : ':' ([-])+| ':' ([+])+;
TOK_ASSIGN : ':=';
TOK_COLON :':';
TOK_COMMA :',';
TOK_HASH :'#';
TOK_LPAREN : '(';
TOK_RPAREN : ')';
TOK_LBRACK : '[';
TOK_RBRACK : ']';
TOK_LCURLY : '{';
TOK_RCURLY : '}';
TOK_LE : '<=';
TOK_NE:'<>';
TOK_LT :'<';
TOK_EQ :'=';
TOK_GE :'>=';
TOK_GT :'>';
TOK_PLUS : '+' ;
TOK_MINUS : '-' ;
TOK_DIV : '/' ;
TOK_MUL : '*' ;
TOK_CHARCON: '\'' . '\'';
TOK_IDENT : [a-zA-Z_]([_a-zA-Z0-9])* ;
TOK_PC: '$';

WS : ( ' ' | '\t' | '\r' | '\n' )+ -> skip ;


mode TOKLIST;
TOK_TOKLIST_NOESCAPE: (~[,){])+;
TOK_TOKLIST_ESCAPE: (~[}])+;
TOK_RCURLY: '}'     -> mode(DEFAULT_MODE) ;