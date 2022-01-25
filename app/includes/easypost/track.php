<pre>
<?php

include 'config.php';

$tracker = \EasyPost\Tracker::create(array(
  "tracking_code" => "EZ2000000002",
  "carrier" => "USPS"
));

$trackerR = \EasyPost\Tracker::retrieve("EZ2000000002");

?>

<table border="1">
	<tr>
		<td>id</td>
		<td><?php echo $trackerR->id; ?></td>
	</tr>
	<tr>
		<td>object</td>
		<td><?php echo $trackerR->object; ?></td>
	</tr>
	<tr>
		<td>tracking_code</td>
		<td><?php echo $trackerR->tracking_code; ?></td>
	</tr>
	<tr>
		<td>status</td>
		<td><?php echo $trackerR->status; ?></td>
	</tr>
	<tr>
		<td>status_detail</td>
		<td><?php echo $trackerR->status_detail; ?></td>
	</tr>
	<tr>
		<td>created_at</td>
		<td><?php echo $trackerR->created_at; ?></td>
	</tr>
	<tr>
		<td>updated_at</td>
		<td><?php echo $trackerR->updated_at; ?></td>
	</tr>
	<tr>
		<td>est_delivery_date</td>
		<td><?php echo $trackerR->est_delivery_date; ?></td>
	</tr>
</table>

<hr>
<table border="1">
	<tr>
		<td>object</td>
		<td>message</td>
		<td>description</td>
		<td>status</td>
		<td>status_detail</td>
		<td>datetime</td>
		<td>source</td>
		<td>carrier_code</td>
		<td>tracking_location</td>
	</tr>
	<?php foreach($trackerR->tracking_details as $TrackVAL){ ?>
		<tr>
			<td><?php echo $TrackVAL->object; ?></td>
			<td><?php echo $TrackVAL->message; ?></td>
			<td><?php echo $TrackVAL->description; ?></td>
			<td><?php echo $TrackVAL->status; ?></td>
			<td><?php echo $TrackVAL->status_detail; ?></td>
			<td><?php echo $TrackVAL->datetime; ?></td>
			<td><?php echo $TrackVAL->source; ?></td>
			<td><?php echo $TrackVAL->carrier_code; ?></td>
			<td>
				<?php echo $TrackVAL->tracking_location->object; ?>
				<?php echo $TrackVAL->tracking_location->city; ?>
				<?php echo $TrackVAL->tracking_location->state; ?>
				<?php echo $TrackVAL->tracking_location->country; ?>
				<?php echo $TrackVAL->tracking_location->zip; ?>
					
			</td>
		</tr>
	<?php } ?>
</table>

<?php


print_r($trackerR);
print_r($trackerR->tracking_details);



?>


