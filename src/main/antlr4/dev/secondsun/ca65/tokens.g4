lexer grammar tokens;

COMMENT :  ';' .*? '\r'? ('\n'|EOF)   -> skip;
COMMENT2: '/*' .*? '*/' -> skip ;

TOK_A16: '.' A '16';
TOK_A8: '.' A '8';
TOK_ADDR: '.' A D D R;
TOK_ADDRSIZE: '.' A D D R S I Z E ;
TOK_ALIGN: '.' A L I G N;
TOK_BOOLAND: '.' A N D  | '&&';
TOK_ASCIIZ: '.'A S C I I Z ;
TOK_ASIZE: '.' A S I Z E;
TOK_ASSERT: '.' A S S E R T;
TOK_AUTOIMPORT: '.' A U T O I  M P O R T;
TOK_BANK: '.' B A N K;
TOK_BANKBYTE: '.' B A N K B Y T E;
TOK_BANKBYTES: '.' B A N K B Y T E S;
TOK_AND: '.' B I T A N D | '&';
TOK_NOT: '.' B I T N O T | '~';
TOK_OR: ('.' B I T O R) | '|';
TOK_XOR: '.' B I T X O R | '^';
TOK_BLANK: '.' B L A N K;
TOK_BSS: '.' B S S;
TOK_BYTE: ('.' B Y T E) | '.' ( B Y T)  ;
TOK_CASE: '.' C A S E;
TOK_CHARMAP: '.' C H A R M A P;
TOK_CODE: '.' C O D E;
TOK_CONCAT: '.' C O N C A T;
TOK_CONDES: '.' C O N D E S;
TOK_CONST: '.' C O N S T;
TOK_CONSTRUCTOR: '.' C O N S T R U C T O R ;
TOK_CPU: '.' C P U;
TOK_DATA: '.' D A T A;
TOK_DBG: '.' D B G;
TOK_DBYT: '.' D B Y T;
TOK_DEBUGINFO: '.' D E B U G I N F O;
TOK_DEFINED: ('.' D E F) | '.' ( D E F I N E D) ;
TOK_DEFINE: (('.' D E F I N E) | '.' ( D E F) );

TOK_DEFINEDMACRO: '.' D E F I N E D M A C R O;
TOK_DELMAC: ('.' D E L M A C) | '.' ( D E L M A C R O) ;

TOK_DESTRUCTOR: '.' D E S T R U C T O R;
TOK_DWORD: '.' D W O R D;
TOK_ELSE: '.' E L S E;
TOK_ELSEIF: '.' E L S E I F;
TOK_END: '.' E N D;
TOK_ENDENUM: '.' E N D E N U M;
TOK_ENDIF: '.' E N D I F;
TOK_ENDMACRO: ('.' E N D M A C) | '.' ( E N D M A C R O) ;

TOK_ENDPROC: '.' E N D P R O C;
TOK_ENDREP: ('.' E N D R E P) | '.' ( E N D R E P E A T) ;

TOK_ENDSCOPE: '.' E N D S C O P E;
TOK_ENDSTRUCT: '.' E N D S T R U C T;
TOK_ENDUNION: '.' E N D U N I O N;
TOK_ENUM: '.' E N U M;
TOK_ERROR: '.' E R R O R;
TOK_EXITMACRO: ('.' E X I T M A C) | '.' ( E X I T M A C R O) ;

TOK_EXPORT: '.' E X P O R T;
TOK_EXPORTZP: '.' E X P O R T Z P;
TOK_FARADDR: '.' F A R A D D R;
TOK_FATAL: '.' F A T A L;
TOK_FEATURE: '.' F E A T U R E;
TOK_FILEOPT: ('.' F I L E O P T) | '.' ( F O P T) ;
TOK_FORCEIMPORT: '.' F O R C E I M P O R T ;
TOK_FORCEWORD: '.' F O R C E W O R D;
TOK_GLOBAL: '.' G L O B A L;
TOK_GLOBALZP: '.' G L O B A L Z P;
TOK_HIBYTE: '.' H I B Y T E;
TOK_HIBYTES: '.' H I B Y T E S;
TOK_HIWORD: '.' H I W O R D;
TOK_I16: '.' I '16';
TOK_I8: '.' I '8';
TOK_MAKEIDENT: '.' I D E N T;
TOK_IF: '.' I F;
TOK_IFBLANK: '.' I F B L A N K;
TOK_IFCONST: '.' I F C O N S T;
TOK_IFDEF: '.' I F D E F;
TOK_IFNBLANK: '.' I F N B L A N K;
TOK_IFNCONST: '.' I F N C O N S T;
TOK_IFNDEF: '.' I F N D E F;
TOK_IFNREF: '.' I F N R E F;
TOK_IFP02: '.' I F P '02';
TOK_IFP4510: '.' I F P '4510';
TOK_IFP816: '.' I F P '816';
TOK_IFPC02: '.' I F P C '02';
TOK_IFPSC02: '.' I F P S C '02';
TOK_IFREF: '.' I F R E F;
TOK_IMPORT: '.' I M P O R T;
TOK_IMPORTZP: '.' I M P O R T Z P;
TOK_INCBIN: '.' I N C B I N;
TOK_INCLUDE: '.' I N C L U D E;
TOK_INTERRUPTOR: '.' I N T E R R U P T O R;
TOK_ISIZE: '.' I S I Z E;
TOK_ISMNEMONIC: ('.' I S M N E M) | '.' ( I S M N E M O N I C) ;

