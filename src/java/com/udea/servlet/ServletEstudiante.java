/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.servlet;

import com.udea.ejb.EstudianteFacadeLocal;
import com.udea.entity.Estudiante;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author daniel.monroym
 */
@WebServlet(name = "ServletEstudiantes", urlPatterns = {"/ServletEstudiantes"})
public class ServletEstudiante extends HttpServlet {

    @EJB
    private EstudianteFacadeLocal estudianteFacade;
    
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

        try {
            String action = request.getParameter("action");
            String url = "index.jsp";
            if ("list".equals(action)) {
                List<Estudiante> findAll = estudianteFacade.findAll();
                request.getSession().setAttribute("estudiantes", findAll);
                url = "listaEstudiantes.jsp";
            } else if ("login".equals(action)) {
                String n = request.getParameter("nombre");
                String p = request.getParameter("password");
                boolean checkLogin = estudianteFacade.checkLogin(n, p);
                if (checkLogin) {
                    request.getSession().setAttribute("login", n);
                    url = "manager.jsp";
                } else {
                    url = "login.jsp?error=1";
                }
            } else if ("insert".equals(action)) {
                Estudiante a= new Estudiante();
          
                a.setEstudianteId((Integer.parseInt(request.getParameter("id"))));
                System.out.println("");
                a.setNombre(request.getParameter("nombre"));
                a.setPassword(request.getParameter("password"));
                a.setEdad(request.getParameter("edad"));
                a.setSexo(request.getParameter("sexo"));
                a.setSemestre(Integer.parseInt(request.getParameter("semestre")));
                a.setFacultad(request.getParameter("facultad"));
                a.setFoto(request.getParameter("foto"));
                estudianteFacade.create(a);
                url="login.jsp";
            } else if ("delete".equals(action)) {
                String id = request.getParameter("id");
                Estudiante a = estudianteFacade.find(Integer.valueOf(id));
                estudianteFacade.remove(a);
                url = "ServletEstudiantes?action=list";
            } else if ("logout".equals(action)) {
                request.getSession().removeAttribute("login");
                url = "login.jsp";
            } else if ("show".equals(action)){
                String id = request.getParameter("id");
                Estudiante a = estudianteFacade.find(Integer.valueOf(id));
                request.getSession().setAttribute("estudiante", a);
                url = "perfilEstudiante.jsp";
            } else if("buscar".equals(action)){
                
               String id = request.getParameter("id");
                Estudiante a = estudianteFacade.find(Integer.valueOf(id));
               request.getSession().setAttribute("estudiante", a);
                url = "perfilEstudiante.jsp";
            }
            response.sendRedirect(url);
        } finally {
            out.close();
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
