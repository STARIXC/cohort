
/**
 * Comment
 */
function updatecohorttypes(){
    console.log("am here");
 var ct=$("#cohortttypemain").val();
 //alert("running"+selectedct);

    $.ajax({
        url: 'getCohortTypes?ct=' + ct,
        type: 'post',
        dataType: 'html',
        success: function (data) {

            $("select#cohorttype-3").html(data);
        }
    });
 
 }
 function updateyear() {
    
}
function updatemonth(){}
function updatefacility(){}

