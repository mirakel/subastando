package org.ivica.servlet;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/**
 * Created by mirakel on 04/07/2015.
 */
public class FileUploadHandler extends HttpServlet {
    private final String DIRECTORY_IMAGE = "D:/imagenes";

    /*
    // creates the directory if it does not exist
File uploadDir = new File(uploadPath);
if (!uploadDir.exists()) {
uploadDir.mkdir();
}
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        if(ServletFileUpload.isMultipartContent(request)){ //Comprobar que tenemos una petición de carga de archivos
            try{
                /*DiskFileItemFactory factory = new DiskFileItemFactory();
                // Configure the factory here, if desired.
                ServletFileUpload upload = new ServletFileUpload(factory);
                // Configure the uploader here, if desired.
                List items = upload.parseRequest(request);

                // Process the uploaded items
                Iterator iter = items.iterator();

                while (iter.hasNext()) {
                    FileItem item = (FileItem) iter.next();

                    if (item.isFormField()) {
                        String name = item.getFieldName();
                        String value = item.getString();

                        System.out.print(name + value);

                    } else {

                    }

                */

                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);

                for (FileItem item : multiparts){

                    if(!item.isFormField()){
                        String name = new File(item.getName()).getName();
                        item.write(new File(DIRECTORY_IMAGE + File.separator + name));
                    }
                    if (item.isFormField()){
                        String name = item.getFieldName();
                        String value = item.getString();

                        System.out.print(name + value);
                    }
                }
                //si todo fue correcto
                request.setAttribute("mensaje","El archivo se subio correctamente");


            } catch (Exception e) {
                request.setAttribute("mensaje","Hubo una falla al subir el archivo" + e);
            }
        }else{
            request.setAttribute("Mensaje","Lo sentimos solo acepta archivos");
        }

        request.getRequestDispatcher("/prueba.jsp").forward(request,response);

    }
}
