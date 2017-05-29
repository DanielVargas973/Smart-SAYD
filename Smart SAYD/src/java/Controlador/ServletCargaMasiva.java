/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.BEAN.BeanCargaMasiva;
import Modelo.DAO.DaoCargaMasiva;
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
@WebServlet(name = "ServletCargaMasiva", urlPatterns = {"/ServletCargaMasiva"})
public class ServletCargaMasiva extends HttpServlet {

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
        
        //Obtener datos 
        int opcion = Integer.parseInt(request.getParameter("textOpcion"));
        String tabla = request.getParameter("texttabla");
        String archivo = request.getParameter("archivo");
        
        //Llamar BEAN y el DAO
        BeanCargaMasiva BCar = new BeanCargaMasiva(tabla,archivo);
        DaoCargaMasiva DCar = new DaoCargaMasiva(BCar);
        
        //Generar mensajes dependiendo de las opciones
        switch (opcion) {
            case 1://Carga Masiva de datos
                if (DCar.CargaMasiva()) {
                   
                    request.setAttribute("exito", "<script> alert('Se registró correctamente en la tabla "+tabla+", el archivo en .csv')</script>");
                    
                }else {
                     
                    request.setAttribute("error", "<script> alert('NO se ha podido registrar')</script>");
                
                }
                request.getRequestDispatcher("carga_masiva_datos.jsp").forward(request, response);
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
