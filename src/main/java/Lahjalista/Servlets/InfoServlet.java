
package Lahjalista.Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InfoServlet extends LahjalistaServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (!onkoTunnistautunut(request, response)) {
            response.sendRedirect("passIn");
        } else { 
            naytaJSP("infosivu.jsp", request, response);
        }
    }    
}


