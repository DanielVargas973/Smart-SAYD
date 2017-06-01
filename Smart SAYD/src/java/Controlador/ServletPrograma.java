/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.BEAN.BeanPrograma;
import Modelo.DAO.DaoPrograma;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Liam
 */
@WebServlet(name = "ServletPrograma", urlPatterns = {"/Programa"})
public class ServletPrograma extends HttpServlet {

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
        /* TODO output your page here. You may use following sample code. */
        int opcion = Integer.parseInt(request.getParameter("textOpcion"));

        String idPrograma = request.getParameter("textidprog");
        String Nombre_programa = request.getParameter("textnombreprog");
        String Sede_realizacion = request.getParameter("textsedereal");
        String Descripcion_programa = request.getParameter("textdescrip");
        String Objetivo_formacion = request.getParameter("textobjetivo");
        String Pensum_del_programa = request.getParameter("textpensumprogr");
        String Pensum_Archivo = request.getParameter("textpensumarchi");
        String Tiempo_duracion = request.getParameter("textduracion");

        BeanPrograma BProg = new BeanPrograma(idPrograma, Nombre_programa, Sede_realizacion, Descripcion_programa, Objetivo_formacion, Pensum_del_programa, Pensum_Archivo, Tiempo_duracion);
        DaoPrograma DProg = new DaoPrograma(BProg);

        switch (opcion) {
            case 1:
                if (DProg.AgregarPrograma()) {

                    request.setAttribute("exito", "<script> alert('Se registró correctamente el Programa.')</script>");

                } else {
                    request.setAttribute("error", "<script> alert('Error, faltan campos obligatorios')</script>");
                }
                request.getRequestDispatcher("registrar_programa.jsp").forward(request, response);
                break;
                
            case 2:
                
                if (DProg.ActualizarPrograma()) {
                    request.setAttribute("exito", "<script> alert('Se actualizaron correctamente los datos!!')</script>");

                } else {
                    request.setAttribute("error", "<script> alert('Error, no se ha podido actualizar')</script>");
                }
                request.getRequestDispatcher("registrar_programa.jsp").forward(request, response);
                break;

            case 3:

                BProg = DaoPrograma.FiltrarPrograma(idPrograma);
                if (BProg != null) {

                    request.setAttribute("BProg", BProg);

                } else {

                    request.setAttribute("error", "<script> alert('Error, no se encontro el estudiante')</script>");

                }
                request.getRequestDispatcher("registrar_programa.jsp").forward(request, response);
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
