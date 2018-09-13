jQuery(document).ready(function($){
var currentRow,
    id;
    console.log("doc ready");

$(document).on('click','.deletedata',function(){
    console.log("clicked remove");
    id = $(this).attr('data-id'); // Get the clicked id for deletion
    currentRow = $(this).closest('tr'); // Get a reference to the row that has the button we clicked
    console.log(id);
    $.ajax({

        type:'post',
        url:location.pathname, // sending the request to the same page we're on right now
        data:{'action':'deleteEntry','klantennummer':id},
        success:function(response){
            if (response == 'ok') {
                console.log("row found");
                // Hide the row nicely and remove it from the DOM once the animation is finished.
                currentRow.slideUp(500,function(){
                    currentRow.remove();
                })
            } if (response == 'err') {
                console.log(":( ");
                // throw an error modally to let the user know there was an error
            }
        }
    })
})
});
