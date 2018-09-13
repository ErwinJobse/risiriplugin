var currentRow,
    id;
jQuery(document).ready('click','.deletedata',function($){
    console.log("Going to delete");
    id = $(this).attr('data-id'); // Get the clicked id for deletion
    currentRow = $(this).closest('tr'); // Get a reference to the row that has the button we clicked
    $.ajax({
        type:'post',
        url:location.pathname, // sending the request to the same page we're on right now
        data:{'action':'deleteEntry','klantnummer':id},
        success:function(response){
            if (response == 'ok') {
                // Hide the row nicely and remove it from the DOM once the animation is finished.
                currentRow.slideUp(500,function(){
                    currentRow.remove();
                })
            } else {
                // throw an error modally to let the user know there was an error
            }
        }
    })
})