/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.BEAN.BeanCurso;
import Modelo.BEAN.BeanInasistencia;
import Modelo.DAO.DaoGestionCursos;
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
 * @author Andres
 */
@WebServlet(name = "ServletGestionExcusa", urlPatterns = {"/Excusa"})
public class ServletGestionExcusa extends HttpServlet {
    
    
    
 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        //Obtener datos
        int opcion = Integer.parseInt(request.getParameter("textOpcion"));
        String idAsistencia = request.getParameter("textobservaciones");
        String idAsignatura = request.getParameter("textseleccion");
        String idEstudiante = request.getParameter("textseleccion1");
        String Fecha = request.getParameter("textfecha");
        String Hora = request.getParameter("textobservaciones");
        String Observacion = request.getParameter("textobservaciones");
        String Excusa = request.getParameter("textobservaciones");
        String Excusa_archivo = request.getParameter("textarchivo");
        String inasistencia = request.getParameter("textobservaciones");
        
        
        //Llamar BEAN y el DAO
        BeanInasistencia BIna = new BeanInasistencia(idAsistencia, idAsignatura, idEstudiante, Fecha, Hora, Observacion, Excusa, Excusa_archivo, inasistencia);
        DaoSubirExcusa DExc = new DaoSubirExcusa(BIna);
        
        //Generar mensajes dependiendo de las opciones
        switch (opcion) {
            case 1://Agregar Curso
                if (DExc.AgregarRegistro()) {
                   
                    request.setAttribute("exito", "<script> alert('Se registró correctamente')</script>");
                }else {
                     
                    request.setAttribute("error", "<script> alert('NO se ha podido registrar')</script>");
                }
                request.getRequestDispatcher("registro_Cursos.jsp").forward(request, response);
                break;
            case 2: //Actualizar curso
                if (DExc.ActualizarRegistros()) {
                    
                    request.setAttribute("exito", "<script> alert('Se registró correctamente')</script>");
                    
                }else {
                    request.setAttribute("error", "<script> alert('NOse ha logrado actualizar')</script>");
                }
                request.getRequestDispatcher("registro_Cursos.jsp").forward(request, response);
                break;
            
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
