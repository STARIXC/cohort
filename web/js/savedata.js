// Submit form with Event Handler function.
$("#btn_event").click(function() {
var name = $("#name").val();
var email = $("#email").val();

$("#form_id").submit(function() {
alert('Form is submitting....');
//or Do Something...
return true;
});
$("#form_id").submit(); // Form Submission
alert(" Name : " + name + " n Email : " + email + "nn Form Submitted Successfully......");

});
