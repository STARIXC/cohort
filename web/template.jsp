<%-- 
    Document   : index
    Created on : Jul 5, 2019, 9:37:58 AM
    Author     : starixc
--%>

<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head><style id="stndz-style"></style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Tb Register Data Entry and Management System</title>
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link href="assets/bootstrap/css/bootstrap-glyphicons.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/bootstrap/maps/glyphicons-fontawesome.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/footable.bootstrap.css">
    <link rel="stylesheet" href="css/select2.min.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-formhelpers.min.css">
    <link rel="stylesheet" href="assets/calender/lib/jquery-ui.min.css">
    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
    <link href="assets/offcanvas.css" rel="stylesheet">

</head>

<body class="bg-light" onload="">
    <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
        <a class="navbar-brand mr-auto mr-lg-0" href="#">TB Register System</a>
        <button class="navbar-toggler p-0 border-0" type="button" data-toggle="offcanvas">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Dashboard <span class="sr-only">(current)</span></a>
                </li>

                <!-- <li class="nav-item">
                     <a class="nav-link" href="#">Notifications</a>
                 </li>
                -->

            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="nav-item">
                    <a class="nav-link" href="#">Welcome :<i class="glyphicon glyphicon-user"></i>User your ID:user</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" title="Help" data-toggle="modal" href="#help">
                        <i class="glyphicon glyphicon-question-sign"></i>
                        Help
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../logout.jsp">
                        <i class="glyphicon glyphicon-lock"></i>
                        Logout
                    </a>
                </li>
            </ul>

        </div>
    </nav>

    <div class="nav-scroller bg-default box-shadow">
        <nav class="nav nav-underline">
            <a class="nav-link active" href="#">Dashboard</a>
            <a class="nav-link" href="../home.jsp">Online</a>
            <!--  <a class="nav-link" href="#">
                  Friends
                  <span class="badge badge-pill bg-light align-text-bottom">27</span>
              </a>
              <a class="nav-link" href="#">Explore</a>
              <a class="nav-link" href="#">Suggestions</a>-->

        </nav>
    </div>

    <main role="main" class="container">
        <div class="row p-3 mt-2">
            <label class="col-sm-2"></label>
            <a class='btn btn-success col-sm-3' style="text-align: center;" href='https://hsdsacluster2.fhi360.org'>Dashboards Home</a>
            <label class="col-sm-2"></label>
            <a class='btn btn-success col-sm-3' style="text-align: center;" href='aca_mca_reports.jsp'>Generate Reports</a>
            <label class="col-sm-2"></label>
        </div>

        <div class="p-3 my-3  bg-white rounded box-shadow">

            <div class="lh-100 text-center ">
                <h5 class="mb-0 text-primary lh-100 ">MATERNAL/ART COHORT ANALYSIS SYSTEM [Ver 1.0.0]</h5>

            </div>
        </div>
        <div class="row p-3 mt-2">
            <label class="col-sm-"></label>
            <a href="#" id='refreshpage' class="btn btn-danger col-md-6">
                <i class="glyphicon glyphicon-refresh"></i>
                <br> Refresh
            </a>
            <a class="btn btn-danger col-md-6" title="Help" data-toggle="modal" href="#help">
                <i class="glyphicon glyphicon-question-sign"></i>
                <br> Help
            </a>  <label class="col-sm-"></label>
        </div>


        <div class="my-1 mb-5 p-2 bg-white rounded box-shadow">
            <section id="tabs" class="project-tab">
                <div class="container1">
                    <div class="row">
                        <div class="col-md-12">
                            <nav>
                                <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                                    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true"><i class="glyphicon glyphicon-plus"></i> Add New</a>
                                    <a class="nav-item nav-link" id="nav-3months-tab" data-toggle="tab" href="#nav-3months" role="tab" aria-controls="nav-3months" aria-selected="false"> <span class="glyphicon glyphicon-calendar"></span>3 Months()</a>
                                    <a class="nav-item nav-link" id="nav-6months-tab" data-toggle="tab" href="#nav-6months" role="tab" aria-controls="nav-6months" aria-selected="false"> <span class="glyphicon glyphicon-calendar"></span>6 Months()</a>
                                    <a class="nav-item nav-link" id="nav-12months-tab" data-toggle="tab" href="#nav-12months" role="tab" aria-controls="nav-12months" aria-selected="false"> <span class="glyphicon glyphicon-calendar"></span>12 Months()</a>
                                    <a class="nav-item nav-link" id="nav-24months-tab" data-toggle="tab" href="#nav-24months" role="tab" aria-controls="nav-24months" aria-selected="false"> <span class="glyphicon glyphicon-calendar"></span>24 Months()</a>
                                    <a class="nav-item nav-link" id="nav-36months-tab" data-toggle="tab" href="#nav-36months" role="tab" aria-controls="nav-36months" aria-selected="false"> <span class="glyphicon glyphicon-calendar"></span>36 Months()</a>

                                </div>
                            </nav>
                            <div class="tab-content" id="nav-tabContent">

                                <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                    <h6 class="border-bottom border-gray pb-2 mb-0 mt-2">Enter New Record</h6>
                                    <div class="text-muted pl-5 pt-3 bg-light">
                                        <center>
                                            <div id="loading" class="alert-success"></div>
                                        </center>

                                        <form  id="form_data" autocomplete="off" validate method="POST" >

                                            <div class="row offset-0 p-2">

                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label><font color="red"><b>*</b></font> Cohort Type </label>
                                                        <select  onchange='getFacilitiesJson();load731();loadcohorts();hiddenelements();cohortmonths();isdisplayindicators();' required="true"  name="cohortttype" id="cohortttype" class="form-control" >

                                                            <% if (session.getAttribute("ct") != null) {
                                                                    if (session.getAttribute("ct").equals("art")) {
                                                                        out.println("<option selected value='art'>ACA</option>");
                                                                        out.println("<option value='pmtct'>MCA</option>");
                                                                    } else if (session.getAttribute("ct").equals("pmtct")) {
                                                                        out.println("<option  value='art'>ACA</option>");
                                                                        out.println("<option selected value='pmtct'>MCA</option>");
                                                                    }

                                                                } else {%>

                                                            <option value="art">ACA</option>
                                                            <option value="pmtct">MCA</option>

                                                            <%}%>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">

                                                    <div class="form-group">
                                                        <label><font color="red"><b>*</b></font> Reporting year </label> 
                                                        <select required="true" onclick="getmonth();cohortmonths();load731();loadcohorts();isdisplayindicators();"   name="year" id="year" class="form-control" >
                                                            <option value=''>Select Year</option>
                                                            <%

                                                                Calendar cal = Calendar.getInstance();
                                                                int curyear = cal.get(Calendar.YEAR);
                                                                int curmn = cal.get(Calendar.MONTH) + 1;

                                                                if (curmn >= 10) {
                                                                    curyear = curyear + 1;
                                                                }

                                                                for (int a = 2017; a <= curyear; a++) {

                                                                    if (session.getAttribute("yr") != null) {

                                                                        if (new Integer(session.getAttribute("yr").toString()) == a) {
                                                                            System.out.println(" Mwaaka ni " + session.getAttribute("yr") + " vs " + a);
                                                                            out.println("<option selected value='" + a + "'>" + a + "</option>");
                                                                        } else {
                                                                            out.println("<option value='" + a + "'>" + a + "</option>");
                                                                        }

                                                                    } else {

                                                                        out.println("<option value='" + a + "'>" + a + "</option>");

                                                                    }
                                                            %>


                                                            <%
                                                                }

                                                            %>



                                                        </select>
                                                    </div>

                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label><font color="red"><b>*</b></font> Reporting Month </label>
                                                        <select required="true"    name="month" id="month" onchange="cohortmonths();load731();loadcohorts();isdisplayindicators();" class="form-control" >
                                                            <option>Select Month</option>
                                                            <option value="01">January</option>
                                                            <option value="02">February</option>
                                                            <option value="03">March</option>
                                                            <option value="04">April</option>
                                                            <option value="05">May</option>
                                                            <option value="06">June</option>
                                                            <option value="07">July</option>
                                                            <option value="08">August</option>
                                                            <option value="09">September</option>
                                                            <option value="10">October</option>
                                                            <option value="11">November</option>
                                                            <option value="12">December</option>

                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">

                                                    <div class="form-group">
                                                        <label> <font color="red"><b>*</b></font>  Facility Name:</label>
                                                        <select required="true"  onchange="load731();loadcohorts();isdisplayindicators();"   name="facilityname" id="facilityname" class="form-control" >
                                                            <option>Select Facility Name</option>

                                                        </select>
                                                    </div>

                                                </div>
                                            </div>
                                        </form>
                                    </div>

                                </div>
                                <div class="tab-pane fade" id="nav-3months" role="tabpanel" aria-labelledby="nav-3months-tab">
                                    <h6 class="border-bottom border-gray pb-2 mb-0 mt-2">3 Months Records</h6>

                                    <div class="text-muted p-3 border border-gray">
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge">  (A)</span> Enrolled into cohort </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('1_adult@1_child', '1_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="1_adult" id="1_adult" class="form-control inputs"> 
                                                    </div>
                                                </div>
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('1_adult@1_child', '1_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="1_child" id="1_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="1_tl" id="1_tl" class="form-control inputs">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (B)</span> Transfers In(T.I) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('2_adult@2_child', '2_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="2_adult" id="2_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('2_adult@2_child', '2_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="2_child" id="2_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="2_tl" id="2_tl" class="form-control inputs">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (C) </span>Transfers Out(T.O) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('3_adult@3_child', '3_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="3_adult" id="3_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('2_adult@2_child', '2_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="3_child" id="3_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="2_tl" id="2_tl" class="form-control inputs">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (D) </span> Net Cohort(A+B-C) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="4_adult" id="4_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="4_child" id="4_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="4_tl" id="4_tl" class="form-control inputs">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (B)</span> Transfers In(T.I) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('2_adult@2_child', '2_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="2_adult" id="2_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('2_adult@2_child', '2_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="2_child" id="2_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="2_tl" id="2_tl" class="form-control inputs">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> E </span>Defaulter </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('5_adult@5_child', '5_tl');sumofindicators('4_adult@_minus_5_adult@_minus_6_adult@_minus_7_adult@_minus_8_adult', '9_adult');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="5_adult" id="5_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('5_adult@5_child', '5_tl');sumofindicators('4_child@_minus_5_child@_minus_6_child@_minus_7_child@_minus_8_child', '9_child');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="5_child" id="5_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="5_tl" id="5_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge">  (F) </span> Lost to follow up (LTFU) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('6_adult@6_child', '6_tl');sumofindicators('4_adult@_minus_5_adult@_minus_6_adult@_minus_7_adult@_minus_8_adult', '9_adult');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="6_adult" id="6_adult" class="form-control inputs" readonly="readonly" tabindex="-1">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('6_adult@6_child', '6_tl');sumofindicators('4_child@_minus_5_child@_minus_6_child@_minus_7_child@_minus_8_child', '9_child');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="6_child" id="6_child" class="form-control inputs" readonly="readonly" tabindex="-1">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="6_tl" id="6_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge">  (G)</span> Reported Dead </label>   
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('7_adult@7_child', '7_tl');sumofindicators('4_adult@_minus_5_adult@_minus_6_adult@_minus_7_adult@_minus_8_adult', '9_adult');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="7_adult" id="7_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('7_adult@7_child', '7_tl');sumofindicators('4_child@_minus_5_child@_minus_6_child@_minus_7_child@_minus_8_child', '9_child');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="7_child" id="7_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="7_tl" id="7_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge">  (H) </span> Stopped </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('8_adult@8_child', '8_tl');sumofindicators('4_adult@_minus_5_adult@_minus_6_adult@_minus_7_adult@_minus_8_adult', '9_adult');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="8_adult" id="8_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('8_adult@8_child', '8_tl');sumofindicators('4_child@_minus_5_child@_minus_6_child@_minus_7_child@_minus_8_child', '9_child');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="8_child" id="8_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="8_tl" id="8_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge">  (I)</span> Alive and Active on Treatment </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="9_adult" id="9_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="9_child" id="9_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="9_tl" id="9_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (J) </span> Viral Load Collected </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('10_adult@10_child', '10_tl');" type="tel" maxlength="4" min="0" max="9999" name="10_adult" id="10_adult" class="form-control inputs" readonly="readonly" tabindex="-1">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('10_adult@10_child', '10_tl');" type="tel" maxlength="4" min="0" max="9999" name="10_child" id="10_child" class="form-control inputs" readonly="readonly" tabindex="-1">    
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="10_tl" id="10_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (K) </span>Virally suppressed (VL&lt;1000) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('11_adult@11_child', '11_tl');" type="tel" maxlength="4" min="0" max="9999" name="11_adult" id="11_adult" class="form-control inputs" readonly="readonly" tabindex="-1">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('11_adult@11_child', '11_tl');" type="tel" maxlength="4" min="0" max="9999" name="11_child" id="11_child" class="form-control inputs" readonly="readonly" tabindex="-1">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="11_tl" id="11_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row pt-3">
                                            <div class="control-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                <div class="alert-info">Note: Please enter all the required data.</div>
                                                <br>
                                                <div class="controls">
                                                    <input type="submit" onmouseover="validatefacility();" id="savebutton" value="SAVE" style="margin-left: 0%; border-color: rgb(51, 122, 183);" class="btn-lg btn-success active">

                                                </div>
                                                <div class="controls">
                                                    <button type="submit" id="updatebutton" onclick="updateweeklydata();" style="margin-left: 0%;display:none;" class="btn-lg btn-info active">
                                                        UPDATE 
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="nav-6" role="tabpanel" aria-labelledby="nav-6months-tab">
                                    <h6 class="border-bottom border-gray pb-2 mb-0 mt-2">Tb Register Records</h6>

                                    <div class="text-muted p-3 border border-gray">
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge">  (A)</span> Enrolled into cohort </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('1_adult@1_child', '1_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="1_adult" id="1_adult" class="form-control inputs"> 
                                                    </div>
                                                </div>
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('1_adult@1_child', '1_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="1_child" id="1_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="1_tl" id="1_tl" class="form-control inputs">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (B)</span> Transfers In(T.I) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('2_adult@2_child', '2_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="2_adult" id="2_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('2_adult@2_child', '2_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="2_child" id="2_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="2_tl" id="2_tl" class="form-control inputs">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (C) </span>Transfers Out(T.O) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('3_adult@3_child', '3_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="3_adult" id="3_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('2_adult@2_child', '2_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="3_child" id="3_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="2_tl" id="2_tl" class="form-control inputs">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (D) </span> Net Cohort(A+B-C) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="4_adult" id="4_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="4_child" id="4_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="4_tl" id="4_tl" class="form-control inputs">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (B)</span> Transfers In(T.I) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('2_adult@2_child', '2_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="2_adult" id="2_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('2_adult@2_child', '2_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="2_child" id="2_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="2_tl" id="2_tl" class="form-control inputs">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> E </span>Defaulter </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('5_adult@5_child', '5_tl');sumofindicators('4_adult@_minus_5_adult@_minus_6_adult@_minus_7_adult@_minus_8_adult', '9_adult');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="5_adult" id="5_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('5_adult@5_child', '5_tl');sumofindicators('4_child@_minus_5_child@_minus_6_child@_minus_7_child@_minus_8_child', '9_child');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="5_child" id="5_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="5_tl" id="5_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge">  (F) </span> Lost to follow up (LTFU) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('6_adult@6_child', '6_tl');sumofindicators('4_adult@_minus_5_adult@_minus_6_adult@_minus_7_adult@_minus_8_adult', '9_adult');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="6_adult" id="6_adult" class="form-control inputs" readonly="readonly" tabindex="-1">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('6_adult@6_child', '6_tl');sumofindicators('4_child@_minus_5_child@_minus_6_child@_minus_7_child@_minus_8_child', '9_child');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="6_child" id="6_child" class="form-control inputs" readonly="readonly" tabindex="-1">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="6_tl" id="6_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge">  (G)</span> Reported Dead </label>   
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('7_adult@7_child', '7_tl');sumofindicators('4_adult@_minus_5_adult@_minus_6_adult@_minus_7_adult@_minus_8_adult', '9_adult');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="7_adult" id="7_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('7_adult@7_child', '7_tl');sumofindicators('4_child@_minus_5_child@_minus_6_child@_minus_7_child@_minus_8_child', '9_child');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="7_child" id="7_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="7_tl" id="7_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge">  (H) </span> Stopped </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('8_adult@8_child', '8_tl');sumofindicators('4_adult@_minus_5_adult@_minus_6_adult@_minus_7_adult@_minus_8_adult', '9_adult');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="8_adult" id="8_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('8_adult@8_child', '8_tl');sumofindicators('4_child@_minus_5_child@_minus_6_child@_minus_7_child@_minus_8_child', '9_child');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="8_child" id="8_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="8_tl" id="8_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge">  (I)</span> Alive and Active on Treatment </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="9_adult" id="9_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="9_child" id="9_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="9_tl" id="9_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (J) </span> Viral Load Collected </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('10_adult@10_child', '10_tl');" type="tel" maxlength="4" min="0" max="9999" name="10_adult" id="10_adult" class="form-control inputs" readonly="readonly" tabindex="-1">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('10_adult@10_child', '10_tl');" type="tel" maxlength="4" min="0" max="9999" name="10_child" id="10_child" class="form-control inputs" readonly="readonly" tabindex="-1">    
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="10_tl" id="10_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (K) </span>Virally suppressed (VL&lt;1000) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('11_adult@11_child', '11_tl');" type="tel" maxlength="4" min="0" max="9999" name="11_adult" id="11_adult" class="form-control inputs" readonly="readonly" tabindex="-1">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('11_adult@11_child', '11_tl');" type="tel" maxlength="4" min="0" max="9999" name="11_child" id="11_child" class="form-control inputs" readonly="readonly" tabindex="-1">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="11_tl" id="11_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row pt-3">
                                            <div class="control-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                <div class="alert-info">Note: Please enter all the required data.</div>
                                                <br>
                                                <div class="controls">
                                                    <input type="submit" onmouseover="validatefacility();" id="savebutton" value="SAVE" style="margin-left: 0%; border-color: rgb(51, 122, 183);" class="btn-lg btn-success active">

                                                </div>
                                                <div class="controls">
                                                    <button type="submit" id="updatebutton" onclick="updateweeklydata();" style="margin-left: 0%;display:none;" class="btn-lg btn-info active">
                                                        UPDATE 
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="nav-12months" role="tabpanel" aria-labelledby="nav-12months-tab">
                                    <h6 class="border-bottom border-gray pb-2 mb-0 mt-2">Tb Register Records</h6>
                                    <div class="text-muted p-3 border border-gray">
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge">  (A)</span> Enrolled into cohort </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('1_adult@1_child', '1_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="1_adult" id="1_adult" class="form-control inputs"> 
                                                    </div>
                                                </div>
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('1_adult@1_child', '1_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="1_child" id="1_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="1_tl" id="1_tl" class="form-control inputs">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (B)</span> Transfers In(T.I) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('2_adult@2_child', '2_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="2_adult" id="2_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('2_adult@2_child', '2_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="2_child" id="2_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="2_tl" id="2_tl" class="form-control inputs">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (C) </span>Transfers Out(T.O) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('3_adult@3_child', '3_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="3_adult" id="3_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('2_adult@2_child', '2_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="3_child" id="3_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="2_tl" id="2_tl" class="form-control inputs">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (D) </span> Net Cohort(A+B-C) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="4_adult" id="4_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="4_child" id="4_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="4_tl" id="4_tl" class="form-control inputs">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (B)</span> Transfers In(T.I) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('2_adult@2_child', '2_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="2_adult" id="2_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('2_adult@2_child', '2_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="2_child" id="2_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="2_tl" id="2_tl" class="form-control inputs">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> E </span>Defaulter </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('5_adult@5_child', '5_tl');sumofindicators('4_adult@_minus_5_adult@_minus_6_adult@_minus_7_adult@_minus_8_adult', '9_adult');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="5_adult" id="5_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('5_adult@5_child', '5_tl');sumofindicators('4_child@_minus_5_child@_minus_6_child@_minus_7_child@_minus_8_child', '9_child');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="5_child" id="5_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="5_tl" id="5_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge">  (F) </span> Lost to follow up (LTFU) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('6_adult@6_child', '6_tl');sumofindicators('4_adult@_minus_5_adult@_minus_6_adult@_minus_7_adult@_minus_8_adult', '9_adult');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="6_adult" id="6_adult" class="form-control inputs" readonly="readonly" tabindex="-1">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('6_adult@6_child', '6_tl');sumofindicators('4_child@_minus_5_child@_minus_6_child@_minus_7_child@_minus_8_child', '9_child');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="6_child" id="6_child" class="form-control inputs" readonly="readonly" tabindex="-1">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="6_tl" id="6_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge">  (G)</span> Reported Dead </label>   
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('7_adult@7_child', '7_tl');sumofindicators('4_adult@_minus_5_adult@_minus_6_adult@_minus_7_adult@_minus_8_adult', '9_adult');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="7_adult" id="7_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('7_adult@7_child', '7_tl');sumofindicators('4_child@_minus_5_child@_minus_6_child@_minus_7_child@_minus_8_child', '9_child');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="7_child" id="7_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="7_tl" id="7_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge">  (H) </span> Stopped </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('8_adult@8_child', '8_tl');sumofindicators('4_adult@_minus_5_adult@_minus_6_adult@_minus_7_adult@_minus_8_adult', '9_adult');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="8_adult" id="8_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('8_adult@8_child', '8_tl');sumofindicators('4_child@_minus_5_child@_minus_6_child@_minus_7_child@_minus_8_child', '9_child');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="8_child" id="8_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="8_tl" id="8_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge">  (I)</span> Alive and Active on Treatment </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="9_adult" id="9_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="9_child" id="9_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="9_tl" id="9_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (J) </span> Viral Load Collected </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('10_adult@10_child', '10_tl');" type="tel" maxlength="4" min="0" max="9999" name="10_adult" id="10_adult" class="form-control inputs" readonly="readonly" tabindex="-1">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('10_adult@10_child', '10_tl');" type="tel" maxlength="4" min="0" max="9999" name="10_child" id="10_child" class="form-control inputs" readonly="readonly" tabindex="-1">    
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="10_tl" id="10_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (K) </span>Virally suppressed (VL&lt;1000) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('11_adult@11_child', '11_tl');" type="tel" maxlength="4" min="0" max="9999" name="11_adult" id="11_adult" class="form-control inputs" readonly="readonly" tabindex="-1">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('11_adult@11_child', '11_tl');" type="tel" maxlength="4" min="0" max="9999" name="11_child" id="11_child" class="form-control inputs" readonly="readonly" tabindex="-1">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="11_tl" id="11_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row pt-3">
                                            <div class="control-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                <div class="alert-info">Note: Please enter all the required data.</div>
                                                <br>
                                                <div class="controls">
                                                    <input type="submit" onmouseover="validatefacility();" id="savebutton" value="SAVE" style="margin-left: 0%; border-color: rgb(51, 122, 183);" class="btn-lg btn-success active">

                                                </div>
                                                <div class="controls">
                                                    <button type="submit" id="updatebutton" onclick="updateweeklydata();" style="margin-left: 0%;display:none;" class="btn-lg btn-info active">
                                                        UPDATE 
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="nav-24months" role="tabpanel" aria-labelledby="nav-24months-tab">
                                    <h6 class="border-bottom border-gray pb-2 mb-0 mt-2">Tb Register Records</h6>

                                    <div class="text-muted p-3 border border-gray">
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge">  (A)</span> Enrolled into cohort </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('1_adult@1_child', '1_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="1_adult" id="1_adult" class="form-control inputs"> 
                                                    </div>
                                                </div>
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('1_adult@1_child', '1_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="1_child" id="1_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="1_tl" id="1_tl" class="form-control inputs">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (B)</span> Transfers In(T.I) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('2_adult@2_child', '2_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="2_adult" id="2_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('2_adult@2_child', '2_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="2_child" id="2_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="2_tl" id="2_tl" class="form-control inputs">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (C) </span>Transfers Out(T.O) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('3_adult@3_child', '3_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="3_adult" id="3_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('2_adult@2_child', '2_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="3_child" id="3_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="2_tl" id="2_tl" class="form-control inputs">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (D) </span> Net Cohort(A+B-C) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="4_adult" id="4_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="4_child" id="4_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="4_tl" id="4_tl" class="form-control inputs">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (B)</span> Transfers In(T.I) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('2_adult@2_child', '2_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="2_adult" id="2_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('2_adult@2_child', '2_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="2_child" id="2_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="2_tl" id="2_tl" class="form-control inputs">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> E </span>Defaulter </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('5_adult@5_child', '5_tl');sumofindicators('4_adult@_minus_5_adult@_minus_6_adult@_minus_7_adult@_minus_8_adult', '9_adult');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="5_adult" id="5_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('5_adult@5_child', '5_tl');sumofindicators('4_child@_minus_5_child@_minus_6_child@_minus_7_child@_minus_8_child', '9_child');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="5_child" id="5_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="5_tl" id="5_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge">  (F) </span> Lost to follow up (LTFU) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('6_adult@6_child', '6_tl');sumofindicators('4_adult@_minus_5_adult@_minus_6_adult@_minus_7_adult@_minus_8_adult', '9_adult');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="6_adult" id="6_adult" class="form-control inputs" readonly="readonly" tabindex="-1">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('6_adult@6_child', '6_tl');sumofindicators('4_child@_minus_5_child@_minus_6_child@_minus_7_child@_minus_8_child', '9_child');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="6_child" id="6_child" class="form-control inputs" readonly="readonly" tabindex="-1">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="6_tl" id="6_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge">  (G)</span> Reported Dead </label>   
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('7_adult@7_child', '7_tl');sumofindicators('4_adult@_minus_5_adult@_minus_6_adult@_minus_7_adult@_minus_8_adult', '9_adult');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="7_adult" id="7_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('7_adult@7_child', '7_tl');sumofindicators('4_child@_minus_5_child@_minus_6_child@_minus_7_child@_minus_8_child', '9_child');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="7_child" id="7_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="7_tl" id="7_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge">  (H) </span> Stopped </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('8_adult@8_child', '8_tl');sumofindicators('4_adult@_minus_5_adult@_minus_6_adult@_minus_7_adult@_minus_8_adult', '9_adult');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="8_adult" id="8_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('8_adult@8_child', '8_tl');sumofindicators('4_child@_minus_5_child@_minus_6_child@_minus_7_child@_minus_8_child', '9_child');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="8_child" id="8_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="8_tl" id="8_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge">  (I)</span> Alive and Active on Treatment </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="9_adult" id="9_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="9_child" id="9_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="9_tl" id="9_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (J) </span> Viral Load Collected </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('10_adult@10_child', '10_tl');" type="tel" maxlength="4" min="0" max="9999" name="10_adult" id="10_adult" class="form-control inputs" readonly="readonly" tabindex="-1">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('10_adult@10_child', '10_tl');" type="tel" maxlength="4" min="0" max="9999" name="10_child" id="10_child" class="form-control inputs" readonly="readonly" tabindex="-1">    
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="10_tl" id="10_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (K) </span>Virally suppressed (VL&lt;1000) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('11_adult@11_child', '11_tl');" type="tel" maxlength="4" min="0" max="9999" name="11_adult" id="11_adult" class="form-control inputs" readonly="readonly" tabindex="-1">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('11_adult@11_child', '11_tl');" type="tel" maxlength="4" min="0" max="9999" name="11_child" id="11_child" class="form-control inputs" readonly="readonly" tabindex="-1">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="11_tl" id="11_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row pt-3">
                                            <div class="control-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                <div class="alert-info">Note: Please enter all the required data.</div>
                                                <br>
                                                <div class="controls">
                                                    <input type="submit" onmouseover="validatefacility();" id="savebutton" value="SAVE" style="margin-left: 0%; border-color: rgb(51, 122, 183);" class="btn-lg btn-success active">

                                                </div>
                                                <div class="controls">
                                                    <button type="submit" id="updatebutton" onclick="updateweeklydata();" style="margin-left: 0%;display:none;" class="btn-lg btn-info active">
                                                        UPDATE 
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="nav-36months" role="tabpanel" aria-labelledby="nav-36months-tab">
                                    <h6 class="border-bottom border-gray pb-2 mb-0 mt-2">Tb Register Records</h6>
                                    <div class="text-muted p-3 border border-gray">
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge">  (A)</span> Enrolled into cohort </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('1_adult@1_child', '1_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="1_adult" id="1_adult" class="form-control inputs"> 
                                                    </div>
                                                </div>
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('1_adult@1_child', '1_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="1_child" id="1_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="1_tl" id="1_tl" class="form-control inputs">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (B)</span> Transfers In(T.I) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('2_adult@2_child', '2_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="2_adult" id="2_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('2_adult@2_child', '2_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="2_child" id="2_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="2_tl" id="2_tl" class="form-control inputs">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (C) </span>Transfers Out(T.O) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('3_adult@3_child', '3_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="3_adult" id="3_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('2_adult@2_child', '2_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="3_child" id="3_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="2_tl" id="2_tl" class="form-control inputs">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (D) </span> Net Cohort(A+B-C) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="4_adult" id="4_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="4_child" id="4_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="4_tl" id="4_tl" class="form-control inputs">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (B)</span> Transfers In(T.I) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('2_adult@2_child', '2_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="2_adult" id="2_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('2_adult@2_child', '2_tl');sumofindicators('1_adult@2_adult@_minus_3_adult', '4_adult');sumofindicators('1_adult@2_adult@_minus_3_adult@1_child@2_child@_minus_3_child', '4_tl');sumofindicators('1_child@2_child@_minus_3_child', '4_child');" type="tel" maxlength="4" min="0" max="9999" name="2_child" id="2_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="2_tl" id="2_tl" class="form-control inputs">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> E </span>Defaulter </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('5_adult@5_child', '5_tl');sumofindicators('4_adult@_minus_5_adult@_minus_6_adult@_minus_7_adult@_minus_8_adult', '9_adult');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="5_adult" id="5_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('5_adult@5_child', '5_tl');sumofindicators('4_child@_minus_5_child@_minus_6_child@_minus_7_child@_minus_8_child', '9_child');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="5_child" id="5_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="5_tl" id="5_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge">  (F) </span> Lost to follow up (LTFU) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('6_adult@6_child', '6_tl');sumofindicators('4_adult@_minus_5_adult@_minus_6_adult@_minus_7_adult@_minus_8_adult', '9_adult');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="6_adult" id="6_adult" class="form-control inputs" readonly="readonly" tabindex="-1">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('6_adult@6_child', '6_tl');sumofindicators('4_child@_minus_5_child@_minus_6_child@_minus_7_child@_minus_8_child', '9_child');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="6_child" id="6_child" class="form-control inputs" readonly="readonly" tabindex="-1">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="6_tl" id="6_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge">  (G)</span> Reported Dead </label>   
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('7_adult@7_child', '7_tl');sumofindicators('4_adult@_minus_5_adult@_minus_6_adult@_minus_7_adult@_minus_8_adult', '9_adult');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="7_adult" id="7_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('7_adult@7_child', '7_tl');sumofindicators('4_child@_minus_5_child@_minus_6_child@_minus_7_child@_minus_8_child', '9_child');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="7_child" id="7_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="7_tl" id="7_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge">  (H) </span> Stopped </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('8_adult@8_child', '8_tl');sumofindicators('4_adult@_minus_5_adult@_minus_6_adult@_minus_7_adult@_minus_8_adult', '9_adult');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="8_adult" id="8_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" onblur="sumofindicators('8_adult@8_child', '8_tl');sumofindicators('4_child@_minus_5_child@_minus_6_child@_minus_7_child@_minus_8_child', '9_child');sumofindicators('4_tl@_minus_5_tl@_minus_6_tl@_minus_7_tl@_minus_8_tl', '9_tl');" type="tel" maxlength="4" min="0" max="9999" name="8_child" id="8_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="8_tl" id="8_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge">  (I)</span> Alive and Active on Treatment </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="9_adult" id="9_adult" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="9_child" id="9_child" class="form-control inputs">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="9_tl" id="9_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (J) </span> Viral Load Collected </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('10_adult@10_child', '10_tl');" type="tel" maxlength="4" min="0" max="9999" name="10_adult" id="10_adult" class="form-control inputs" readonly="readonly" tabindex="-1">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('10_adult@10_child', '10_tl');" type="tel" maxlength="4" min="0" max="9999" name="10_child" id="10_child" class="form-control inputs" readonly="readonly" tabindex="-1">    
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="10_tl" id="10_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <label> <font color="red"> <b> * </b> </font> <span class="badge"> (K) </span>Virally suppressed (VL&lt;1000) </label>
                                            </div>
                                            <div class="row p-2">
                                                <div class=" col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Adults </label> 
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('11_adult@11_child', '11_tl');" type="tel" maxlength="4" min="0" max="9999" name="11_adult" id="11_adult" class="form-control inputs" readonly="readonly" tabindex="-1">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Children </label>
                                                        <input onkeypress="return numbers(event);" onblur="sumofindicators('11_adult@11_child', '11_tl');" type="tel" maxlength="4" min="0" max="9999" name="11_child" id="11_child" class="form-control inputs" readonly="readonly" tabindex="-1">
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label> Total </label>
                                                        <input required="true" onkeypress="return numbers(event);" readonly="" tabindex="-1" onblur="" type="tel" maxlength="4" min="0" max="9999" name="11_tl" id="11_tl" class="form-control inputs">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row pt-3">
                                            <div class="control-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                <div class="alert-info">Note: Please enter all the required data.</div>
                                                <br>
                                                <div class="controls">
                                                    <input type="submit" onmouseover="validatefacility();" id="savebutton" value="SAVE" style="margin-left: 0%; border-color: rgb(51, 122, 183);" class="btn-lg btn-success active">

                                                </div>
                                                <div class="controls">
                                                    <button type="submit" id="updatebutton" onclick="updateweeklydata();" style="margin-left: 0%;display:none;" class="btn-lg btn-info active">
                                                        UPDATE 
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </section>


        </div>


    </main>
    <footer class="text-center m-5"> &copy; AphiaPlus USAID </footer>
    <!-- Bootstrap core JavaScript
     ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="assets/DT-Tables/js/jquery-3.3.1.min.js" ></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="assets/bootstrap/js/bootstrap.min.js" ></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/select2.min.js"></script>
    <script src="js/additional/additional.js"></script>
    <script src="js/footable.js"></script>
    <script src="assets/popper.min.js"></script>
    <script src="assets/offcanvas.js"></script>
    <script src="assets/bootstrap/js/bootstrap-formhelpers.js"></script>
    <script src="assets/calender/lib/jquery-ui.min.js"></script>
    <script src="js/loader.js"></script>
    <script src="js/datepicker.js"></script>
</body>
</html>
