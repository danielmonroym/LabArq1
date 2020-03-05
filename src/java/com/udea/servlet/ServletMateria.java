/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.servlet;

import com.udea.ejb.MateriaFacadeLocal;
import com.udea.entity.Materia;
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
@WebServlet(name = "ServletMaterias", urlPatterns = {"/ServletMaterias"})
public class ServletMateria extends HttpServlet {
    
    @EJB
    private MateriaFacadeLocal materiaFacade;
    
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
                List<Materia> findAll = materiaFacade.findAll();
                request.getSession().setAttribute("materias", findAll);
                url = "listaMaterias.jsp";
            } else if ("insert".equals(action)) {
                Materia a= new Materia();
                a.setNombre(request.getParameter("nombre"));
                a.setNombreProfesor(request.getParameter("nombreProfesor"));
                a.setCreditos(Integer.parseInt(request.getParameter("creditos")));
                materiaFacade.create(a);
                url="login.jsp";
            } else if ("delete".equals(action)) {
                String id = request.getParameter("id");
                Materia a = materiaFacade.find(Integer.valueOf(id));
                materiaFacade.remove(a);
                url = "ServletMaterias?action=list";
            } else if ("show".equals(action)){
                String id = request.getParameter("id");
                Materia a = materiaFacade.find(Integer.valueOf(id));
                request.getSession().setAttribute("materia", a);
                url = "perfilMateria.jsp";
            } else if ("create".equals(action)){
                url = "newMateria.jsp";
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
