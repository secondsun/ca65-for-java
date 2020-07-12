grammar ca65;

//import ca65directives;

 

number : INT;

INT : [0-9]+ ;
WS : [ \t\r\n]+ -> skip ;

