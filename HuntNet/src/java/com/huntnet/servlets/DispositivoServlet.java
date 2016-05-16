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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author eddy_
 */
@WebServlet(name = "DispositivoServlet", urlPatterns = {"/production/Dispositivo"})
public class DispositivoServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.text.ParseException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");

        if (action == null || action.equals("")) {
            response.sendRedirect("nuevoDispositivo.jsp");
        }
        else {
            switch (action) {
                case "nuevo":
                    nuevo(request, response);
                    break;

                case "lista":
                    lista(request, response);
                    break;

                default:
                    response.sendRedirect("nuevoDispositivo.jsp");
            }
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
        }
        catch (ParseException ex) {
            Logger.getLogger(DispositivoServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        }
        catch (ParseException ex) {
            Logger.getLogger(DispositivoServlet.class.getName()).log(Level.SEVERE, null, ex);
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

    private void nuevo(HttpServletRequest request, HttpServletResponse response) throws ParseException, IOException, ServletException {
        String ip = request.getParameter("ip");
        String comunidad = request.getParameter("comunidad");

        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");

        Dispositivo dispositivo = new Dispositivo(ip, comunidad, sdf.parse(sdf.format(new Date())));
        DispositivoDAO dao = new DispositivoDAO();

        if (dao.nuevo(dispositivo)) {
            request.setAttribute("mensaje", "Dispositivo agregado");
        }
        else {
            request.setAttribute("mensaje", "No se pudo guardar");
        }

        request.getRequestDispatcher("nuevoDispositivo.jsp").forward(request, response);
    }

    private void lista(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        DispositivoDAO dao = new DispositivoDAO();
        ArrayList<Dispositivo> dispositivos = dao.readAll();

        ArrayList<Device> devices = new ArrayList<>();

        for (Dispositivo dispositivo : dispositivos) {
            DeviceManager dm = new DeviceManager(dispositivo.getIp(), dispositivo.getComunidad());
            Device device = dm.getDevice();

            if (device != null) {
                device.setAddedDate(dispositivo.getAddedDate());
                device.setCommunity(dispositivo.getComunidad());

                devices.add(device);
            }

        }
        if (dispositivos.size() < 1) {
            request.setAttribute("dispositivos", null);
        }
        else {
            System.out.println("Size:" + devices.size());
            request.setAttribute("dispositivos", devices);
        }

        request.getRequestDispatcher("listaDispositivos.jsp").forward(request, response);
    }
}
