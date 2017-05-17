/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.BEAN.BeanInasistencia;
import Modelo.DAO.DaoSubirExcusa;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author APRENDIZ
 */
@WebServlet(name = "ServletSubirExcusa", urlPatterns = {"/Excusa"})
public class ServletSubirExcusa extends HttpServlet {

   /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        int opcion = Integer.parseInt(request.getParameter("textOpcion"));
        
        String idEstudiante=request.getParameter("textseleccion1");
        String idAsignatura = request.getParameter("textseleccion");
        String Fecha = request.getParameter("textfecha");
        String Observacion = request.getParameter("textobservaciones");
        String Excusa_archivo = request.getParameter("textarchivo");
    
  
        
        BeanInasistencia Bina = new BeanInasistencia(idAsignatura, idAsignatura, idAsignatura, Fecha, Fecha, Observacion, true, Excusa_archivo, true);
        DaoSubirExcusa DSubir = new DaoSubirExcusa(Bina);
        
        switch (opcion) {
            case 1: //Agregar Registro
                
                if (DSubir.AgregarRegistro()) {
                    request.setAttribute("exito", "<script> alert('Se registró correctamente el estudiante, el usuario y contraseña es el mismo numero de identificación.')</script>");

                } else {
                    request.setAttribute("error", "<script> alert('Error, faltan campos obligatorios')</script>");
                    
                }
                request.getRequestDispatcher("registro_estudiante.jsp").forward(request, response);
                break;

            case 2: //Actializar Estudiante

                if (DSubir.ActualizarRegistros()) {
                    request.setAttribute("exito", "<script> alert('Se actualizaron correctamente los datos!!')</script>");

                } else {
                    request.setAttribute("error", "<script> alert('Error, no se ha podido actualizar')</script>");
                }
                request.getRequestDispatcher("actualizar_estudiante.jsp").forward(request, response);
                break;
                            
              
        }
        
        
        
    }


}
