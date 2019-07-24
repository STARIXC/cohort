
function numbers(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}
function sumofindicators(sourceindicators, destinationindicator) {
    var sourceindicatorsarray = sourceindicators.split("@");


    var destinationelement = destinationindicator;
    var total = 0;
    for (b = 0; b < sourceindicatorsarray.length; b++) {
        //check if there
        var indiic = sourceindicatorsarray[b].replace("_minus_", "");
        var originalindic = sourceindicatorsarray[b];


        if ($("#" + indiic).val() !== '') {
            //remove negative
            //if(originalindic.indexOf("_minus_") >==0){
            if (originalindic.indexOf("_minus_") >= 0) {
                //has negative 
                total = parseInt(total) - parseInt($("#" + indiic).val());
            } else {

                total = parseInt(total) + parseInt($("#" + indiic).val());

            }

            $("#" + destinationelement).val(total);
        }

    }



}




//prepare form data

//===================================================INSERT WEEKLY DATA===================================

var facility = null;

var month = null;
var year = null;

var enrolled_cohort_kp = null;
var enrolled_cohort_np = null;
var enrolled_cohort_total = null;
var transfers_in_kp = null;
var transfers_in_np = null;
var transfers_in_total = null;
var transfers_out_kp = null;
var transfers_out_np = null;
var transfers_out_total = null;
var netcohort_kp = null;
var netcohort_np = null;
var netcohort_total = null;
var defaulters_kp = null;
var defaulters_np = null;
var defaulters_total = null;
var ltfu_kp = null;
var ltfu_np = null;
var ltfu_total = null;
var reported_dead_kp = null;
var reported_dead_np = null;
var reported_dead_total = null;
var stopped_kp = null;
var stopped_np = null;
var stopped_total = null;
var alive_active_treat_kp = null;
var alive_active_treat_np = null;
var alive_active_treat_total = null;
var viralload_kp = null;
var viralload_np = null;
var viralload_total = null;
var suppressed_kp = null;
var suppressed_np = null;
var suppressed_total = null;
var retained_kp = null;
var retained_np = null;
var retained_total = null;
var cohort = null;
var facility = null;
var year = null;
var month = null;
var cohort = null;

//added 201605 
var progressbarstoskip = [];
var allindicatorsarray = [];
var allcommentsarray = [];
var allprogressbar_hiddentext_array = [];


function createdynamicinputs() {


    $(document).ready(function () {
        $.getJSON("indicators2.json", function (result) {
            var table = "";
            var row1 = "";
            var row2 = "";
            var count = 1;
            var currentcohort = $("#cohortttype").val().toUpperCase();
            for (a = 0; a < result.length; a++) {

                if (result[a].category === currentcohort) {

                    var indicatorname = result[a].IndicatorName;
                    var indicatorid = result[a].IndicatorID;
                    var label = result[a].Age;
                    var level = result[a].Level;
                    var inputtype = result[a].datainputtype;
                    var minimum = result[a].Min;
                    var maximum = result[a].Max;
                    var onblur = "";
                    if (result[a].onblur !== null) {
                        onblur = result[a].onblur;
                    }
                    var onkeypress = result[a].onkeypress;
                    var tdclass = result[a].tdclass;
                    var isrequired = result[a].Required;
                    var isnewrow = result[a].newrow;
                    var readonlyvar = result[a].readonly;
                    var isreadonly = "";
                    allindicatorsarray.push(indicatorid);
                    var tabindex = "";
                    if (readonlyvar === "TRUE") {

                        isreadonly = "readonly";
                        tabindex = " tabindex='-1' ";
                    }
                    var colspan = result[a].colspan;

                    if (label === 'Total' && tdclass === 'col-xs-4') {
                    }
                    if (isnewrow === 1)
                    {

                        row1 = "<tr> <td class='col-xs-12' colspan='3'> <div class='control-group'> <label> <font color='red'> <b> * </b> </font> " + indicatorname + " </label> </div> </td> </tr>";
                        count++;
                        row2 += row1;
                    } else {

                        row1 = "";
                    }
                    if (isnewrow === 1 && count === 2)
                    {
                        row2 += " <tr> ";
                    } else if (isnewrow === 1 && count > 2 && count < result.length) {
                        row2 += " </tr> <tr> ";

                    }


                    row2 += "<td class='" + tdclass + "' colspan='" + colspan + "' > <div class='control-group' > <label> " + label + " </label> <div class='controls'> <input   required='true' onkeypress='return numbers(event);' " + isreadonly + "  " + tabindex + " onblur=\"" + onblur + "\" type='tel' maxlength='4' min ='" + minimum + "' max='" + maximum + "'  name='" + indicatorid + "' id='" + indicatorid + "' class='form-control inputs'> </div> </div> </td> ";
                    //IndicatorID	Age	IndicatorName	Level	datainputtype	Min	Max	onblur	onkeypress	Class	Required


                    //now do an appending
                }
            }
            row2 += " </tr> ";

            //alert(row2);
            $("#dynamicindicators-3m").html(row2);
            $("#dynamicindicators-6m").html(row2);
            $("#dynamicindicators-12m").html(row2);
            $("#dynamicindicators-24m").html(row2);
            $("#dynamicindicators-36m").html(row2);

            // alert(result[0].IndicatorName);
        });// ned of input field loading


        //progress bar report section



    });   //end of checking if document is ready


}

