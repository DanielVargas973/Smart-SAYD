/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.BEAN.BeanAsignatura;

import Modelo.DAO.Daoasignatura;
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
@WebServlet(name = "ServletGestionAsignaturas", urlPatterns = {"/GestionAsignaturas"})
public class ServletGestionAsignaturas extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        //Obtener datos 
        int opcion = Integer.parseInt(request.getParameter(""));
        String idAsignatura = request.getParameter("");
        String idPrograma = request.getParameter("");
        String Nombre_asignatura = request.getParameter("");
        String Codigo_asignatura = request.getParameter("");
        String Descripcion = request.getParameter("");
        String Numero_cupos = request.getParameter("");
        
        //Llamar BEAN y el DAO
        BeanAsignatura BAsig = new BeanAsignatura(idAsignatura, idPrograma, Nombre_asignatura, Codigo_asignatura, Descripcion, Numero_cupos);
        Daoasignatura DAsig = new Daoasignatura(BAsig);
        
        //Generar mensajes dependiendo de las opciones
        switch (opcion) {
            case 1://Agregar Curso
                if (DAsig.AgregarAsignatura()) {
                   
                    request.setAttribute("exito", "<script> alert('Se registró correctamente')</script>");
                }else {
                     
                    request.setAttribute("error", "<script> alert('NO se ha podido registrar')</script>");
                }
                request.getRequestDispatcher("registro_Cursos.jsp").forward(request, response);
                break;
            case 2: //Actualizar curso
                if (DAsig.ActualizarAsignatura()) {
                    
                    request.setAttribute("exito", "<script> alert('Se registró correctamente')</script>");
                    
                }else {
                    request.setAttribute("error", "<script> alert('NOse ha logrado actualizar')</script>");
                }
                request.getRequestDispatcher("registro_Cursos.jsp").forward(request, response);
                break;
            case 3: //Eliminar curso
                if (DAsig.EliminarAsignatura()) {
                    request.setAttribute("exito", "<script> alert('Se registró correctamente')</script>");

                }else {
                    request.setAttribute("error", "<script> alert('NO se ha podido registrar')</script>");
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

