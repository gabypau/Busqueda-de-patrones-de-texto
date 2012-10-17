package validardirecciones;
import static validardirecciones.Palabra.*;
%%
%class Validar2
%type Palabras
WHITE=[ \t\r\n]
%{
public String Tipo;
%}
%%

([A-Za-z0-9]*([-|_|.]?)[A-Za-z0-9]*@[a-z][a-z]*.com|[A-Za-z0-9]*@[a-z][a-z]*.com.es|[A-Za-z0-9]*@[a-z][a-z]*.com.cl|[A-Za-z0-9]*@[a-z][a-z]*.com.arg) {Tipo=yytext(); return correo_valido;}
([A-Za-z0-9]*([-|_|.]?)[A-Za-z0-9]*@[a-z][a-z]*.es) {Tipo=yytext(); return correo_valido;}
([A-Za-z0-9]*([-|_|.]?)[A-Za-z0-9]*@[a-z][a-z]*.net|[A-Za-z0-9]*@[a-z][a-z]*.net.es|[A-Za-z0-9]*@[a-z][a-z]*.net.ec|[A-Za-z0-9]*@[a-z][a-z]*.net.cl|[A-Za-z0-9]*@[a-z][a-z]*.net.arg) {Tipo=yytext(); return correo_valido;}
([A-Za-z0-9]*([-|_|.]?)[A-Za-z0-9]*@[a-z][a-z]*.edu.com.ec|[A-Za-z0-9]*@[a-z][a-z]*.edu.com.cl) {Tipo=yytext(); return correo_valido;}
([A-Za-z0-9]*([-|_|.]?)[A-Za-z0-9]*@[a-z][a-z]*.info.com.es|[A-Za-z0-9]*@[a-z][a-z]*.info.com.cl|[A-Za-z0-9]*@[a-z][a-z]*.info.com.ec|[A-Za-z0-9]*@[a-z][a-z]*.info.com.arg) {Tipo=yytext(); return correo_valido;}
([A-Za-z0-9]*([-|_|.]?)[A-Za-z0-9]*@[a-z][a-z]*.org.com.ec|[A-Za-z0-9]*@[a-z][a-z]*.org.com.es|[A-Za-z0-9]*@[a-z][a-z]*.org.biz|[A-Za-z0-9]*@[a-z][a-z]*.org.net|[A-Za-z0-9]*@[a-z][a-z]*.org.fin.ec) {Tipo=yytext(); return correo_valido;}
([A-Za-z0-9]*([-|_|.]?)[A-Za-z0-9]*@[a-z][a-z]*.biz|[A-Za-z0-9]*@[a-z][a-z]*.biz.com|[A-Za-z0-9]*@[a-z][a-z]*.biz.net|[A-Za-z0-9]*@[a-z][a-z]*.biz.ec|[A-Za-z0-9]*@[a-z][a-z]*.biz.es) {Tipo=yytext(); return correo_valido;}
([A-Za-z0-9]*([-|_|.]?)[A-Za-z0-9]*@[a-z][a-z]*.gob.fin.ec|[A-Za-z0-9]*@[a-z][a-z]*.gob.fin.es) {Tipo=yytext(); return correo_valido;}
([A-Za-z0-9]*([-|_|.]?)[A-Za-z0-9]*@[a-z][a-z]*.edu.ec) {Tipo=yytext(); return correo_valido;}

....*|,,,+ {return ERROR;}

