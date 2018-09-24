/**
 * Created by PhpStorm.
 * User: Erwin Jobse
 * Date: 9/20/2018
 * Time: 8:47 AM
 */
$(function() {

    $("#contactForm input,#contactForm textarea").jqBootstrapValidation({
        preventSubmit: true,
        submitError: function($form, event, errors) {
            // additional error messages or events
        },
        submitSuccess: function($form, event) {
            event.preventDefault(); // prevent default submit behaviour
            // get values from FORM
            var Artikelnaam = $("input#Artikelnaam").val();
            var omschrijving = $("input#omschrijving").val();

            var post_url = $(this).attr("action"); //get form action url


            $this = $("#sendMessageButton");
            $this.prop("disabled", true); // Disable submit button until AJAX call is complete to prevent duplicate messages
            $.ajax({
                url: 'http://localhost/risiriplugin/wp-content/themes/risiri/addArtikel.php',
                type: "POST",
                data: {
                    Artikelnaam: Artikelnaam,
                    omschrijving: omschrijving,

                },

                cache: false,
                success: function() {
                    // Success message
                    $('#success').html("<div class='alert alert-success'>");
                    $('#success > .alert-success').html("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;")
                        .append("</button>");
                    $('#success > .alert-success')
                        .append("<strong>added </strong>");
                    $('#success > .alert-success')
                        .append('</div>');
                    //clear all fields
                    $('#contactForm').trigger("reset");
                    var table = document.getElementById("data-artikelen");
                    var row = table.insertRow(-1);
                    var cell1 = row.insertCell(0);
                    var cell2 = row.insertCell(1);
                    var cell3 = row.insertCell(2);
                    var cell4 = row.insertCell(3);
                    var cell5 = row.insertCell(4);

                    cell1.innerHTML = "NEW CELL1";
                    cell2.innerHTML = Artikelnaam;
                    cell3.innerHTML = "NEW CELL1";
                    cell4.innerHTML = omschrijving;
                    cell5.innerHTML = "NEW CELL1";

                },
                error: function() {
                    // Fail message
                    $('#success').html("<div class='alert alert-danger'>");
                    $('#success > .alert-danger').html("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;")
                        .append("</button>");
                    $('#success > .alert-danger').append($("<strong>").text("Sorry, it seems that my server is not responding. Please try again later!"));
                    $('#success > .alert-danger').append('</div>');
                    //clear all fields
                    $('#contactForm').trigger("reset");

                },
                complete: function() {
                    setTimeout(function() {
                        $this.prop("disabled", false); // Re-enable submit button when AJAX call is complete
                    }, 1000);
                }
            });
        },
        filter: function() {
            return $(this).is(":visible");
        },
    });

    $("a[data-toggle=\"tab\"]").click(function(e) {
        e.preventDefault();
        $(this).tab("show");
    });
});

/*When clicking on Full hide fail/success boxes */
$('#name').focus(function() {
    $('#success').html('');
});

/**
 <form name="sentMessage" id="contactForm">
 <input class="form-control" id="name"  required data-validation-required-message="Please enter your name.">






 <button type="submit"  id="sendMessageButton" >Send</button>




 </form>

 */