createdynamicinputs();


function getmonth() {



    var year = $("#year").val();

    $.ajax({
        url: 'loadmonth?yr=' + year,
        type: 'post',
        dataType: 'html',
        success: function (mwezi) {

            $("#month").html(mwezi);
            cohortmonths();
        }
    });
}

function getFacilitiesJson() {

    var ct = $("#cohortttype").val();
    $.ajax({
        url: 'loadfacility?ct=' + ct,
        type: 'post',
        dataType: 'html',
        success: function (data) {
            $("#facilityname").html(data);
            $(document).ready(function () {

                $('#facilityname').select2();
            });
        }});

}

//load731
/**function load731() {
 var yr = $("#year").val();
 var mn = $("#month").val();
 var ct = $("#cohortttype").val();
 var fc = $("#facilityname").val();
 var cm = $("#cohortmonth").val();
 
 if (mn !== '' && ct !== '' && fc !== '' && cm !== '') {
 
 clearfields('1');
 
 $.ajax({
 url: 'enrolledFromImis?yr=' + yr + "&mn=" + mn + "&ct=" + ct + "&fc=" + fc + "&cm=" + cm,
 type: 'post',
 dataType: 'json',
 success: function (data) {
 
 
 if (ct === 'art') {
 if (1 === 2) {
 $("#1_adult").val(data.val1);
 $("#1_child").val(data.val2);
 $("#1_tl").val(data.tl);
 
 if (data.val1 !== '') {
 $("#1_adult").prop("readonly", true);
 } else {
 $("#1_adult").prop("readonly", false);
 
 }
 if (data.val2 !== '') {
 $("#1_child").prop("readonly", true);
 } else {
 $("#1_child").prop("readonly", false);
 
 }
 if (data.tl !== '') {
 $("#1_tl").prop("readonly", true);
 } else {
 $("#1_tl").prop("readonly", false);
 
 }
 }
 } else {
 //disabled from fetching data from moh731 for PMTCT
 if (1 === 2) {
 $("#1_kp").val(data.val1);
 $("#1_np").val(data.val2);
 $("#1_tl").val(data.tl);
 
 if (data.val1 !== '') {
 $("#1_kp").prop("readonly", true);
 } else {
 $("#1_kp").prop("readonly", false);
 
 }
 if (data.val2 !== '') {
 $("#1_np").prop("readonly", true);
 } else {
 
 $("#1_np").prop("readonly", false);
 }
 if (data.tl !== '') {
 $("#1_tl").prop("readonly", true);
 } else {
 $("#1_tl").prop("readonly", false);
 
 }
 
 }
 }
 
 }
 });
 
 }
 
 
 }**/
