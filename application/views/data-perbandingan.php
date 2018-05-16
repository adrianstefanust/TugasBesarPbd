<h5><?php echo $judul; ?></h5>
<br>
<table id="bootstrap-data-table" class="table table-striped table-bordered">
	<thead>
		<?php if($data) : ?>
            <?php foreach($data as $da) : 
                echo "<th>".$da['namaDaerah']."</th>";
            endforeach; ?>
        <?php endif; ?> 
	</thead>
	<tbody>
		<tr>
			<?php if($data) : ?>
            <?php foreach($data as $da) : 
                echo "<td>".number_format($da['nilai'])."</td>";
            endforeach; ?>
        	<?php endif; ?> 
		</tr>
	</tbody>
</table>