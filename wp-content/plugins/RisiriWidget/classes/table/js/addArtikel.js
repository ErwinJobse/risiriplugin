/**
 * Created by PhpStorm.
 * User: Erwin Jobse
 * Date: 9/20/2018
 * Time: 8:47 AM
 */
$(function () {

    $("#addArtikel input,#addArtikel textarea").jqBootstrapValidation({
        preventSubmit: true,
        submitError: function ($form, event, errors) {
            // additional error messages or events
        },
        submitSuccess: function ($form, event) {
            event.preventDefault(); // prevent default submit behaviour
            // get values from FORM
            var Artikelnaam = $("input#Artikelnaam").val();
            var omschrijving = $("input#omschrijving").val();

            var post_url = $(this).attr("action"); //get form action url


            $this = $("#addArtikelButton");
            $this.prop("disabled", true); // Disable submit button until AJAX call is complete to prevent duplicate messages
            $.ajax({
                url: $form.attr('action'),
                type: "POST",
                data: {
                    Artikelnaam: Artikelnaam,
                    omschrijving: omschrijving,

                },

                cache: false,
                success: function (data) {
                    // Success message
                    $('#success').html("<div class='alert alert-success'>");
                    $('#success > .alert-success').html("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;")
                        .append("</button>");
                    $('#success > .alert-success')
                        .append("<strong>" + Artikelnaam + " toegevoegd aan Artikelen</strong>");
                    $('#success > .alert-success')
                        .append('</div>');
                    //clear all fields
                    $('#addArtikel').trigger("reset");


                    var phpReturn = JSON.parse(data);



                    var table = document.getElementById("data-artikelen");
                    var row = table.insertRow(-1);
                    var cell1 = row.insertCell(0);
                    var cell2 = row.insertCell(1);
                    var cell3 = row.insertCell(2);
                    var cell4 = row.insertCell(3);
                    var cell5 = row.insertCell(4);

                    cell1.innerHTML = phpReturn[0].Artikelnummer; //fixme
                    cell2.innerHTML = phpReturn[0].Artikelnaam;
                    cell3.innerHTML = phpReturn[0].Aanmaakdatum;
                    cell4.innerHTML = phpReturn[0].omschrijving;
                    cell5.innerHTML = "<button type=\"submit\" class=\"actionbutton\" name=\"editArtikel\" value=\"edit\"><i class=\"fas fa-pen pen\"></i></button>"; //fixme

                },
                error: function () {
                    // Fail message
                    $('#success').html("<div class='alert alert-danger'>");
                    $('#success > .alert-danger').html("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;")
                        .append("</button>");s
                    $('#success > .alert-danger').append($("<strong>").text("Er is iets mis gegaan, probeer het later opnieuw!"));
                    $('#success > .alert-danger').append('</div>');
                    //clear all fields
                    $('#contactForm').trigger("reset");

                },
                complete: function () {
                    setTimeout(function () {
                        $this.prop("disabled", false); // Re-enable submit button when AJAX call is complete
                    }, 1000);
                }
            });
        },
        filter: function () {
            return $(this).is(":visible");
        },
    });

    $("a[data-toggle=\"tab\"]").click(function (e) {
        e.preventDefault();
        $(this).tab("show");
    });
});

/*When clicking on Full hide fail/success boxes */
$('#name').focus(function () {
    $('#success').html('');
});

