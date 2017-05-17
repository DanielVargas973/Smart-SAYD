/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.BEAN.BeanEstudiante;
import Modelo.DAO.DaoRegistroEstudiante;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Samuel Cubillos
 */
@WebServlet(name = "ServletEstudiante", urlPatterns = {"/Estudiante"})
public class ServletEstudiante extends HttpServlet {

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
        
        String idEstudiante = request.getParameter("textidestu");
        String idConsultar = request.getParameter("textidconsultar");
        String id_Curso = request.getParameter("textidcurso");
        String Nombres = request.getParameter("textnombres");
        String Apellidos = request.getParameter("textapellidos");
        String Contrasena = request.getParameter("textcontrasena");
        String Genero = request.getParameter("textgenero");
        String Fecha_nacimiento = request.getParameter("textfechan");
        String Tipo_identificacion = request.getParameter("texttipoid");
        String Numero_identificacion = request.getParameter("textnumeroid");
        String Fecha_inscripcion = request.getParameter("textfechain");
        String Fecha_expedicion = request.getParameter("textfechaex");
        String Estrato = request.getParameter("textestrato");
        String Numero_telefono = request.getParameter("textnumerotel");
        String Correo_electronico = request.getParameter("textcorreo");
        
        BeanEstudiante BEstu = new BeanEstudiante(idEstudiante,idConsultar, id_Curso, Nombres, Apellidos, Contrasena, Genero, Fecha_nacimiento, Tipo_identificacion, Numero_identificacion, Fecha_inscripcion, Fecha_expedicion, Estrato, Numero_telefono, Correo_electronico);
        DaoRegistroEstudiante DEstu = new DaoRegistroEstudiante(BEstu);
        
        switch (opcion) {
            case 1: //Agregar Registro
                
                if (DEstu.AgregarRegistro()) {
                    request.setAttribute("exito", "<script> alert('Se registró correctamente el estudiante, el usuario y contraseña es el mismo numero de identificación.')</script>");

                } else {
                    request.setAttribute("error", "<script> alert('Error, faltan campos obligatorios')</script>");
                    
                }
                request.getRequestDispatcher("registro_estudiante.jsp").forward(request, response);
                break;

            case 2: //Actializar Estudiante

                if (DEstu.ActualizarRegistros()) {
                    request.setAttribute("exito", "<script> alert('Se actualizaron correctamente los datos!!')</script>");

                } else {
                    request.setAttribute("error", "<script> alert('Error, no se ha podido actualizar')</script>");
                }
                request.getRequestDispatcher("actualizar_estudiante.jsp").forward(request, response);
                break;
            case 3: //Consultar Registro
                
                BeanEstudiante bestudiante = DaoRegistroEstudiante.FiltrarEstu(idConsultar);
                if (bestudiante != null) {
                    
                    request.setAttribute("bestudiante", bestudiante);
                    
                }
                else{
                    
                    request.setAttribute("error", "<script> alert('Error, no se encontro el estudiante')</script>");
                    
                }    
                request.getRequestDispatcher("actualizar_estudiante.jsp").forward(request, response);
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
