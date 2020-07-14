grammar ca65;

file: line* ;
line: number|directive|label ':' ;

directive: multiline_directive | SINGLE_LINE_DIRECTIVE arguments ;
multiline_directive: enum_directive ;
enum_directive : '.enum' (ID)?  enum_body '.endenum' ;
enum_body : symbol_declaration (symbol_declaration)*? ;
symbol_declaration : label assignment? ;
assignment : ('=' (number|label));
arguments : argument (argument)*? ;
argument : ID|STRING ;
label : ID ;
number : INT ;



STRING:  '"' ('\\"'|.)*? '"' ;
SINGLE_LINE_DIRECTIVE: '.' ('a16'|'a8'|'addr'|'align'|'asciiz'|'assert'|'autoimport'|'bankbytes'|'bss'|'byt'|'byte'|'case'|'charmap'|'code'|'condes'|'constructor'|'data'|'dbyt'|'debuginfo'|'def'|'define'|'defined'|'delmac'|'delmacro'|'destructor'|'dword'|'else'|'elseif'|'end'|'endenum'|'endif'|'endmac'|'endmacro'|'endproc'|'endrep'|'endrepeat'|'endscope'|'endstruct'|'endunion'|'enum'|'error'|'exitmac'|'exitmacro'|'export'|'exportzp'|'faraddr'|'fatal'|'feature'|'fileopt'|'fopt'|'forceimport'|'global'|'globalzp'|'hibytes'|'i16'|'i8'|'if'|'ifblank'|'ifconst'|'ifdef'|'ifnblank'|'ifndef'|'ifnref'|'ifp02'|'ifp816'|'ifpc02'|'ifpsc02'|'ifref'|'import'|'importzp'|'incbin'|'include'|'interruptor'|'linecont'|'list'|'listbytes'|'lobytes'|'local'|'localchar'|'mac'|'macpack'|'macro'|'org'|'out'|'p02'|'p816'|'pagelen'|'pagelength'|'pc02'|'popcpu'|'popseg'|'proc'|'psc02'|'pushcpu'|'pushseg'|'reloc'|'repeat'|'res'|'rodata'|'scope'|'segment'|'set'|'setcpu'|'smart'|'struct'|'tag'|'undef'|'undefine'|'union'|'warning'|'word'|'zeropage') ;
DOT: '.' ;
INT : '-'? [0-9]+ [hH]? | HEX_INT ;
fragment HEX_INT: '$'[_a-fA-F0-9]+;
fragment BINARY_INT: '%'[_01]+;
ID : [a-zA-Z_][_a-zA-Z0-9]+ ;
COMMENT :   ';' .*? '\r'? '\n' -> skip ;
WS : ( ' ' | '\t' | '\r' | '\n' )+ -> skip ;
