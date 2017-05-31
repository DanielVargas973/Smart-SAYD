<%@page import="Util.Conexion"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.*" %>
<%@ page import="java.io.*" %>


<%

    Conexion cnx = new Conexion();

    Connection con = null;
    Statement puente = null;
    ResultSet rs = null;

    boolean mensaje = false;

    con = cnx.ObtenerConexion();
    puente = con.createStatement();
%>

<%
    String tabla = "";
    tabla = request.getParameter("texttabla");
    String archivo = "";

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
            File archivo_server = new File("C:/Users/Usuario/Desktop/carga/" + item.getName());
            /*y lo escribimos en el servidor*/
            item.write(archivo_server);
            archivo = item.getName();
            out.print("Nombre --> " + archivo + ", tabla:" + tabla);
            out.print("<br> Tipo --> " + item.getContentType());
            out.print("<br> tamaño --> " + (item.getSize() / 1240) + "KB");
            out.print("<br>");
        }
    }

    try {

        puente.executeUpdate("LOAD DATA INFILE 'C:/Users/Usuario/Desktop/carga/"+archivo+"' INTO TABLE `programa` FIELDS TERMINATED BY ';' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;");
        mensaje = true;

    } catch (Exception e) {
        e.printStackTrace();
    }

    if (mensaje == true) {
%><script>alert("Se ha registrado correctamente los datos en la tabla " +<%=tabla%> + ", del .csv con el nombre " +<%=archivo%>);</script><%
        } else {
%><script>alert("Error no se ha podido registrar los datos revise su archivo .csv y vuelva a intentarlo");</script><%
            }


%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Servira</title>
    </head>
    <body>
        <h1></h1>
    </body>
</html>
