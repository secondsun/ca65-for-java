grammar ca65_2;

import tokens;
//options { tokenVocab=tokens; }

file : (statement)* EOF;
statement : ulabelStatement|   assignmentExpression   | labelDefinition | symbolExpression | pseudo;

pseudo: a16Expr | a8Expr | addrExpression  | alignExpression | asciizExpression | assertExpression | autoImportExpression
        | bankBytesExpression | bssExpr | byteExpr| caseExpr | charMapExpr | codeExpr |conDesExpr | constructorExpr | dataExpr
        | dbgExpr | dbytExpr | debugInfoExpr | defineExpr | delMacExpression | destructorExpression | dwordExpression |conditionalExpression
        | endExpr | endProcExpr | endScopeExpr | enumExpr | errorExpr | exitMacroExp | exportExpr | exportZPExpr | farAddrExpr
        | fatalExpr | featureExpr | forceImportExpr | globalExpr | globalZPExpr | hiBytesExpr | i16Expr | i8Expr | importExpr
        | importZPExpr | incBinExpr | includeExpr | interruptorExpr | lineContPseudo | listPseudo | listBytesPseudo
        | loBytesPseudo | localPseudo | localCharPseudo | macPackPseudo | macroPseudo | nullPseudo | orgPseudo | outPseudo
        | p02Pseudo | p816Pseudo | p4510Pseudo | pageLengthPseudo | pc02Pseudo | popCPUPseudo | popSegPseudo | procPseudo
        | psc02Pseudo | pushCPUPseudo | relocPseudo | pusSegPseudo| relocPseudo | repeatPseudo | resPseudo | roDataPseudo
        | scopePseudo | segmentPseudo | setCpuPseudo | smartPseudo | structPseudo | tagPseudo | unionPseudo | warningPseudo | wordPseudo | zeroPagePseudo;



labelDefinition: TOK_IDENT TOK_COLON ;
assignmentExpression: symbolExpression (TOK_EQ | TOK_ASSIGN) expr0;
setExpression  :symbolExpression TOK_SET constExpr;
symbolExpression: (TOK_IDENT TOK_NAMESPACE)*? TOK_IDENT;
identifierStatement: TOK_IDENT;//todo Check for instruction, macro, etc (main.c:685)
ulabelStatement: TOK_COLON;


