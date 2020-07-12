grammar ca65;

//import ca65directives;

number : INT;

INT : [0-9]+ ;
COMMENT :   ';' .*? '\r'? '\n' -> skip ;
WS : [ \t\r\n]+ -> skip ;

