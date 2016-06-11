/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.huntnet.servlets;

import com.huntnet.daos.DispositivoDAO;
import com.huntnet.entity.Device;
import com.huntnet.entity.Dispositivo;
import com.huntnet.managers.DeviceManager;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author eddy_
 */
@WebServlet(name = "HostResources", urlPatterns = {"/production/AjaxSNMP"})
public class AjaxSNMP_HostResources extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");

        switch (action) {
            case "cpu":
                cpu(request, response);
                break;

            case "paquetes":
                paquetes(request, response);
                break;
        }
        
        System.gc();
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

    private void cpu(HttpServletRequest request, HttpServletResponse response) throws IOException {
        StringBuilder sb = new StringBuilder();

        String ip = request.getParameter("ip");

        DispositivoDAO dao = new DispositivoDAO();
        Dispositivo dispositivo = dao.buscar(ip);

        DeviceManager dm = new DeviceManager(ip, dispositivo.getComunidad());
        Device device = dm.getDevice();

        sb.append("<response>");
        sb.append("<cpu>");

        sb.append("<core1>");
        sb.append(dm.getOID("1.3.6.1.2.1.25.3.3.1.2.6"));
        sb.append("</core1>");

        sb.append("<core2>");
        sb.append(dm.getOID("1.3.6.1.2.1.25.3.3.1.2.7"));
        sb.append("</core2>");

        sb.append("<core3>");
        sb.append(dm.getOID("1.3.6.1.2.1.25.3.3.1.2.8"));
        sb.append("</core3>");

        sb.append("<core4>");
        sb.append(dm.getOID("1.3.6.1.2.1.25.3.3.1.2.9"));
        sb.append("</core4>");

        sb.append("<core5>");
        sb.append(dm.getOID("1.3.6.1.2.1.25.3.3.1.2.10"));
        sb.append("</core5>");

        sb.append("<core6>");
        sb.append(dm.getOID("1.3.6.1.2.1.25.3.3.1.2.11"));
        sb.append("</core6>");

        sb.append("<core7>");
        sb.append(dm.getOID("1.3.6.1.2.1.25.3.3.1.2.12"));
        sb.append("</core7>");

        sb.append("<core8>");
        sb.append(dm.getOID("1.3.6.1.2.1.25.3.3.1.2.13"));
        sb.append("</core8>");

        sb.append("</cpu>");
        sb.append("</response>");
        // FALTA Guardar el core
        
        
        
        PrintWriter pw = response.getWriter();
        pw.write(sb.toString());
    }

    private void paquetes(HttpServletRequest request, HttpServletResponse response) throws IOException {
        StringBuilder sb = new StringBuilder();

        String ip = request.getParameter("ip");

        DispositivoDAO dao = new DispositivoDAO();
        Dispositivo dispositivo = dao.buscar(ip);

        DeviceManager dm = new DeviceManager(ip, dispositivo.getComunidad());

        sb.append("<response>");
        sb.append("<paquetes>");

        sb.append("<icmp>");
        sb.append(dm.getOID("1.3.6.1.2.1.5.1.0"));
        sb.append("</icmp>");

        sb.append("<udp>");
        sb.append(dm.getOID("1.3.6.1.2.1.7.1.0"));
        sb.append("</udp>");

        sb.append("<tcp>");
        sb.append(dm.getOID("1.3.6.1.2.1.6.1.0"));
        sb.append("</tcp>");
        
        sb.append("</paquetes>");
        sb.append("</response>");
        
        PrintWriter pw = response.getWriter();
        pw.write(sb.toString());
    }
}
