package Controlador;

import Modelo.BEAN.BeanPersonal;
import Modelo.DAO.DaoPersonal;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author Daniel
 */
@WebServlet(name = "ServletPersonal", urlPatterns = {"/Personal"})
public class ServletPersonal extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        //Obtencion de datos
        int opcion = Integer.parseInt(request.getParameter("textOpcion"));
        String idTrabajador = request.getParameter("txtidTrabajador");
        String Nombre = request.getParameter("txtNombre");
        String PrimerApellido = request.getParameter("txtPrimerApellido");
        String SegundoApellido = request.getParameter("txtSegundoApellido");
        String Tipo_identificacion = request.getParameter("txtTipo_identificacion");
        String Numero_identificacion = request.getParameter("txtNumeroIdentificacion");
        String Fecha_Expedicion = request.getParameter("txtFechaExpedicion");
        String Ciudad_Expedicion = request.getParameter("txtCiudad_Expedicion");
        String Pais_Expedicion = request.getParameter("txtPais_Expedicion");
        String Genero = request.getParameter("txtGenero");
        String Fecha_Nacimiento = request.getParameter("txtFecha_Nacimiento");
        String Ciudad_Nacimiento = request.getParameter("txtCiudad_Nacimiento");
        String Pais_Nacimiento = request.getParameter("txtPais_Nacimiento");
        String Estrato = request.getParameter("txtEstrato");
        String Numero_Telefono = request.getParameter("txtNumero_Telefono");
        String Correo_Electronico = request.getParameter("txtCorreo_Electronico");
        String Direccion_Residencia = request.getParameter("txtDireccion_Residencia");
        String EPS = request.getParameter("txtEPS");
        String RH = request.getParameter("txtRH");
        String Grupo_Sanguineo = request.getParameter("txtGrupo_Sanguineo");
        String Rol_Asignado = request.getParameter("txtRol_Asignado");
        String Contrasena = request.getParameter("txtContrasena");
        String RH_y_Gruposanguineo = Grupo_Sanguineo+RH;
        //LLamar BEAN y DAO
        BeanPersonal BPer = new BeanPersonal(idTrabajador, Nombre, PrimerApellido, SegundoApellido, Tipo_identificacion, Numero_identificacion, Fecha_Expedicion, Ciudad_Expedicion, Pais_Expedicion, Genero, Fecha_Nacimiento, Ciudad_Nacimiento, Pais_Nacimiento, Estrato, Numero_Telefono, Correo_Electronico, Direccion_Residencia, EPS, RH_y_Gruposanguineo, Rol_Asignado, Contrasena);
        DaoPersonal DPer = new DaoPersonal(BPer);
        
        //Seleccion de opciones y Generacion de mensajes
        switch(opcion){
            case 1: //Crear usuario
                request.setAttribute("exito", "<script> alert('Si ingresa')</script>");
                if (DPer.AgregarTrabajador()) {
                    request.setAttribute("exito", "<script> alert('Se registró correctamente')</script>");
                } else {
                    request.setAttribute("error", "<script> alert('No se ha podido realizar el registro')</script>");
                }
                request.getRequestDispatcher("registro_Personal.jsp").forward(request, response);
            break;
            case 2: //Actualizar usuario
                if (DPer.ActualizarTrabajador()) {
                    request.setAttribute("exito", "<script> alert('Se realizo la actualizacion de forma exitosa')</script>");
                } else {
                    request.setAttribute("error", "<script>alert('Lo sentimos, la actualizacion no pudo ser realizada')");
                }
                request.getRequestDispatcher("registro_Personal.jsp").forward(request, response);
            break;
            case 3: //Eliminar usuario
                if (DPer.EliminarTrabajador()) {
                    request.setAttribute("exito", "<script> alert ('Se ha realizado la eliminacion')</script>");
                } else {
                    request.setAttribute("error", "<script> alert ('Lo sentimos, no se ha podido realizar la eliminacion')</script>");
                }
                request.getRequestDispatcher("registro_Personal.jsp").forward(request, response);
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