TOK_LEFT: '.' L E F T;
TOK_LINECONT: '.' L I N E C O N T;
TOK_LIST: '.' L I S T;
TOK_LISTBYTES: '.' L I S T B Y T E S;
TOK_LOBYTE: '.' L O B Y T E;
TOK_LOBYTES: '.' L O B Y T E S;
TOK_LOCAL: '.' L O C A L;
TOK_LOCALCHAR: '.' L O C A L C H A R;
TOK_LOWORD: '.' L O W O R D;
TOK_MACRO: ('.' M A C) | '.' ( M A C R O) ;
TOK_MACPACK: '.' M A C P A C K;
TOK_MATCH: '.' M A T C H;
TOK_MAX: '.' M A X;
TOK_MID: '.' M I D;
TOK_MIN: '.' M I N;
TOK_MOD: '.' M O D;
TOK_BOOLNOT: ('.' N O T) | '!';




TOK_NULL: '.' N U L L;
TOK_BOOLOR: ('.' O R) | '||' ;



TOK_ORG: '.' O R G;
TOK_OUT: '.' O U T;
TOK_P02: '.' P '02';
TOK_P4510: '.' P '4510';
TOK_P816: '.' P '816';
TOK_PAGELENGTH: ('.' P A G E L E N) |('.' P A G E L E N G T H);

TOK_PARAMCOUNT: '.' P A R A M C O U N T;
TOK_PC02: '.' P C '02';
TOK_POPCPU: '.' P O P C P U;
TOK_POPSEG: '.' P O P S E G;
TOK_PROC: '.' P R O C;
TOK_PSC02: '.' P S C '02';
TOK_PUSHCPU: '.' P U S H C P U;
TOK_PUSHSEG: '.' P U S H S E G;
TOK_REFERENCED: ('.' R E F)|('.' R E F E R E N C E D);

TOK_RELOC: '.' R E L O C;
TOK_REPEAT: '.' R E P E A T;
TOK_RES: '.' R E S;
TOK_RIGHT: '.' R I G H T;
TOK_RODATA: '.' R O D A T A;
TOK_SCOPE: '.' S C O P E;
TOK_SEGMENT: '.' S E G M E N T;
TOK_SET: '.' S E T;
TOK_SETCPU: '.' S E T C P U;
TOK_SHL: ('.' S H L) |'<<';
TOK_SHR: ('.' S H R) | '>>';



TOK_SIZEOF: '.' S I Z E O F;
TOK_SMART: '.' S M A R T;
TOK_SPRINTF: '.' S P R I N T F;
TOK_STRAT: '.' S T R A T;
TOK_STRING: '.' S T R I N G;
TOK_STRLEN: '.' S T R L E N;
TOK_STRUCT: '.' S T R U C T;
TOK_TAG: '.' T A G;
TOK_TCOUNT: '.' T C O U N T;
TOK_TIME: '.' T I M E;
TOK_UNDEF: ('.' U N D E F) | '.' ( U N D E F I N E) ;
TOK_UNION: '.' U N I O N;
TOK_VERSION: '.' V E R S I O N;
TOK_WARNING: '.' W A R N I N G;
TOK_WORD: '.' W O R D;
TOK_XMATCH: '.' X M A T C H;
TOK_BOOLXOR: '.' X O R;
TOK_ZEROPAGE: '.' Z E R O P A G E;

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


TOK_MATCHBODY :  '4vkdsmfd;plkmvflkmdvflkm';//TOK_LPAREN (WS* (TOK_LCURLY (~[}])+ TOK_RCURLY) | ((~[,)])+)  WS*) TOK_COMMA (WS* (TOK_LCURLY (~[}])+ TOK_RCURLY) | ((~[,)])+)  WS*) TOK_RPAREN;
//--- modes

fragment A : [aA]; // match either an 'a' or 'A'
fragment B : [bB];
fragment C : [cC];
fragment D : [dD];
fragment E : [eE];
fragment F : [fF];
fragment G : [gG];
fragment H : [hH];
fragment I : [iI];
fragment J : [jJ];
fragment K : [kK];
fragment L : [lL];
fragment M : [mM];
fragment N : [nN];
fragment O : [oO];
fragment P : [pP];
fragment Q : [qQ];
fragment R : [rR];
fragment S : [sS];
fragment T : [tT];
fragment U : [uU];
fragment V : [vV];
fragment W : [wW];
fragment X : [xX];
fragment Y : [yY];
fragment Z : [zZ];