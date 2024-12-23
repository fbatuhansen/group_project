<?php require_once('header.php'); ?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Ana Kategori Görüntüle</h1>
	</div>
	<div class="content-header-right">
		<a href="top-category-add.php" class="btn btn-primary btn-sm">Yeni Ekle</a>
	</div>
</section>


<section class="content">

  <div class="row">
    <div class="col-md-12">


      <div class="box box-info">
        
        <div class="box-body table-responsive">
          <table id="example1" class="table table-bordered table-hover table-striped">
			<thead>
			    <tr>
			        <th>#</th>
			        <th>ana Kategori Adı</th>
                    <th>Menüde Görülme?</th>
			        <th>Eylem</th>
			    </tr>
			</thead>
            <tbody>
            	<?php
            	$i=0;
            	$statement = $pdo->prepare("SELECT * FROM tbl_top_category ORDER BY tcat_id DESC");
            	$statement->execute();
            	$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
            	foreach ($result as $row) {
            		$i++;
            		?>
					<tr>
	                    <td><?php echo $i; ?></td>
	                    <td><?php echo $row['tcat_name']; ?></td>
                        <td>
                            <?php 
                                if($row['show_on_menu'] == 1) {
                                    echo 'Yes';
                                } else {
                                    echo 'No';
                                }
                            ?>
                        </td>
	                    <td>
	                        <a href="top-category-edit.php?id=<?php echo $row['tcat_id']; ?>" class="btn btn-primary btn-xs">Düzenle</a>
	                        <a href="#" class="btn btn-danger btn-xs" data-href="top-category-delete.php?id=<?php echo $row['tcat_id']; ?>" data-toggle="modal" data-target="#confirm-delete">Sil</a>
	                    </td>
	                </tr>
            		<?php
            	}
            	?>
            </tbody>
          </table>
        </div>
      </div>
  

</section>


<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Onayı Sil</h4>
            </div>
            <div class="modal-body">
                <p>Silmek istediğine emin misin?</p>
                <p style="color:red;">Dikkat olmak! Bu üst seviye kategorinin altındaki tüm ürünler, orta seviye kategoriler ve son seviye kategoriler, sipariş tablosu, ödeme tablosu, beden tablosu, renk tablosu, derecelendirme tablosu vb.tüm tablolardan silinecektir.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">İptal</button>
                <a class="btn btn-danger btn-ok">Sil</a>
            </div>
        </div>
    </div>
</div>


<?php require_once('footer.php'); ?>