/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cohorts;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HSDSA
 */
public class mnthselected extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            String data = "";

            if (request.getParameter("mn") != null && !request.getParameter("mn").equals("")) {
                String mwezi = request.getParameter("mn");
                if (mwezi.equals("01")) {
                    data =" <option>Select Month</option>"
                    + "<option selected value='01'>January</option>"+
                       "<option value='02'>February</option>"+
                       "<option value='03'>March</option>"+
                       " <option value='04'>April</option>"+
                       "<option value='05'>May</option>"+
                       "<option value='06'>June</option>"+
                       "<option value='07'>July</option>"+
                       "<option value='08'>August</option>"+
                       "<option value='09'>September</option>"+
                       "<option value='10'>October</option>"+
                       "<option value='11'>November</option>"+
                       "<option value='12'>December</option>";
                   
                } else if (mwezi.equals("02")) {
                    data =" <option>Select Month</option>"
                    + "<option  value='01'>January</option>"+
                       "<option selected value='02'>February</option>"+
                       "<option value='03'>March</option>"+
                       " <option value='04'>April</option>"+
                       "<option value='05'>May</option>"+
                       "<option value='06'>June</option>"+
                       "<option value='07'>July</option>"+
                       "<option value='08'>August</option>"+
                       "<option value='09'>September</option>"+
                       "<option value='10'>October</option>"+
                       "<option value='11'>November</option>"+
                       "<option value='12'>December</option>";
                } else if (mwezi.equals("03")) {
                    data =" <option>Select Month</option>"
                    + "<option  value='01'>January</option>"+
                       "<option value='02'>February</option>"+
                       "<option selected value='03'>March</option>"+
                       " <option value='04'>April</option>"+
                       "<option value='05'>May</option>"+
                       "<option value='06'>June</option>"+
                       "<option value='07'>July</option>"+
                       "<option value='08'>August</option>"+
                       "<option value='09'>September</option>"+
                       "<option value='10'>October</option>"+
                       "<option value='11'>November</option>"+
                       "<option value='12'>December</option>";
                } else if (mwezi.equals("04")) {
                   data =" <option>Select Month</option>"
                    + "<option  value='01'>January</option>"+
                       "<option value='02'>February</option>"+
                       "<option value='03'>March</option>"+
                       " <option selected value='04'>April</option>"+
                       "<option value='05'>May</option>"+
                       "<option value='06'>June</option>"+
                       "<option value='07'>July</option>"+
                       "<option value='08'>August</option>"+
                       "<option value='09'>September</option>"+
                       "<option value='10'>October</option>"+
                       "<option value='11'>November</option>"+
                       "<option value='12'>December</option>";
                }else if (mwezi.equals("05")) {
                   data =" <option>Select Month</option>"
                    + "<option  value='01'>January</option>"+
                       "<option value='02'>February</option>"+
                       "<option value='03'>March</option>"+
                       " <option value='04'>April</option>"+
                       "<option selected value='05'>May</option>"+
                       "<option value='06'>June</option>"+
                       "<option value='07'>July</option>"+
                       "<option value='08'>August</option>"+
                       "<option value='09'>September</option>"+
                       "<option value='10'>October</option>"+
                       "<option value='11'>November</option>"+
                       "<option value='12'>December</option>";
                }else if (mwezi.equals("06")) {
                   data =" <option>Select Month</option>"
                    + "<option value='01'>January</option>"+
                       "<option value='02'>February</option>"+
                       "<option value='03'>March</option>"+
                       " <option value='04'>April</option>"+
                       "<option value='05'>May</option>"+
                       "<option selected value='06'>June</option>"+
                       "<option value='07'>July</option>"+
                       "<option value='08'>August</option>"+
                       "<option value='09'>September</option>"+
                       "<option value='10'>October</option>"+
                       "<option value='11'>November</option>"+
                       "<option value='12'>December</option>";
                }else if (mwezi.equals("07")) {
                   data =" <option>Select Month</option>"
                    + "<option  value='01'>January</option>"+
                       "<option value='02'>February</option>"+
                       "<option value='03'>March</option>"+
                       " <option value='04'>April</option>"+
                       "<option value='05'>May</option>"+
                       "<option value='06'>June</option>"+
                       "<option selected value='07'>July</option>"+
                       "<option value='08'>August</option>"+
                       "<option value='09'>September</option>"+
                       "<option value='10'>October</option>"+
                       "<option value='11'>November</option>"+
                       "<option value='12'>December</option>";
                }else if (mwezi.equals("08")) {
                   data =" <option>Select Month</option>"
                    + "<option value='01'>January</option>"+
                       "<option value='02'>February</option>"+
                       "<option value='03'>March</option>"+
                       " <option value='04'>April</option>"+
                       "<option value='05'>May</option>"+
                       "<option value='06'>June</option>"+
                       "<option value='07'>July</option>"+
                       "<option selected value='08'>August</option>"+
                       "<option value='09'>September</option>"+
                       "<option value='10'>October</option>"+
                       "<option value='11'>November</option>"+
                       "<option value='12'>December</option>";
                }else if (mwezi.equals("09")) {
                   data =" <option>Select Month</option>"
                    + "<option value='01'>January</option>"+
                       "<option value='02'>February</option>"+
                       "<option value='03'>March</option>"+
                       " <option value='04'>April</option>"+
                       "<option value='05'>May</option>"+
                       "<option value='06'>June</option>"+
                       "<option value='07'>July</option>"+
                       "<option value='08'>August</option>"+
                       "<option selected value='09'>September</option>"+
                       "<option value='10'>October</option>"+
                       "<option value='11'>November</option>"+
                       "<option value='12'>December</option>";
                }else if (mwezi.equals("10")) {
                   data =" <option>Select Month</option>"
                    + "<option  value='01'>January</option>"+
                       "<option value='02'>February</option>"+
                       "<option value='03'>March</option>"+
                       " <option value='04'>April</option>"+
                       "<option value='05'>May</option>"+
                       "<option value='06'>June</option>"+
                       "<option value='07'>July</option>"+
                       "<option value='08'>August</option>"+
                       "<option value='09'>September</option>"+
                       "<option selected value='10'>October</option>"+
                       "<option value='11'>November</option>"+
                       "<option value='12'>December</option>";
                }else if (mwezi.equals("11")) {
                   data =" <option>Select Month</option>"
                    + "<option value='01'>January</option>"+
                       "<option value='02'>February</option>"+
                       "<option value='03'>March</option>"+
                       " <option value='04'>April</option>"+
                       "<option value='05'>May</option>"+
                       "<option value='06'>June</option>"+
                       "<option value='07'>July</option>"+
                       "<option value='08'>August</option>"+
                       "<option value='09'>September</option>"+
                       "<option value='10'>October</option>"+
                       "<option selected value='11'>November</option>"+
                       "<option value='12'>December</option>";
                }else if (mwezi.equals("12")) {
                   data =" <option>Select Month</option>"
                    + "<option value='01'>January</option>"+
                       "<option value='02'>February</option>"+
                       "<option value='03'>March</option>"+
                       " <option value='04'>April</option>"+
                       "<option value='05'>May</option>"+
                       "<option value='06'>June</option>"+
                       "<option value='07'>July</option>"+
                       "<option value='08'>August</option>"+
                       "<option value='09'>September</option>"+
                       "<option value='10'>October</option>"+
                       "<option value='11'>November</option>"+
                       "<option selected  value='12'>December</option>";
                }

            } else {
                data =" <option>Select Month</option>"
                    + "<option value='01'>January</option>"+
                       "<option value='02'>February</option>"+
                       "<option value='03'>March</option>"+
                       " <option value='04'>April</option>"+
                       "<option value='05'>May</option>"+
                       "<option value='06'>June</option>"+
                       "<option value='07'>July</option>"+
                       "<option value='08'>August</option>"+
                       "<option value='09'>September</option>"+
                       "<option value='10'>October</option>"+
                       "<option value='11'>November</option>"+
                       "<option value='12'>December</option>";

            }

            out.println(data);
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
