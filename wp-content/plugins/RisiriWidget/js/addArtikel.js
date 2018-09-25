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
                url: 'http://localhost/risiriplugin/wp-content/themes/risiri/addArtikel.php', //FIXME
                type: "POST",
                data: {
                    Artikelnaam: Artikelnaam,
                    omschrijving: omschrijving,

                },

                cache: false,
                success: function () {
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

                    //get date
                    var today = new Date();
                    var dd = today.getDate();
                    var mm = today.getMonth() + 1; //January is 0!
                    var yyyy = today.getFullYear();

                    if (dd < 10) {
                        dd = '0' + dd
                    }

                    if (mm < 10) {
                        mm = '0' + mm
                    }

                    today = yyyy + '-' + mm + '-' + dd;


                    var table = document.getElementById("data-artikelen");
                    var row = table.insertRow(-1);
                    var cell1 = row.insertCell(0);
                    var cell2 = row.insertCell(1);
                    var cell3 = row.insertCell(2);
                    var cell4 = row.insertCell(3);
                    var cell5 = row.insertCell(4);

                    cell1.innerHTML = "NUMMER"; //fixme
                    cell2.innerHTML = Artikelnaam;
                    cell3.innerHTML = today;
                    cell4.innerHTML = omschrijving;
                    cell5.innerHTML = "button"; //fixme

                },
                error: function () {
                    // Fail message
                    $('#success').html("<div class='alert alert-danger'>");
                    $('#success > .alert-danger').html("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;")
                        .append("</button>");
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

