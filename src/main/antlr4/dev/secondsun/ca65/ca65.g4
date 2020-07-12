grammar ca65;

//import ca65directives;

number : INT;

INT : [0-9]+ ;
COMMENT :   ';' .*? '\r'? '\n' -> type(NL) ;
NL: '\r'? '\n';
WS : [ \t\r\n]+ -> skip ;

