grammar ca65directives;


number : INT;

WS : [ \t\r\n]+ -> skip ;
INT : [0-9]+ ;
