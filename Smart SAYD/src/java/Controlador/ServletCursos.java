package Controlador;

import Modelo.BEAN.BeanCurso;
import Modelo.DAO.DaoGestionCursos;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletCursos", urlPatterns = {"/Curso"})
public class ServletCursos extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        //Obtener datos
        int opcion = Integer.parseInt(request.getParameter("textOpcion"));
        String id_Curso = request.getParameter("textCurso");
        String idPrograma = request.getParameter("textseleccion");
        String Fecha_inicio = request.getParameter("textFechaIni");
        String Fecha_fin = request.getParameter("textFechaFin");
        
        //Llamar BEAN y el DAO
        BeanCurso BCur = new BeanCurso(id_Curso, idPrograma, Fecha_inicio, Fecha_fin);
        DaoGestionCursos DCur = new DaoGestionCursos(BCur);
        
        //Generar mensajes dependiendo de las opciones
        switch (opcion) {
            case 1://Agregar Curso
                if (DCur.AgregarRegistro()) {
                   
                    request.setAttribute("exito", "<script> alert('Se registró correctamente')</script>");
                }else {
                     
                    request.setAttribute("error", "<script> alert('NO se ha podido registrar')</script>");
                }
                request.getRequestDispatcher("registro_Cursos.jsp").forward(request, response);
                break;
            case 2: //Actualizar curso
                if (DCur.ActualizarRegistros()) {
                    
                    request.setAttribute("exito", "<script> alert('Se registró correctamente')</script>");
                    
                }else {
                    request.setAttribute("error", "<script> alert('NOse ha logrado actualizar')</script>");
                }
                request.getRequestDispatcher("registro_Cursos.jsp").forward(request, response);
                break;
            /*case 3: //Eliminar curso
                if (DCur.EliminarRegistros()) {
                    request.setAttribute("exito", "<script> alert('Se registró correctamente')</script>");

                }else {
                    request.setAttribute("error", "<script> alert('NO se ha podido registrar')</script>");
                }
                request.getRequestDispatcher("registro_Cursos.jsp").forward(request, response);
                break;*/
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