/*
pseudoinstruction definitions*/
a16Expr: TOK_A16;
a8Expr: TOK_A8;
addrExpression: TOK_ADDR  expr0 ;
addrSizeExpression: TOK_ADDRSIZE TOK_LPAREN symbolExpression TOK_RPAREN;
alignExpression: TOK_ALIGN literalExpression (TOK_COMMA literalExpression)*?;
asciizExpression: TOK_ASCIIZ TOK_STRCON;
asizeExpr:TOK_ASIZE;
assertExpression : TOK_ASSERT expr0 TOK_COMMA TOK_IDENT;
autoImportExpression: TOK_AUTOIMPORT boolOption;
bankBytesExpression: TOK_BANKBYTES expr0;
bssExpr: TOK_BSS;
byteExpr: TOK_BYTE (expr0 | TOK_STRCON) (TOK_COMMA (expr0 | TOK_STRCON))*?;
caseExpr: TOK_CASE boolOption;
charMapExpr: TOK_CHARMAP literalExpression (TOK_COMMA literalExpression)*?;
codeExpr : TOK_CODE;
conDesExpr: TOK_CONDES TOK_IDENT TOK_COMMA (TOK_IDENT | expr0) (TOK_COMMA literalExpression)?;
constructorExpr: TOK_CONSTRUCTOR TOK_IDENT (TOK_COMMA literalExpression)?;
dataExpr: TOK_DATA;
dbgExpr: TOK_DBG TOK_IDENT;
dbytExpr: TOK_DBYT expr0 (TOK_COMMA expr0)*?;
debugInfoExpr: TOK_DEBUGINFO boolOption;
defineExpr:TOK_DEFINE macroDefDefineStyle;
delMacExpression: TOK_DELMAC TOK_IDENT;
destructorExpression : TOK_DESTRUCTOR TOK_IDENT (TOK_COMMA literalExpression)?;
dwordExpression: TOK_DWORD expr0 (TOK_COMMA expr0)*;
endExpr: TOK_END;
endProcExpr: TOK_ENDPROC;
endScopeExpr: TOK_ENDSCOPE;
enumExpr : TOK_ENUM (TOK_IDENT)?  enumBody TOK_ENDENUM '\n'? ;
errorExpr: TOK_ERROR TOK_STRING;
exitMacroExp: TOK_EXITMAC;
exportExpr: TOK_EXPORT TOK_IDENT addresssSize? exportAssignment? (TOK_COMMA TOK_IDENT addresssSize? exportAssignment?)*;
exportZPExpr: TOK_EXPORTZP TOK_IDENT addresssSize? exportAssignment? (TOK_COMMA TOK_IDENT addresssSize? exportAssignment?)*;
farAddrExpr: TOK_FARADDR expr0 (TOK_COMMA expr0)*;
fatalExpr: TOK_FATAL TOK_STRCON;
featureExpr: TOK_FEATURE TOK_IDENT (TOK_COMMA TOK_IDENT)*;
foptExpr: TOK_FILEOPT TOK_IDENT TOK_COMMA TOK_STRCON;
forceImportExpr: TOK_FORCEIMPORT TOK_IDENT (TOK_COMMA TOK_IDENT)*;
globalExpr: TOK_GLOBAL  TOK_IDENT (TOK_COMMA TOK_IDENT)*;
globalZPExpr:TOK_GLOBALZP TOK_IDENT (TOK_COMMA TOK_IDENT)*;
hiBytesExpr: TOK_HIBYTES expr0 (TOK_COMMA expr0)*;
i16Expr: TOK_I16;
i8Expr: TOK_I8;
importExpr: TOK_IMPORT TOK_IDENT addresssSize? exportAssignment? (TOK_COMMA TOK_IDENT addresssSize? exportAssignment?)*;
importZPExpr: TOK_IMPORTZP TOK_IDENT addresssSize? exportAssignment? (TOK_COMMA TOK_IDENT addresssSize? exportAssignment?)*;
incBinExpr: TOK_INCBIN TOK_STRCON (TOK_COMMA number (TOK_COMMA number)?)?;
includeExpr: TOK_INCLUDE TOK_STRCON;
interruptorExpr: TOK_INTERRUPTOR TOK_IDENT (TOK_COMMA expr0)?;
lineContPseudo: TOK_LINECONT boolOption;
listPseudo: TOK_LIST boolOption;
listBytesPseudo: TOK_LISTBYTES (number | TOK_IDENT);
loBytesPseudo: TOK_LOBYTES expr0 (TOK_COMMA expr0)*;
localPseudo: TOK_LOCAL TOK_IDENT;
localCharPseudo:TOK_LOCALCHAR TOK_CHARCON;
macPackPseudo: TOK_MACPACK TOK_IDENT;
macroPseudo:TOK_MACRO TOK_IDENT macroDefArgs macroBody TOK_ENDMACRO;
nullPseudo: TOK_NULL;
orgPseudo: TOK_ORG expr0;
outPseudo: TOK_OUT TOK_STRCON;
p02Pseudo:TOK_P02;
p4510Pseudo: TOK_P4510;
p816Pseudo: TOK_P816;
pageLengthPseudo:TOK_PAGELENGTH (number|TOK_IDENT);
pc02Pseudo: TOK_PC02;
popCPUPseudo: TOK_POPCPU;
popSegPseudo: TOK_POPSEG;
procPseudo: TOK_PROC TOK_IDENT? addresssSize? statement* TOK_ENDPROC;
psc02Pseudo: TOK_PSC02;
pushCPUPseudo: TOK_PUSHCPU;
pusSegPseudo: TOK_PUSHSEG;
relocPseudo: TOK_RELOC;
repeatPseudo: TOK_REPEAT expr0 (TOK_COMMA TOK_IDENT)? statement* TOK_ENDREP;
resPseudo: TOK_RES expr0 (TOK_COMMA expr0);
roDataPseudo: TOK_RODATA;
scopePseudo: TOK_SCOPE TOK_IDENT? addresssSize? statement* TOK_ENDSCOPE;
segmentPseudo: TOK_SEGMENT TOK_STRCON addresssSize?;
setCpuPseudo: TOK_SETCPU TOK_STRCON;
smartPseudo: TOK_SMART boolOption;
structPseudo: TOK_STRUCT TOK_IDENT?  structBody TOK_ENDSTRUCT;
tagPseudo: TOK_TAG symbolExpression;
unionPseudo: TOK_UNION  TOK_IDENT?  structBody TOK_ENDUNION;
warningPseudo: TOK_WARNING TOK_STRCON;
wordPseudo: TOK_WORD expr0 (TOK_COMMA expr0)*;
zeroPagePseudo:TOK_ZEROPAGE;
//conditionals
conditionalExpression: ifBegin conditionalBody (else conditionalBody)* TOK_ENDIF;
ifBegin : ( conIf booleanExpr )  | noConIf;
conIf: TOK_IF | TOK_IFCONST | TOK_IFDEF | TOK_IFNBLANK | TOK_IFNCONST | TOK_IFNDEF | TOK_IFNREF  | TOK_IFREF | TOK_IFBLANK;
noConIf: TOK_IFP02 | TOK_IFP4510 | TOK_IFP816 | TOK_IFPC02 | TOK_IFPSC02;
else: TOK_ELSE | TOK_ELSEIF booleanExpr;
conditionalBody: statement*;

//Helpers
boolOption : (TOK_PLUS | TOK_MINUS | TOK_IDENT);

