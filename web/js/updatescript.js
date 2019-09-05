
   function loadctype() {
      var ct=$('.cohortttypemain').val();
       $.ajax({
        url: 'getCohortTypes?ct='+ct,
        type: 'GET',
        success: function (data)
        {
            $(".cohorttype").html(data);
          //  $(".cohorttype6").html(data);
            //getFacilitiesJson();
     
        },
        error: function (error) {
            //$("#cohorttype").html(error);
            console.log(error);
        }
    });
    }
    loadctype();

   function loadry() {
      var ry=$('.ryear').val();
       $.ajax({
        url: 'cohortyr?ry='+ry,
        type: 'POST',
        success: function (data)
        {
            $(".year").html(data);
            //$("#year6").html(data);
     
        },
        error: function (error) {
            //$("#cohorttype").html(error);
            console.log(error);
        }
    });
    }
    loadry();
   function loadmn() {
      var mn=$('.montht').val();
       $.ajax({
        url: 'mnthselected?mn='+mn,
        type: 'POST',
        success: function (data)
        {
            $(".month").html(data);
           // $("#month6").html(data);
     
        },
        error: function (error) {
            //$("#cohorttype").html(error);
            console.log(error);
        }
    });
    }
    loadmn();
function updatefacility(){

    var ct = $(".cohorttypemain").val();
    var sf=$(".facilitynamet").val();
    $.ajax({
        url: 'selectedfacility?sf=' + sf+'ct='+ct,
        type: 'post',
        dataType: 'html',
        success: function (data) {
            $(".facilityname").html(data);
            //$("#facilityname6").html(data);
            $(document).ready(function () {
                $('.facilityname').select2();
               // $('#facilityname6').select2();
            });
        }});

}
updatefacility();

