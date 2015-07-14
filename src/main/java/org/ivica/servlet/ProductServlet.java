package org.ivica.servlet;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.tiles.TilesContainer;
import org.apache.tiles.access.TilesAccess;
import org.ivica.entity.Product;
import org.ivica.model.ProductModel;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class ProductServlet extends HttpServlet {
    private final String DIRECTORY_IMAGE = "D:/imagenes";
    private Product producto = new Product();

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        TilesContainer container = TilesAccess.getContainer(
                request.getSession().getServletContext());
        container.render("products", request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if(ServletFileUpload.isMultipartContent(request)){

            try {
                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);

                for (FileItem item : multiparts){

                    if(!item.isFormField()){
                        //Guardando la imagen
                        String name = new File(item.getName()).getName();
                        item.write(new File(DIRECTORY_IMAGE + File.separator + name));
                        String portada = DIRECTORY_IMAGE + "/"+ name;
                        producto.setPortada(portada);
                    }
                    if (item.isFormField()){
                        //procesando los campos del Formulario
                        processFieldForm(item);
                    }
                }

               try{
                   producto.setId_usuario(1);
                   ProductModel model = new ProductModel();
                   model.save(producto);

               }catch (SQLException ex){
                   System.out.print("Error" + ex);
               }

                response.sendRedirect("/listproducts?mensaje=ok");

            } catch (Exception e) {
                System.out.print("Error" + e);
            }


        }

       }

    void processFieldForm(FileItem item){

        if(item.getFieldName().equals("nombre")){
            producto.setNombre(item.getString());
        }else if(item.getFieldName().equals("precio")){
            producto.setPrecio(Double.parseDouble(item.getString()));
        }else if(item.getFieldName().equals("cantidad")){
            producto.setCantidad(Integer.parseInt(item.getString()));
        }else if(item.getFieldName().equals("estado")){
            producto.setEstado(item.getString());
        }else if(item.getFieldName().equals("descripcion")){
            producto.setDescripcion(item.getString());
        }else if(item.getFieldName().equals("categoria")){
            producto.setId_categoria(Integer.parseInt(item.getString()));
        }

    }

}