macroDefDefineStyle: TOK_IDENT TOK_LPAREN macroDefArgs TOK_RPAREN singleLineMarcoBody;
macroDefArgs: TOK_IDENT (TOK_COMMA TOK_IDENT)*?;
singleLineMarcoBody: statement + '\n';
macroBody: statement*;

enumBody : symbolDeclaration (symbolDeclaration)*;
symbolDeclaration : label assignment? '\n'? ;//I don't know WHY it needs the newline...
label : TOK_IDENT ;
assignment : (TOK_EQ (number|label));
number : INT | TOK_CHARCON;


addresssSize:TOK_COLON TOK_IDENT;
exportAssignment: (TOK_EQ | TOK_ASSIGN) expr0;

structBody: (TOK_IDENT? storageAllocator)*;
storageAllocator: (TOK_BYTE multiplier?| TOK_DBYT multiplier?| TOK_WORD multiplier?| TOK_ADDR multiplier?| TOK_FARADDR multiplier?| TOK_DWORD multiplier? | resPseudo multiplier?| orgPseudo multiplier? | tagPseudo multiplier?| structPseudo | TOK_UNION | conditionalExpression);
multiplier: expr0;

//--- OLD stuff review
expr0 : boolnotExpr | expr1 | TOK_IDENT|TOK_STRCON ;
expr1 : expr2 (TOK_BOOLOR expr2)*?/*''*/;
expr2 : booleanExpr ((TOK_BOOLAND | TOK_BOOLXOR) booleanExpr )*? /*''*/;
booleanExpr: simpleExpr (comparisonToken simpleExpr)*?/*''*/;
simpleExpr: term ((TOK_PLUS | TOK_MINUS | TOK_OR) term)*?/*''*/;
term: factor ((TOK_MUL | TOK_DIV | TOK_MOD | TOK_AND | TOK_XOR | TOK_SHL | TOK_SHR) factor)*?/*''*/;
factor: matchExpression | literalExpression | symbolExpression  | unnamedLabelExpression | TOK_PLUS factor | negateFactor | logicalNegateFactor | genCurrentPc  | loByteFactor | hiByteFactor
     |  bankByteFactor |  TOK_LPAREN expr0 TOK_RPAREN |  bankExpression |  bankByteExpression | addrSizeExpression
     | asizeExpr  | blankExpr |  constExpr| cpuExpr | definedExpr | definedMacroExpr | hibyteExpr | hiWordExpr |isMnemonicExpression
     | iSizeExpr | loByteExpr | loWordExpr  |  maxExpr ;//| TOK_MIN | TOK_REFERENCED | TOK_SIZEOF | TOK_STRAT | TOK_STRLEN | TOK_TCOUNT | TOK_TIME | TOK_VERSION | TOK_XMATCH |;// '' ;

maxExpr: TOK_MAX;
matchExpression: TOK_MATCH TOK_MATCHBODY;

TOK_MATCHBODY :  '4vkdsmfd;plkmvflkmdvflkm';//TOK_LPAREN (WS* (TOK_LCURLY (~[}])+ TOK_RCURLY) | ((~[,)])+)  WS*) TOK_COMMA (WS* (TOK_LCURLY (~[}])+ TOK_RCURLY) | ((~[,)])+)  WS*) TOK_RPAREN;

comparisonToken: TOK_EQ |TOK_NE | TOK_LT |TOK_GT |TOK_LE | TOK_GE;

loWordExpr: TOK_LOWORD function;
loByteExpr: TOK_LOBYTE function;
iSizeExpr:TOK_ISIZE;
isMnemonicExpression: TOK_ISMNEMONIC TOK_LPAREN symbolExpression TOK_RPAREN;
hiWordExpr: TOK_HIWORD function;
hibyteExpr: TOK_HIBYTE function;
definedMacroExpr: TOK_DEFINEDMACRO TOK_LPAREN symbolExpression TOK_RPAREN;
definedExpr: TOK_DEFINED TOK_LPAREN symbolExpression TOK_RPAREN;
cpuExpr: TOK_CPU;
constExpr:TOK_CONST function | TOK_CONST expr0;
blankExpr: TOK_BLANK TOK_LPAREN blankArgs TOK_RPAREN;
blankArgs: TOK_LCURLY TOK_IDENT TOK_RCURLY | TOK_IDENT;

bankExpression: TOK_BANK function;
bankByteExpression: TOK_BANKBYTE function;
function: TOK_LPAREN expr0 TOK_RPAREN;
loByteFactor: TOK_LT factor;
hiByteFactor: TOK_GT factor;
genCurrentPc: (TOK_MUL | TOK_PC) ;
bankByteFactor: TOK_XOR factor;
logicalNegateFactor: TOK_NOT factor;

negateFactor: TOK_MINUS factor;
unnamedLabelExpression: TOK_ULABEL;
literalExpression : (INT | TOK_CHARCON) ;
boolnotExpr : TOK_BOOLNOT expr0 ;

