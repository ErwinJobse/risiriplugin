<?php
/**
 * Created by PhpStorm.
 * User: Owen Vermeulen
 * Date: 9/25/2018
 * Time: 10:04 AM
 */

?>

<div id="tab-telaat">
    <table id="data-telaat" cellspacing="0">
        <tr>
            <th width="8%">Uitleningnummer</th>
            <th width="10%">Artikelnummer</th>
            <th width="10%">Klant</th>
            <th width="10%">Klantnummer</th>

        </tr>
<?php
$date = new DateTime($event['date']);
$now = new DateTime();

if($date < $now) {
    echo 'date is in the past';
}
        foreach ($getUitlening as $item) {
        if ($date <= $item->inleverdatum && $item->ingeleverd == 0) {

        ?>
        <tr>
            <td><?php echo $item->uitleenNummer; ?></td>
            <td><?php echo $item->Artikelnummer; ?></td>
            <td><?php echo $item->Klantnummer; ?></td>
            <td><?php echo $item->Klantnummer; ?></td>
        </tr>
        <?php }
        }
        ?>
    </table>
</div>

