

$("#save-3months").click(function () {
    validatedata();
    save3months();

});
function save3months() {
    var cohorttype = $('#cohorttype').val();
    var year = $('#year').val();
    var month = $('#month').val();
    var cohortmonth = $('#cohortmonth').val();
    var facilityname = $('#facilityname').val();
    //create varaibles that will be send in a url String to savedata servlet
    var dataString = "cohorttype=" + cohorttype +
            "&year=" + year +
            "&month=" + month +
            "&cohortmonth=" + cohortmonth +
            "&facilityname=" + facilityname;



    // navigator.serviceWorker.controller.postMessage(msg);
    $.ajax({
        type: 'POST',
        url: "./multisave",
        data: dataString,
        success: function (result)
        {
            /**  setTimeout(function () {
             $('#loading').html(result);
             $('#form_data')[0].reset();
             }, 2000);**/
            // $('#form_data')[0].reset();
            alert("Data Saved Successfully");
        },
        error: function () {
            alert('Sorry !This didn\'t work . Please Contact the Admin');
        }
    });
}
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


var allindicatorsarray = [];

function createdynamicinputs() {
    $(document).ready(function () {
        $.getJSON("combinedindicators.json", function (result) {
            var table = "";
            var row1 = "";
            var row2 = "";
            var count = 1;
            var currentcohort = $(".cohorttype")
                    .val()
                    .toUpperCase();
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

                    if (label === "Total" && tdclass === "col-xs-4") {
                    }
                    if (isnewrow === 1) {
                        row1 =
                                "<tr> <td class='col-xs-12' colspan='100%'> <div class='control-group'> <label> <font color='red'> <b> * </b> </font> " +
                                indicatorname +
                                " </label> </div> </td> </tr>";
                        count++;
                        row2 += row1;
                    } else {
                        row1 = "";
                    }
                    if (isnewrow === 1 && count === 2) {
                        row2 += " <tr> ";
                    } else if (isnewrow === 1 && count > 2 && count < result.length) {
                        row2 += " </tr> <tr> ";
                    }

                    row2 +=
                            "<td class='" +
                            tdclass +
                            "' colspan='" +
                            colspan +
                            "' > <div class='control-group' > <label> " +
                            label +
                            " </label> <div class='controls'> <input   required='true' onkeypress='return numbers(event);' " +
                            isreadonly +
                            "  " +
                            tabindex +
                            ' onblur="' +
                            onblur +
                            "\" type='tel' maxlength='4' min ='" +
                            minimum +
                            "' max='" +
                            maximum +
                            "'  name='" +
                            indicatorid +
                            "' id='" +
                            indicatorid +
                            "' class='form-control inputs'> </div> </div> </td> ";
                    //IndicatorID	Age	IndicatorName	Level	datainputtype	Min	Max	onblur	onkeypress	Class	Required

                    //now do an appending
                }
            }
            row2 += " </tr> ";

            //alert(row2);
            $("#dynamicindicators").html(row2);
            $("#dynamicindicators6").html(row2);

            // alert(result[0].IndicatorName);
        }); // ned of input field loading

        //progress bar report section
    }); //end of checking if document is ready
}

createdynamicinputs();
function getFacilitiesJson() {

    var ct = $(".cohorttypemain").val();
    $.ajax({
        url: 'loadfacility?ct=' + ct,
        type: 'post',
        dataType: 'html',
        success: function (data) {
            $(".facilitynamet").html(data);
            $(document).ready(function () {
                $('.facilitynamet').select2();

            });
        }});

}
getFacilitiesJson();


function cohortmonths() {

    var year = $(".year").val();
    var month = $(".montht").val();
    var cohorttype = $(".cohorttype").val();
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

    var ct = $(".cohortttype").val();

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
         if (ct === 'stf') {

            $("#" + a + "_child").val("");
            $("#" + a + "_adult").val("");
            $("#" + a + "_ayp").val("");
            $("#" + a + "_tl").val("");

        }
         if (ct === 'defaulter') {

            $("#" + a + "_np").val("");
            $("#" + a + "_def").val("");
            $("#" + a + "_tl").val("");

        }

    }

}
//load the other elements

//a function to disable or enable hidden elements


