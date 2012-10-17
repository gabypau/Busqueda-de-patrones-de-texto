/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package validardirecciones;

import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Ejecutor {
    public static void main(String []args){
    //    try {
            String path="C:/Users/CESAR/Desktop/ExRegVcVd/src/validardirecciones/lexer.flex";
            generarTipo(path);
//            analizador.Analizador an=new analizador.Analizador(new StringReader("luis"));
//            System.out.println(an.yylex());
   //     } catch (Exception ex) {
   //         System.out.println("ERROR PANA");
            
       //} }
    }

    private static void generarTipo(String path) {
        File archivo=new File(path);
        JFlex.Main.generate(archivo);
    }
    
//    public String genera(String cadena){
//        String salida=null;
//        try {
//          //  String path="C:/Users/freddy/Documents/NetBeansProjects/Analizador/src/analizador/analizador.flex";
//            //generarTipo(path);
////            analizador.Analizador an=new analizador.Analizador(new StringReader(cadena));
//            //System.out.println(an.yylex());
//             salida=an.yylex().toString(); 
//        } catch (Exception ex) {
//            System.out.println("ERROR PANA");
//            
//        }
//        return salida;
//    }
}
