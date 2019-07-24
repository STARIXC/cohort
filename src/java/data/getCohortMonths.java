/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author EKaunda
 */
public class getCohortMonths extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            String data = "";
            Calendar cl = Calendar.getInstance();

            String year = "" + (cl.get(Calendar.YEAR));
            String monthstring = "" + (cl.get(Calendar.MONTH) + 1);
            String cohorttype = "art";
            if (request.getParameter("ct") != null && !request.getParameter("ct").equals("")) {
                cohorttype = request.getParameter("ct");
            }
            if (request.getParameter("yr") != null && !request.getParameter("yr").equals("")) {
                year = request.getParameter("yr");
            }
            if (request.getParameter("mn") != null && !request.getParameter("mn").equals("") && !request.getParameter("mn").equals("Select Month")) {
                monthstring = request.getParameter("mn");
            }
            loadcohort lc = new loadcohort();
                data = "<li class='nav-item'><a class='nav-link btn navbar-btn btn-primary m-1 active' data-toggle='tab' data-target='#nav-home'>Add New</a></li>"
                    + "<li class='nav-item' data-cohortmonth='3m'><a class='nav-link btn  btn-primary m-1' onclick(javascript:alert();loadcohorts();hiddenelements();) data-toggle='tab' data-target='#nav-3months'   data-mn='3m' ><span class='hidden_id p-0' data-mn='3m' onclick='loadcohorts();hiddenelements();isdisplayindicators();'>3m. Cohort(" + lc.getpreviousmonth(new Integer(year), new Integer(monthstring), -3) +")</span></a></li>"
                    + "<li class='nav-item' data-cohortmonth='6m'><a class='nav-link btn navbar-btn btn-primary m-1' onclick(loadcohorts();hiddenelements();) data-toggle='tab' data-target='#nav-6months'   data-mn='6m' ><span class='hidden_id p-0' data-mn='6m' onclick='loadcohorts();hiddenelements();isdisplayindicators();'>6m. Cohort(" + lc.getpreviousmonth(new Integer(year), new Integer(monthstring), -6) +")</span></a></li>"
                    + "<li class='nav-item'  data-cohortmonth='12m'><a class='nav-link btn navbar-btn btn-primary m-1' onclick(loadcohorts();hiddenelements();) data-toggle='tab' data-target='#nav-12months'   data-mn='12m' ><span class='hidden_id p-0' data-mn='12m' onclick='loadcohorts();hiddenelements();isdisplayindicators();'>12m. Cohort(" + lc.getpreviousmonth(new Integer(year), new Integer(monthstring), -12) +")</span></a></li>"
                    + "<li class='nav-item'  data-cohortmonth='24m'><a class='nav-link btn navbar-btn btn-primary m-1' onclick(loadcohorts();hiddenelements();) data-toggle='tab' data-target='#nav-24months'   data-mn='24m' ><span class='hidden_id p-0' data-mn='24m' onclick='loadcohorts();hiddenelements();isdisplayindicators();'>24m. Cohort(" + lc.getpreviousmonth(new Integer(year), new Integer(monthstring), -24) +")</span></a></li>";
           if (cohorttype.equalsIgnoreCase("art")) {
           data += "<li class='nav-item' data-cohortmonth='36m'><a class='nav-link btn navbar-btn btn-primary m-1' onclick(loadcohorts();hiddenelements();) data-toggle='tab' data-target='#nav-36months'   data-mn='36m' ><span class='hidden_id p-0' data-mn='36m' onclick='loadcohorts();hiddenelements();isdisplayindicators();'>36m. Cohort (" + lc.getpreviousmonth(new Integer(year), new Integer(monthstring), -36) +")</span></a></li>";
           

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
     * @thprows IOException if an I/O error occurs
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
