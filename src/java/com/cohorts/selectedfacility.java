/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cohorts;

import com.db.dbConn;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HSDSA
 */
public class selectedfacility extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            // session=request.getSession();
            String curfacil = "";

            if (request.getParameter("sf") != null) {

                curfacil = request.getParameter("sf");

            }
            String cohorttype = "art";

            if (request.getParameter("ct") != null) {

                cohorttype = request.getParameter("ct");

            }

            String facilfilter = "1=1 ";

            if (cohorttype.equals("art")) {
                facilfilter = "  ART=1 ";
            } else if (cohorttype.equals("pmtct")) {
                facilfilter = "  PMTCT=1 ";
            } else if (cohorttype.equals("stf")) {
                facilfilter = "ART=1 ";
            } else if (cohorttype.equals("defaulter")) {
                facilfilter = "ART=1 ";
            }

            //String getfacils="select * from facilities where "+facilfilter+" ";
            String getfacils = "SELECT * FROM pmtc_art_cohort.facilities where " + facilfilter + " ";

            dbConn conn = new dbConn();
            conn.rs = conn.st.executeQuery(getfacils);
            String facil = "<option value=''>Select facility</option>";

            while (conn.rs.next()) {

                String mflcode = conn.rs.getString("CentreSanteId");
                String subpartnerid = conn.rs.getString("DistrictID");
                String facilname = conn.rs.getString("SubPartnerNom");

//value='"+data[i].mflcode+"_"+data[i].subpartnerid+"_"+data[i].facility_name+"'>"+data[i].facility_name+"</option>"; 
                if (curfacil.equals(mflcode + "_" + subpartnerid + "_" + facilname)) {

                    facil += "<option selected value=\"" + mflcode + "_" + subpartnerid + "_" + facilname + "\">" + facilname + "</option>";

                } else {
                    facil += "<option value=\"" + mflcode + "_" + subpartnerid + "_" + facilname + "\">" + facilname + "</option>";

                }

            }

            out.println(facil);
            if (conn.rs != null) {
                conn.rs.close();
            }
            if (conn.st != null) {
                conn.st.close();
            }
            if (conn.conn != null) {
                conn.conn.close();
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
        } catch (SQLException ex) {
            Logger.getLogger(selectedfacility.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (SQLException ex) {
            Logger.getLogger(selectedfacility.class.getName()).log(Level.SEVERE, null, ex);
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

}
