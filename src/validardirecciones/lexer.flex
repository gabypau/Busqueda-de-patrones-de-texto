package validardirecciones;
import static validardirecciones.Palabra.*;
%%
%class Validar
%type Palabras
L=([0-9 ]? [A-Za-z]*)*( [A-Z][a-z ]*)* [0-9]+[A-Z]?-[0-9]+[A-Z]?

WHITE=[ \t\r\n]
%{
public String Tipo;
%}
%%

{L} {Tipo=yytext(); return Valida;}
 .*|,,,+ {return ERROR;}
