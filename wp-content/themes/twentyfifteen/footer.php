<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the "site-content" div and all content after.
 *
 * @package WordPress
 * @subpackage Twenty_Fifteen
 * @since Twenty Fifteen 1.0
 */


/**
 * Created by PhpStorm.
 * User: Erwin Jobse
 * Date: 9/12/2018
 * Time: 1:58 PM
 */
?>
<html>
<h1>klanten</h1>

<?php

global $wpdb;





$table = 'risiri_klanten';

$user = $wpdb->get_results( "SELECT * FROM $table" );

// Delete logic
if (isset($_POST['action']) && $_POST['action'] == 'deleteEntry') {
    $id = isset($_POST['id']) ? intval($_POST['id']) : 0;
    var_dump($id);

    if ($id > 0) {
        $wpdb->delete( $tabel, array( 'klantnummer' => $id ) );

        echo 'ok';
    } else {
        echo 'err';
    }
    exit; // finish execution since we only need the "ok" or "err" answers from the server.
}

?>
<h2>Klanten toevoegen</h2>
<form>
    voornaam: <br><input type="text" name="voornaam"><br>
    tussenvoegsel: <br><input type="text" name="tussenvoegsel"><br>
    achternaam: <br><input type="text" name="achternaam"><br>
    email: <br><input type="text" name="email"><br>
    <input type="submit" value="toevoegen">
</form>

<h2>Klanten</h2>
<table border="1">
<tr>
    <th>Klantnummer</th>
    <th>Naam</th>
    <th>TussenVoegsel</th>
    <th>Achternaam</th>
    <th>Email</th>
    <th></th>
    <th></th>


</tr>

<?php
 foreach ($user as $row){ ?>
     <tr>
         <td><?php echo $row->klantnummer;?></td>
         <td><?php echo $row->voorNaam;?></td>
         <td><?php echo $row->TussenVoegsel;?></td>
         <td><?php echo $row->Achternaam;?></td>
         <td><?php echo $row->email;?></td>
         <td><button class="deletedata" data-id="<?php echo $row->klantnummer;?>">Verwijder</button></td>
         <td><button class="editdata" data-id="<?php echo $row->klantnummer;?>">update</button></td>

     </tr>


<?php }

?>


?>

	</div><!-- .site-content -->

	<footer id="colophon" class="site-footer" role="contentinfo">
		<div class="site-info">
			<?php
				/**
				 * Fires before the Twenty Fifteen footer text for footer customization.
				 *
				 * @since Twenty Fifteen 1.0
				 */
				do_action( 'twentyfifteen_credits' );
			?>
			<?php
			if ( function_exists( 'the_privacy_policy_link' ) ) {
				the_privacy_policy_link( '', '<span role="separator" aria-hidden="true"></span>' );
			}
			?>
			<a href="<?php echo esc_url( __( 'https://wordpress.org/', 'twentyfifteen' ) ); ?>" class="imprint">
				<?php printf( __( 'Proudly powered by %s', 'twentyfifteen' ), 'WordPress' ); ?>
			</a>
		</div><!-- .site-info -->
	</footer><!-- .site-footer -->

</div><!-- .site -->

<?php wp_footer(); ?>

</body>
</html>