//cohortmonths

function cohortmonths() {

    var year = $("#year").val();
    var month = $("#month").val();
    var cohorttype = $("#cohortttype").val();
    $.ajax({
        url: 'getCohortMonths?yr=' + year + "&mn=" + month + "&ct=" + cohorttype,
        type: 'post',
        dataType: 'html',
        success: function (data) {

            $("#nav-pills").html(data);

        }
    });
}
cohortmonths();


function clearfields(indics) {

    var ct = $("#cohortttype").val();

    for (a = 1; a <= indics; a++) {

        //                        
        if (ct === 'art') {

            $("#" + a + "_adult").val("");
            $("#" + a + "_child").val("");
            $("#" + a + "_tl").val("");

        }
        if (ct === 'pmtct') {

            $("#" + a + "_kp").val("");
            $("#" + a + "_np").val("");
            $("#" + a + "_tl").val("");

        }

    }

}
//load the other elements

//a function to disable or enable hidden elements

function hiddenelements() {
    //var cm_ = $("#cohortmonth").val();
    var ref_this = $("ul.nav-tabs li.nav-item a.active");
    if (ref_this) {
        var cm_= ref_this.data("mn");
        console.log(cm_);
    }
    
        else{
                console.log('Cohort Month Not Selected !!!');
    }
   
    var ct_ = $("#cohortttype").val();

    if (cm_ === '3m' && ct_ === 'pmtct') {

        $("#6_kp").attr("readonly", true);
        $("#6_np").attr("readonly", true);


        //tab index
        $("#6_kp").attr("tabindex", -1);
        $("#6_np").attr("tabindex", -1);
        //$("#6_tl").attr("readonly",true);
        $("#10_np").attr("readonly", true);
        $("#11_np").attr("readonly", true);

        //tab index
        $("#10_np").attr("tabindex", -1);
        $("#11_np").attr("tabindex", -1);

        //remove the required attribute
        $("#6_kp").removeAttr("required");
        $("#6_np").removeAttr("required");
        //$("#6_tl").removeAttr("required");
        $("#10_np").removeAttr("required");
        $("#11_np").removeAttr("required");

        // set disabled elements to 0

        $("#6_np").val("0");
        $("#6_kp").val("0");
        $("#6_tl").val("0");
        $("#10_np").val("0");
        $("#11_np").val("0");

    } else if (cm_ === '6m' && ct_ === 'pmtct')
    {

        $("#10_kp").attr("readonly", true);
        $("#10_np").attr("readonly", true);

        //tabindex
        $("#10_kp").attr("tabindex", -1);
        $("#10_np").attr("tabindex", -1);
        //$("#10_tl").attr("readonly",true);

        $("#11_kp").attr("readonly", true);
        $("#11_np").attr("readonly", true);
        // $("#11_tl").attr("readonly",true);

        //tabindex
        $("#11_kp").attr("tabindex", -1);
        $("#11_np").attr("tabindex", -1);

        $("#10_kp").removeAttr("required");
        $("#10_np").removeAttr("required");
        // $("#10_tl").removeAttr("required");

        $("#11_kp").removeAttr("required");
        $("#11_np").removeAttr("required");
        //  $("#11_tl").removeAttr("required");     
        //========
        $("#10_np").val("0");
        $("#11_np").val("0");


    } else if (cm_ === '6m' && ct_ === 'art')
    {

        $("#10_child").attr("readonly", true);
        $("#10_adult").attr("readonly", true);

        //tabindex
        $("#10_child").attr("tabindex", -1);
        $("#10_adult").attr("tabindex", -1);
        //$("#10_tl").attr("readonly",true);

        $("#11_child").attr("readonly", true);
        $("#11_adult").attr("readonly", true);
        // $("#11_tl").attr("readonly",true);

        //tabindex
        $("#11_child").attr("tabindex", -1);
        $("#11_adult").attr("tabindex", -1);

        $("#10_adult").removeAttr("required");
        $("#10_adult").removeAttr("required");
        // $("#10_tl").removeAttr("required");

        $("#11_child").removeAttr("required");
        $("#11_adult").removeAttr("required");
        //$("#11_tl").removeAttr("required");     
        //========
        $("#10_child").val("0");
        $("#11_adult").val("0");


    } else if (cm_ === '3m' && ct_ === 'art') {


        $("#6_child").attr("readonly", true);
        $("#6_adult").attr("readonly", true);


        $("#10_child").attr("readonly", true);
        $("#10_adult").attr("readonly", true);

        $("#11_child").attr("readonly", true);
        $("#11_adult").attr("readonly", true);


        //tab index
        $("#6_child").attr("tabindex", -1);
        $("#6_adult").attr("tabindex", -1);

        $("#10_child").attr("tabindex", -1);
        $("#10_adult").attr("tabindex", -1);

        $("#11_child").attr("tabindex", -1);
        $("#11_adult").attr("tabindex", -1);

        //$("#6_tl").attr("readonly",true);

        //tab index      

        //remove the required attribute
        $("#6_adult").removeAttr("required");
        $("#6_child").removeAttr("required");

        $("#10_adult").removeAttr("required");
        $("#10_child").removeAttr("required");

        $("#11_adult").removeAttr("required");
        $("#11_child").removeAttr("required");
        //$("#6_tl").removeAttr("required");


        // set disabled elements to 0

        $("#6_adult").val("0");
        $("#6_child").val("0");
        $("#6_tl").val("0");


        $("#10_adult").val("0");
        $("#10_child").val("0");
        $("#10_tl").val("0");

        $("#11_adult").val("0");
        $("#11_child").val("0");
        $("#11_tl").val("0");



    } else {

        if (ct_ === 'pmtct') {

            $("#10_kp").removeAttr("readonly");
            $("#10_np").removeAttr("readonly");

            $("#10_kp").removeAttr("tabindex");
            $("#10_np").removeAttr("tabindex");
            //  $("#10_tl").removeAttr("readonly");

            $("#11_kp").removeAttr("readonly");
            $("#11_np").removeAttr("readonly");

            $("#11_kp").removeAttr("tabindex");
            $("#11_np").removeAttr("tabindex");
            // $("#11_tl").removeAttr("readonly");

            $("#6_kp").removeAttr("readonly");
            $("#6_np").removeAttr("readonly");

            $("#6_kp").removeAttr("tabindex");
            $("#6_np").removeAttr("tabindex");
            //   $("#6_tl").removeAttr("readonly");


            $("#10_kp").attr("required", true);
            $("#10_np").attr("required", true);
            //   $("#10_tl").attr("required",true);

            $("#11_kp").attr("required", true);
            $("#11_np").attr("required", true);
            //   $("#11_tl").attr("required",true);

            $("#6_kp").attr("required", true);
            $("#6_np").attr("required", true);
            //  $("#6_tl").attr("required",true);


        } else {


            $("#10_adult").removeAttr("readonly");
            $("#10_child").removeAttr("readonly");

            $("#10_adult").removeAttr("tabindex");
            $("#10_child").removeAttr("tabindex");
            //  $("#10_tl").removeAttr("readonly");

            $("#11_adult").removeAttr("readonly");
            $("#11_child").removeAttr("readonly");

            $("#11_adult").removeAttr("tabindex");
            $("#11_child").removeAttr("tabindex");
            // $("#11_tl").removeAttr("readonly");

            $("#6_adult").removeAttr("readonly");
            $("#6_child").removeAttr("readonly");

            $("#6_adult").removeAttr("tabindex");
            $("#6_child").removeAttr("tabindex");
            //   $("#6_tl").removeAttr("readonly");


            $("#10_adult").attr("required", true);
            $("#10_child").attr("required", true);
            //   $("#10_tl").attr("required",true);

            $("#11_adult").attr("required", true);
            $("#11_child").attr("required", true);
            //   $("#11_tl").attr("required",true);

            $("#6_adult").attr("required", true);
            $("#6_child").attr("required", true);
            //  $("#6_tl").attr("required",true);


        }

    }



}