function hiddenelements() {
    var cm_ = $(".cohortmonth").val();
    //var cm_ = $("#nav-pills li > a.nav-link.active > span.hidden_id").data("mn");
    var ct_ = $(".cohortttype").val();

    if (cm_ === "3m" && ct_ === "pmtct") {
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
    } else if (cm_ === "9m" && ct_ === "pmtct") {
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
    } else if (cm_ === "9m" && ct_ === "art") {
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
    } else if (cm_ === "3m" && ct_ === "art") {
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
    }
    else if (cm_ === "9m" && ct_ === "stf") {
        $("#10_child").attr("readonly", true);
        $("#10_adult").attr("readonly", true);
        $("#10_ayp").attr("readonly", true);

        //tabindex
        $("#10_child").attr("tabindex", -1);
        $("#10_adult").attr("tabindex", -1);
        $("#10_ayp").attr("tabindex", -1);
        //$("#10_tl").attr("readonly",true);

        $("#11_child").attr("readonly", true);
        $("#11_adult").attr("readonly", true);
        $("#11_ayp").attr("readonly", true);
        // $("#11_tl").attr("readonly",true);

        //tabindex
        $("#11_child").attr("tabindex", -1);
        $("#11_adult").attr("tabindex", -1);
        $("#11_ayp").attr("tabindex", -1);

        $("#10_adult").removeAttr("required");
        $("#10_adult").removeAttr("required");
        $("#10_ayp").removeAttr("required");
        // $("#10_tl").removeAttr("required");

        $("#11_child").removeAttr("required");
        $("#11_adult").removeAttr("required");
        $("#11_ayp").removeAttr("required");
        //$("#11_tl").removeAttr("required");
        //========
        $("#10_child").val("0");
        $("#11_adult").val("0");
        $("#11_aypt").val("0");
    }
    else if (cm_ === "3m" && ct_ === "stf") {
        $("#6_child").attr("readonly", true);
        $("#6_adult").attr("readonly", true);
        $("#6_ayp").attr("readonly", true);

        $("#10_child").attr("readonly", true);
        $("#10_adult").attr("readonly", true);
        $("#10_ayp").attr("readonly", true);

        $("#11_child").attr("readonly", true);
        $("#11_adult").attr("readonly", true);
        $("#11_ayp").attr("readonly", true);

        //tab index
        $("#6_child").attr("tabindex", -1);
        $("#6_adult").attr("tabindex", -1);
        $("#6_ayp").attr("tabindex", -1);

        $("#10_child").attr("tabindex", -1);
        $("#10_adult").attr("tabindex", -1);
        $("#10_ayp").attr("tabindex", -1);

        $("#11_child").attr("tabindex", -1);
        $("#11_adult").attr("tabindex", -1);
        $("#11_ayp").attr("tabindex", -1);

        //$("#6_tl").attr("readonly",true);

        //tab index

        //remove the required attribute
        $("#6_adult").removeAttr("required");
        $("#6_child").removeAttr("required");
        $("#6_ayp").removeAttr("required");

        $("#10_adult").removeAttr("required");
        $("#10_child").removeAttr("required");
        $("#10_ayp").removeAttr("required");

        $("#11_adult").removeAttr("required");
        $("#11_child").removeAttr("required");
        $("#11_ayp").removeAttr("required");
        //$("#6_tl").removeAttr("required");

        // set disabled elements to 0

        $("#6_adult").val("0");
        $("#6_child").val("0");
        $("#6_ayp").val("0");
        $("#6_tl").val("0");

        $("#10_adult").val("0");
        $("#10_child").val("0");
        $("#10_ayp").val("0");
        $("#10_tl").val("0");

        $("#11_adult").val("0");
        $("#11_child").val("0");
        $("#11_ayp").val("0");
        $("#11_tl").val("0");
    } 
    else if (cm_ === "9m" && ct_ === "defaulter") {
        $("#10_np").attr("readonly", true);
        $("#10_def").attr("readonly", true);

        //tabindex
        $("#10_np").attr("tabindex", -1);
        $("#10_def").attr("tabindex", -1);

        //$("#10_tl").attr("readonly",true);

        $("#11_np").attr("readonly", true);
        $("#11_def").attr("readonly", true);

        // $("#11_tl").attr("readonly",true);

        //tabindex
        $("#11_np").attr("tabindex", -1);
        $("#11_def").attr("tabindex", -1);

        $("#10_def").removeAttr("required");
        $("#10_def").removeAttr("required");

        // $("#10_tl").removeAttr("required");

        $("#11_np").removeAttr("required");
        $("#11_def").removeAttr("required");

        //$("#11_tl").removeAttr("required");
        //========
        $("#10_np").val("0");
        $("#11_def").val("0");
    }
    else if (cm_ === "3m" && ct_ === "defaulter") {
        $("#6_np").attr("readonly", true);
        $("#6_def").attr("readonly", true);

        $("#10_np").attr("readonly", true);
        $("#10_def").attr("readonly", true);

        $("#11_np").attr("readonly", true);
        $("#11_def").attr("readonly", true);
        $("#12_np").attr("readonly", true);
        $("#12_def").attr("readonly", true);
        $("#13_np").attr("readonly", true);
        $("#13_def").attr("readonly", true);

        //tab index
        $("#6_np").attr("tabindex", -1);
        $("#6_def").attr("tabindex", -1);

        $("#10_np").attr("tabindex", -1);
        $("#10_def").attr("tabindex", -1);

        $("#11_np").attr("tabindex", -1);
        $("#11_def").attr("tabindex", -1);
        
        $("#12_np").attr("tabindex", -1);
        $("#12_def").attr("tabindex", -1);
        
        $("#13_np").attr("tabindex", -1);
        $("#13_def").attr("tabindex", -1);

        //$("#6_tl").attr("readonly",true);

        //tab index

        //remove the required attribute
        $("#6_def").removeAttr("required");
        $("#6_np").removeAttr("required");

        $("#10_def").removeAttr("required");
        $("#10_np").removeAttr("required");

        $("#11_def").removeAttr("required");
        $("#11_np").removeAttr("required");

        $("#12_def").removeAttr("required");
        $("#12_np").removeAttr("required");

        $("#13_def").removeAttr("required");
        $("#13_np").removeAttr("required");

        //$("#6_tl").removeAttr("required");

        // set disabled elements to 0

        $("#6_def").val("0");
        $("#6_np").val("0");

        $("#6_tl").val("0");

        $("#10_def").val("0");
        $("#10_np").val("0");

        $("#10_tl").val("0");

        $("#11_def").val("0");
        $("#11_np").val("0");

        $("#11_tl").val("0");

        $("#12_def").val("0");
        $("#12_np").val("0");

        $("#12_tl").val("0");

        $("#13_def").val("0");
        $("#13_np").val("0");

        $("#13_tl").val("0");
    }
    else {
        if (ct_ === "pmtct") {
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
        }
        else if (ct_ === "art") 
        {
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
        else if (ct_ === "stf") {
            $("#10_adult").removeAttr("readonly");
            $("#10_child").removeAttr("readonly");
            $("#10_ayp").removeAttr("readonly");

            $("#10_adult").removeAttr("tabindex");
            $("#10_child").removeAttr("tabindex");
            $("#10_ayp").removeAttr("tabindex");
            //  $("#10_tl").removeAttr("readonly");

            $("#11_adult").removeAttr("readonly");
            $("#11_child").removeAttr("readonly");
            $("#11_ayp").removeAttr("readonly");

            $("#11_adult").removeAttr("tabindex");
            $("#11_child").removeAttr("tabindex");
            $("#11_ayp").removeAttr("tabindex");
            // $("#11_tl").removeAttr("readonly");

            $("#6_adult").removeAttr("readonly");
            $("#6_child").removeAttr("readonly");
            $("#6_ayp").removeAttr("readonly");

            $("#6_adult").removeAttr("tabindex");
            $("#6_child").removeAttr("tabindex");
            $("#6_ayp").removeAttr("tabindex");
            //   $("#6_tl").removeAttr("readonly");

            $("#10_adult").attr("required", true);
            $("#10_child").attr("required", true);
            $("#10_ayp").attr("required", true);
            //   $("#10_tl").attr("required",true);

            $("#11_adult").attr("required", true);
            $("#11_child").attr("required", true);
            $("#11_ayp").attr("required", true);
            //   $("#11_tl").attr("required",true);

            $("#6_adult").attr("required", true);
            $("#6_child").attr("required", true);
            $("#6_ayp").attr("required", true);
            //  $("#6_tl").attr("required",true);
        } 
        else {
            $("#10_np").removeAttr("readonly");
            $("#10_def").removeAttr("readonly");

            $("#10_np").removeAttr("tabindex");
            $("#10_def").removeAttr("tabindex");
            //  $("#10_tl").removeAttr("readonly");

            $("#11_np").removeAttr("readonly");
            $("#11_def").removeAttr("readonly");

            $("#11_np").removeAttr("tabindex");
            $("#11_def").removeAttr("tabindex");
            // $("#11_tl").removeAttr("readonly");

            $("#6_np").removeAttr("readonly");
            $("#6_def").removeAttr("readonly");

            $("#6_np").removeAttr("tabindex");
            $("#6_def").removeAttr("tabindex");
            //   $("#6_tl").removeAttr("readonly");

            $("#10_np").attr("required", true);
            $("#10_def").attr("required", true);
            //   $("#10_tl").attr("required",true);

            $("#11_np").attr("required", true);
            $("#11_def").attr("required", true);
            //   $("#11_tl").attr("required",true);

            $("#6_np").attr("required", true);
            $("#6_def").attr("required", true);
            //  $("#6_tl").attr("required",true);
        }
    }
}

function isdisplayindicators() {
    var yr = $(".year").val();
    var mn = $(".month").val();
    var cm = $(".cohortmonth").val();
    var fc = $(".facilityname").val();

    if (
            yr !== "" &&
            mn !== "" &&
            cm !== "" &&
            fc !== "" &&
            fc !== "Select Facility"
            ) {
        // display facility name
        $(".dynamicindicators").show();
        //$("#dynamicindicators6").show();
    } else {
        $(".dynamicindicators").hide();
        // $("#dynamicindicators6").hide();

        //
    }
}
//loadCohorts
function loadcohorts() {

    var yr = $(".year").val();
    var mn = $(".month").val();
    var ct = $(".cohortttypemain").val();
    var fc = $(".facilityname").val();
    var cm = $(".cohortmonth").val();

    console.log(ct);

    if (mn !== "" && ct !== "" && fc !== "" && cm !== "") {
        clearfields("12");
        $.ajax({
            url:
                    "loadSavedCohort2?yr=" +
                    yr +
                    "&mn=" +
                    mn +
                    "&ct=" +
                    ct +
                    "&fc=" +
                    fc +
                    "&cm=" +
                    cm,
            type: "post",
            dataType: "json",
            success: function (data) {
                //alert(data.length);
                var a = 1;
                //display the values first
                for (a = 1; a <= data.length; a++) {
                    //
                    if (ct === "art") {
                        if (data[a - 1].val1 !== "") {
                            $("#" + a + "_adult").val(data[a - 1].val1);
                            $("#" + a + "_child").val(data[a - 1].val2);
                            $("#" + a + "_tl").val(data[a - 1].val3);
                            $("#" + a + "_adult").blur();
                            $("#" + a + "_child").blur();
                        }
                    }
                    if (ct === "pmtct") {
                        if (data[a - 1].val1 !== "") {
                            $("#" + a + "_kp").val(data[a - 1].val1);
                            $("#" + a + "_np").val(data[a - 1].val2);
                            $("#" + a + "_tl").val(data[a - 1].val3);
                            $("#" + a + "_kp").blur();
                            $("#" + a + "_np").blur();
                        }
                    }
                    if (ct === "stf") {
                        if (data[a - 1].val1 !== "") {
                            $("#" + a + "_child").val(data[a - 1].val1);
                            $("#" + a + "_adult").val(data[a - 1].val2);
                            $("#" + a + "_ayp").val(data[a - 1].val3);
                            $("#" + a + "_tl").val(data[a - 1].val4);
                            $("#" + a + "_child").blur();
                            $("#" + a + "_adult").blur();
                            $("#" + a + "_ayp").blur();
                        }
                    }
                    if (ct === "defaulter") {
                        if (data[a - 1].val1 !== "") {
                            $("#" + a + "_np").val(data[a - 1].val1);
                            $("#" + a + "_def").val(data[a - 1].val2);
                            $("#" + a + "_tl").val(data[a - 1].val3);
                            $("#" + a + "_np").blur();
                            $("#" + a + "_def").blur();
                        }
                    }

                    //end of ifs
                }

                //=============blur===============
                for (a = 1; a <= data.length; a++) {
                    //
                    if (ct === "art") {
                        // if(data[a-1].val1!==''){
                        $("#" + a + "_adult").blur();
                        $("#" + a + "_child").blur();
                        //}
                    }
                    if (ct === "pmtct") {
                        // if(data[a-1].val1!==''){
                        $("#" + a + "_kp").blur();
                        $("#" + a + "_np").blur();
                        // }
                    }
                    if (ct === "stf") {
                        // if(data[a-1].val1!==''){
                        $("#" + a + "_child").blur();
                        $("#" + a + "_adult").blur();
                        $("#" + a + "_ayp").blur();
                        // }
                    }
                    if (ct === "defaulter") {
                        // if(data[a-1].val1!==''){
                        $("#" + a + "_np").blur();
                        $("#" + a + "_def").blur();

                        // }
                    }
                    //end of ifs
                }
            }
        });
    }
}



function validatefacility() {

    var returnval = true;

    var facil = $(".facilityname").val();



    if (facil === '' || facil === 'Select Facility')
    {

        alert('Select facility');
        //$("#facilityname select:first").focus();

        // $("#facilityname").css('border-color','red');
        //$("select:first").focus();
        $(".facilityname").focus();
        returnval = false;
    }


    return returnval;

}

function clickreportstab() {

    $('#reportsbutton').click();
}

//========================================201605 custom percentage calculator======================================

//function fillprogressbar(numer,denomin,progressbarid,datavalueid,cmts){

function percentageindicators(numer, denomin, datavalueid) {
    //console.log(datavalueid+" "+datavalueid.indexOf("adult"));
    // console.log(" "+cmts);

    var numerator = $("#" + numer).val();
    var denominator = $("#" + denomin).val();
    if (denominator !== "" && numerator !== "") {
        //console.log(denomin+" "+denominator);
        //console.log(numer+" "+numerator);
        var numeratordenominatorvalues = numerator + "/" + denominator;
        var perc = "0";
        if (denominator === "0") {
            perc = 0;
        } else if (denominator === "" || numerator === "") {
            perc = 0;
        } else {
            perc = Math.round((parseInt(numerator) / parseInt(denominator)) * 100);
        }
        savepercents(perc, datavalueid);
        //edit graph for display
        //if den and num are not blanks
        if (numerator !== "" && denominator !== "") {
            $("#" + datavalueid).val(perc);

            if (perc >= 90) {
                //$("#"+datavalueid).css('background-color','green');
            } else if (perc < 90) {
                // $("#"+datavalueid).css('background-color','red');
            }
        }
    }
} //end of function

//===================This function excecutes all percent calculation functions on loading and editin module
function loadallpercents() {
    for (c = 0; c < allindicatorsarray.length; c++) {
        if (allindicatorsarray[c].indexOf("total") === -1) {
            //call the functions in the onblur method
            // $("#"+allindicatorsarray[c]).trigger("blur");
            $("#" + allindicatorsarray[c]).blur();
        }
    }
}

function savepercents(percent, percentname) {
    var id = $("#rowid").val();

    var percentagevalue = percent;

    $("#" + percentname).val(percentagevalue);

    if (percent !== "" && percent !== "NaN") {

        $("#" + percentname).val(percentagevalue);
    }
}

function validatedata() {

    var returnval = true;

    var valtl = $("#9_tl").val();
    var vltl = $("#10_tl").val();
    var vlsup = $("#11_tl").val();

    var ct = $("#cohorttype").val();
    if (valtl.indexOf("-") >= 0) {
        alert(
                "Ensure that  Defaulters + LTFU + Dead + Stopped + Alive and Active = Total Net Cohort"
                );
        $("#9_tl").focus();
        $("#9_tl").css("background-color", "red");
        $("#9_tl").css("color", "white");

        returnval = false;
    } else if (parseInt(vlsup) > parseInt(vltl)) {
        alert(
                "Ensure that Total Viral Suppressed is less than or equal to Total Viral Load Collected "
                );
        $("#11_tl").focus();
        $("#11_tl").css("background-color", "red");
        $("#11_tl").css("color", "white");

        returnval = false;
    } else {
        $("#9_tl").css("background-color", "#eee");
        $("#9_tl").css("color", "#555");

        $("#11_tl").css("background-color", "#ffffff");
        $("#11_tl").css("color", "black");
        returnval = true;

    }
    return returnval;
}
$("#nav-home").on("keydown", "input, select, textarea", function (e) {
    var self = $(this),
            form = self.parents("form:eq(0)"),
            focusable,
            next;
    if (e.keyCode === 13) {
        focusable = form.find("input,a,select,button,textarea").filter(":visible");
        next = focusable.eq(focusable.index(this) + 1);
        if (next.length) {
            next.focus();
        } else {
            form.submit();
        }
        return false;
    }
});
$("#nav-3months").on("keydown", "input, select, textarea", function (e) {
    var self = $(this),
            form = self.parents("form:eq(0)"),
            focusable,
            next;
    if (e.keyCode === 13) {
        focusable = form.find("input,a,select,button,textarea").filter(":visible");
        next = focusable.eq(focusable.index(this) + 1);
        if (next.length) {
            next.focus();
        } else {
            form.submit();
        }
        return false;
    }
});
//Codes to prevent default form submission

$("#userform").submit(function (e) {
    return false;
});
//page refresh

function delayedrefresh()
{
    window.location.reload();
    //clearweeklyfields();
}

function ClientCCC() {

    $("#submittername").text("testing");
}


