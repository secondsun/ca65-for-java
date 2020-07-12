grammar opcodes6502;


number : INT;

WS : [ \t\r\n]+ -> skip ;
INT : [0-9]+ ;
