/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;


import Modelo.BEAN.BeanCargaMasiva;
import Modelo.DAO.DaoCargaMasiva;
import Util.Conexion;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Samuel Cubillos
 */
@WebServlet(name = "ServletCargaMasiva", urlPatterns = {"/CargaMasiva"})
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
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        //Obtener datos 
        int opcion = Integer.parseInt(request.getParameter("textOpcion"));
        String tabla = request.getParameter("texttabla");
        String archivo = request.getParameter("archivo");

        //Llamar BEAN y el DAO
        BeanCargaMasiva BCar = new BeanCargaMasiva(tabla, archivo);
        DaoCargaMasiva DCar = new DaoCargaMasiva(BCar);

        //Generar mensajes dependiendo de las opciones
        switch (opcion) {
            case 1://Carga Masiva de datos
                
                /*FileItemFactory es una interfaz para crear FileItem*/
                FileItemFactory file_factory = new DiskFileItemFactory();
                /*ServletFileUpload esta clase convierte los input file a FileItem*/
                ServletFileUpload servlet_up = new ServletFileUpload(file_factory);
                /*sacando los FileItem del ServletFileUpload en una lista */
                List items = servlet_up.parseRequest(request);

                for (int i = 0; i < items.size(); i++) {
                    /*FileItem representa un archivo en memoria que puede ser pasado al disco duro*/
                    FileItem item = (FileItem) items.get(i);
                    /*item.isFormField() false=input file; true=text field*/
                    if (!item.isFormField()) {
                        /*cual sera la ruta al archivo en el servidor*/
                        File archivo_server = new File("C:/Users/Usuario/Documents/carga" + item.getName());
                        /*y lo escribimos en el servidor*/
                        item.write(archivo_server);
                        archivo = item.getName();
                        out.print("Nombre --> " + archivo);
                        out.print("<br> Tipo --> " + item.getContentType());
                        out.print("<br> tamaño --> " + (item.getSize() / 1240) + "KB");
                        out.print("<br>");
                    }
                }

                if (DCar.CargaMasiva()) {

                    request.setAttribute("exito", "<script> alert('Se registró correctamente en la tabla , el archivo en .csv')</script>");

                } else {

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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ServletCargaMasiva.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ServletCargaMasiva.class.getName()).log(Level.SEVERE, null, ex);
        }
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