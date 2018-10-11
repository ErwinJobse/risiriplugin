<?php


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

</head>

<body>
<?php


// Fix menu overlap
if ( is_admin_bar_showing() ) echo '<div style="min-height: 32px;"></div>';

?>

<!--Header-->
<div class="header">
    <!--Logo Start-->
    <div class="navbar-logo">
        <?php the_custom_logo(); ?>
    </div>
    <!--Logo End-->
    <!--    Page title start-->
    <h1 id="table-name">RiSiRi Magazijn Applicatie</h1>
    <!--    Page title end-->
</div>
<!--Header end-->
