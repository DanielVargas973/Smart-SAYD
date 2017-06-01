/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.BEAN.BeanLogin;
import Modelo.DAO.DaoLogin;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Nicolas
 */
@WebServlet(name = "ServletLogin", urlPatterns = {"/Smart_SAYD"})
public class ServletLogin extends HttpServlet {

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

        //rescatar datos
        int Opcion = Integer.parseInt(request.getParameter("textOpcion"));
        String Numero_identificacion = request.getParameter("txtNumIdenti");
        String Contrasena = request.getParameter("txtContrase");

        //llamar BEAN y DAO
        BeanLogin BLog = new BeanLogin(Numero_identificacion, Contrasena);
        DaoLogin DLog = new DaoLogin(BLog);

        //Realizacion comprobaciones
        HttpSession sesion = request.getSession(true);
        switch (DLog.IngresarSistema(Numero_identificacion, Contrasena)) {
            case 1: //Administrador 
                sesion.setAttribute("User", Numero_identificacion);
                sesion.setAttribute("Rol", "Administrador");
                response.sendRedirect("Login/indexAdmin.jsp");
                break;
            case 2: //Secretaria
                sesion.setAttribute("User", Numero_identificacion);
                sesion.setAttribute("Rol", "Secretaria");
                response.sendRedirect("Login/indexSec.jsp");
                break;
            case 3: //Formador
                sesion.setAttribute("User", Numero_identificacion);
                sesion.setAttribute("Rol", "Forrmador");
                response.sendRedirect("Login/indexFor.jsp");
                break;
            default: 
                request.setAttribute("error", "<script> alert('Usuario o contraseña incorrectos')</script>");
                break;
        }
        if (request.getParameter("cerrar")!=null) {
            sesion.invalidate();
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