function isdisplayindicators()
{
    var yr = $("#year").val();
    var mn = $("#month").val();
   // var cm = $("#cohortmonth").val();
    var ref_this = $("ul.nav-tabs li.nav-item a.active span.hidden_id");
    if (ref_this) {
        var cm = ref_this.data("mn");
        console.log(cm);
    }
    
        else{
                console.log('Cohort Month Not Selected !!!');
    }
    var fc = $("#facilityname").val();

    if (yr !== '' && mn !== '' && cm !== '' && fc !== '' && fc !== 'Select Facility')
    {
        // display facility name
        $("#dynamicindicators-3m").show();
        $("#dynamicindicators-6m").show();
        $("#dynamicindicators-12m").show();
        $("#dynamicindicators-24m").show();
        $("#dynamicindicators-36m").show();
    } else
    {
        $("#dynamicindicators-3m").hide();
        $("#dynamicindicators-6m").hide();
        $("#dynamicindicators-12m").hide();
        $("#dynamicindicators-24m").hide();
        $("#dynamicindicators-36m").hide();
        //        
    }


}

function loadcohorts() {

    var yr = $("#year").val();
    var mn = $("#month").val();
    var ct = $("#cohortttype").val();
    var fc = $("#facilityname").val();
    var ref_this = $("ul.nav-tabs li.nav-item a.active");
    if (ref_this) {
        var cm = ref_this.data("mn");
        console.log(cm);
    }
    
        else{
                console.log('Cohort Month Not Selected !!!');
    }

    if (mn !== '' && ct !== '' && fc !== '' && cm !== '') {
        clearfields('12');
        $.ajax({
            url: 'loadSavedCohort2?yr=' + yr + "&mn=" + mn + "&ct=" + ct + "&fc=" + fc + "&cm=" + cm,
            type: 'post',
            dataType: 'json',
            success: function (data) {

                //alert(data.length);
                var a = 1;
                //display the values first
                for (a = 1; a <= data.length; a++) {

                    //                        
                    if (ct === 'art') {
                        if (data[a - 1].val1 !== '') {
                            $("#" + a + "_adult").val(data[a - 1].val1);
                            $("#" + a + "_child").val(data[a - 1].val2);
                            $("#" + a + "_tl").val(data[a - 1].val3);
                            $("#" + a + "_adult").blur();
                            $("#" + a + "_child").blur();
                        }
                    }
                    if (ct === 'pmtct') {
                        if (data[a - 1].val1 !== '') {
                            $("#" + a + "_kp").val(data[a - 1].val1);
                            $("#" + a + "_np").val(data[a - 1].val2);
                            $("#" + a + "_tl").val(data[a - 1].val3);
                            $("#" + a + "_kp").blur();
                            $("#" + a + "_np").blur();
                        }

                    }//end of ifs
                }



                //=============blur===============
                for (a = 1; a <= data.length; a++) {

                    //                        
                    if (ct === 'art') {
                        // if(data[a-1].val1!==''){                           
                        $("#" + a + "_adult").blur();
                        $("#" + a + "_child").blur();
                        //}
                    }
                    if (ct === 'pmtct') {
                        // if(data[a-1].val1!==''){                           
                        $("#" + a + "_kp").blur();
                        $("#" + a + "_np").blur();
                        // }

                    }//end of ifs
                }


            }
        });

    }


}


function validatefacility() {

    var returnval = true;

    var facil = $("#facilityname").val();



    if (facil === '' || facil === 'Select Facility')
    {

        alert('Select facility');
        //$("#facilityname select:first").focus();

        // $("#facilityname").css('border-color','red');
        //$("select:first").focus();
        $("#facilityname").focus();
        returnval = false;
    }


    return returnval;

}

function clickreportstab() {

    $('#reportsbutton').click();
}





