<?php require_once('header.php'); ?>

<?php
if(isset($_POST['form1'])) {
		
    // updating into the database
	foreach($_POST['lang_value'] as $key=>$val) {
		$arr[$key] = $val;
	}

	for($i=1;$i<=count($arr);$i++) {
		$statement = $pdo->prepare("UPDATE tbl_language SET lang_value=? WHERE lang_id=?");
		$statement->execute(array($arr[$i],$i));
	}
	$success_message = 'Language Settings is updated successfully.';
}

$i=0;
$statement = $pdo->prepare("SELECT * FROM tbl_language");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
foreach ($result as $row) {
	$i++;
	$lang_ids[$i] = $row['lang_value'];
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Dil Ayarları</h1>
	</div>
</section>


<?php
$statement = $pdo->prepare("SELECT * FROM tbl_language");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
foreach ($result as $row) {

}
?>

<section class="content">

  <div class="row">
    <div class="col-md-12">

		<?php if($error_message): ?>
		<div class="callout callout-danger">	
    		<p>
    		  <?php echo $error_message; ?>
    		</p>
		</div>
		<?php endif; ?>

		<?php if($success_message): ?>
		<div class="callout callout-success">
		    <p><?php echo $success_message; ?></p>
		</div>
		<?php endif; ?>

        <form class="form-horizontal" action="" method="post">
        
        <h3 style="font-size:20px;font-weight:500;">Basit</h3>
		<div class="box box-info">
            <div class="box-body">
            	<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Para bBrimi <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[1]" value="<?php echo $lang_ids[1]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Ürün Ara <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[2]" value="<?php echo $lang_ids[2]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Ara <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[3]" value="<?php echo $lang_ids[3]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Gönder <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[4]" value="<?php echo $lang_ids[4]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Güncelle <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[5]" value="<?php echo $lang_ids[5]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Devamını Oku <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[6]" value="<?php echo $lang_ids[6]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Seri <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[7]" value="<?php echo $lang_ids[7]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Resim <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[8]" value="<?php echo $lang_ids[8]; ?>">
                    </div>
                </div>
            </div>
        </div>

        <h3 style="font-size:20px;font-weight:500;">Giriş</h3>
		<div class="box box-info">
            <div class="box-body">
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Giriş <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[9]" value="<?php echo $lang_ids[9]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Müşteri Girişi <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[10]" value="<?php echo $lang_ids[10]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Giriş İçin Tıkla <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[11]" value="<?php echo $lang_ids[11]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Giriş Sayfasına Dön <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[12]" value="<?php echo $lang_ids[12]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label"><span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[13]" value="<?php echo $lang_ids[13]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Çıkış <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[14]" value="<?php echo $lang_ids[14]; ?>">
                    </div>
                </div>
            </div>
        </div>
		
		<h3 style="font-size:20px;font-weight:500;">Kayıt</h3>
        <div class="box box-info">
            <div class="box-body">
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Register <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[15]" value="<?php echo $lang_ids[15]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Müşteri Kaydı <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[16]" value="<?php echo $lang_ids[16]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Kayıt Başarılı <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[17]" value="<?php echo $lang_ids[17]; ?>">
                    </div>
                </div>
            </div>
        </div>
		
		<h3 style="font-size:20px;font-weight:500;">Sepet ve Ödeme</h3>
        <div class="box box-info">
            <div class="box-body">
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Sepet <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[18]" value="<?php echo $lang_ids[18]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Sepeti Görüntüle <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[19]" value="<?php echo $lang_ids[19]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Sepeti Güncelle <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[20]" value="<?php echo $lang_ids[20]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Sepete Ekle <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[154]" value="<?php echo $lang_ids[154]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Sepete Dön <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[21]" value="<?php echo $lang_ids[21]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Ödeme <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[22]" value="<?php echo $lang_ids[22]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Ödeme İşlemine Geç <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[23]" value="<?php echo $lang_ids[23]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Lütfen ödeme için müşteri olarak giriş yapın. <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[160]" value="<?php echo $lang_ids[160]; ?>">
                    </div>
                </div>

            </div>
        </div>

		<h3 style="font-size:20px;font-weight:500;">Ürün</h3>
        <div class="box box-info">
            <div class="box-body">				
                
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Ürün Adı <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[47]" value="<?php echo $lang_ids[47]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Ürün Detayları <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[48]" value="<?php echo $lang_ids[48]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">İlgili Ürünler <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[155]" value="<?php echo $lang_ids[155]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Aşağıda ilgili tüm ürünleri görün <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[156]" value="<?php echo $lang_ids[156]; ?>">
                    </div>
                </div>			
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Kategoriler <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[49]" value="<?php echo $lang_ids[49]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Kategori: <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[50]" value="<?php echo $lang_ids[50]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Tüm ürünler <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[51]" value="<?php echo $lang_ids[51]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Beden Seç <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[52]" value="<?php echo $lang_ids[52]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Beden <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[157]" value="<?php echo $lang_ids[157]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Renk Seç <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[53]" value="<?php echo $lang_ids[53]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Renk <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[158]" value="<?php echo $lang_ids[158]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Fiyat <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[159]" value="<?php echo $lang_ids[159]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Ürün Fiyatı <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[54]" value="<?php echo $lang_ids[54]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Adet <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[55]" value="<?php echo $lang_ids[55]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Stok Tükendi <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[56]" value="<?php echo $lang_ids[56]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Paylaş <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[57]" value="<?php echo $lang_ids[57]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Ürünü Paylaş <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[58]" value="<?php echo $lang_ids[58]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Ürün Açıklaması <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[59]" value="<?php echo $lang_ids[59]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Ürün Bulunamadı <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[153]" value="<?php echo $lang_ids[153]; ?>">
                    </div>
                </div>
				
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Önceki <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[79]" value="<?php echo $lang_ids[79]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Sonraki <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[80]" value="<?php echo $lang_ids[80]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Ara Toplam <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[81]" value="<?php echo $lang_ids[81]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Toplam <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[82]" value="<?php echo $lang_ids[82]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Eylem <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[83]" value="<?php echo $lang_ids[83]; ?>">
                    </div>
                </div>
            </div>
        </div>
		
		<h3 style="font-size:20px;font-weight:500;">Faturalandırma ve Gönderim</h3>
        <div class="box box-info">
            <div class="box-body">
            	<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Gönderim Ücreti <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[84]" value="<?php echo $lang_ids[84]; ?>">
                    </div>
                </div>
            	<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Devem Eden Teslimat <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[85]" value="<?php echo $lang_ids[85]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Fatura Adresi <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[161]" value="<?php echo $lang_ids[161]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Fatura Adresini Güncelle <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[86]" value="<?php echo $lang_ids[86]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Teslimat Adresi <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[162]" value="<?php echo $lang_ids[162]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Teslimat Adresini Güncelle <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[87]" value="<?php echo $lang_ids[87]; ?>">
                    </div>
                </div>				
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Fatura ve Teslimat Adresini Güncelle <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[88]" value="<?php echo $lang_ids[88]; ?>">
                    </div>
                </div>				
            </div>
        </div>
		
		<h3 style="font-size:20px;font-weight:500;">Kotrol Paneli</h3>
        <div class="box box-info">
            <div class="box-body">
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Kontrol Paneli <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[89]" value="<?php echo $lang_ids[89]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Kontrol Paneline Hoş Geldiniz <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[90]" value="<?php echo $lang_ids[90]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Kontrol Paneline Dön <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[91]" value="<?php echo $lang_ids[91]; ?>">
                    </div>
                </div>
            </div>
        </div>
		
		
		<h3 style="font-size:20px;font-weight:500;">E-posta Adresi</h3>
        <div class="box box-info">
            <div class="box-body">
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">E-posta Adresi <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[94]" value="<?php echo $lang_ids[94]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">E-posta Adresini Gir <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[95]" value="<?php echo $lang_ids[95]; ?>">
                    </div>
                </div>
            </div>
        </div>
		
		<h3 style="font-size:20px;font-weight:500;">Şifre</h3>
        <div class="box box-info">
            <div class="box-body">
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Şifre <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[96]" value="<?php echo $lang_ids[96]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Şifremi Unuttum <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[97]" value="<?php echo $lang_ids[97]; ?>">
                    </div>
                </div>				
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Şifreni Tekrar Yaz <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[98]" value="<?php echo $lang_ids[98]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Şifreni Güncelle <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[99]" value="<?php echo $lang_ids[99]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Yeni Şifre <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[100]" value="<?php echo $lang_ids[100]; ?>">
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Yeni Şifreni Tekrar Yaz <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[101]" value="<?php echo $lang_ids[101]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Şifreni Değiştir <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[149]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[149]; ?></textarea>
                    </div>
                </div>
            </div>
        </div>

       
		
		<h3 style="font-size:20px;font-weight:500;">Müşteri</h3>
        <div class="box box-info">
            <div class="box-body">
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Ad Soyad <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[102]" value="<?php echo $lang_ids[102]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Şirket Adı <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[103]" value="<?php echo $lang_ids[103]; ?>">
                    </div>
                </div>                
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Telefon Numarası <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[104]" value="<?php echo $lang_ids[104]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Adres <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[105]" value="<?php echo $lang_ids[105]; ?>">
                    </div>
                </div>               
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Ülke <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[106]" value="<?php echo $lang_ids[106]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Şehir <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[107]" value="<?php echo $lang_ids[107]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Cadde/Sokak <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[108]" value="<?php echo $lang_ids[108]; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Posta Kodu <span>*</span></label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="lang_value[109]" value="<?php echo $lang_ids[109]; ?>">
                    </div>
                </div>
            </div>
        </div>
		
		<h3 style="font-size:20px;font-weight:500;">Diğer Bilgiler</h3>
               
        <h3 style="font-size:20px;font-weight:500;">Hata Mesajı</h3>
        <div class="box box-info">
            <div class="box-body">
            	<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Ödeme Başarılı <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[121]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[121]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Faturalandırma Teslimat Bilgileri Güncelleme Başarılı. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[122]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[122]; ?></textarea>
                    </div>
                </div>
            	<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Müşteri numarası boş olamaz. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[123]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[123]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Telefon numarası boş olamaz. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[124]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[124]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Adres boş olamaz. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[125]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[125]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Ülke seçmelisin. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[126]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[126]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Şehir boş olamaz. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[127]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[127]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Cadde/Sokak boş olamaz. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[128]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[128]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Posta kodu boş olamaz. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[129]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[129]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Profil bilgileri güncelleme başarılı. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[130]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[130]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">e-posta adresi boş olamaz <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[131]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[131]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">e-posta ve şifre boş olamaz. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[132]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[132]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">E-posta adresi eşleşmiyor. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[133]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[133]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">e-posta adresi geçerli olmalı. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[134]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[134]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">E-posta adresi hali hazırda mevcut. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[147]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[147]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">E-posta adresi sistemde bulunamadı. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[135]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[135]; ?></textarea>
                    </div>
                </div>                
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Lütfen e-postanızı kontrol edin ve aboneliğinizi onaylayın. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[136]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[136]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">E-postanız başarıyla doğrulandı. Artık sitemize giriş yapabilirsiniz. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[137]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[137]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Şifre boş olamaz. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[138]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[138]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Şifre eşleşmiyor. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[139]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[139]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Yeni şifrenizi tekrar girin. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[140]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[140]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Şifre yenileme başarılı. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[141]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[141]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Şifrenizi sıfırlamak için lütfen aşağıdaki bağlantıya tıklayın. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[142]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[142]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">ŞİFRE SIFIRLAMA TALEBİ - WEBSİTENİZ.COM <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[143]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[143]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Şifre sıfırlama e-postasının süresi (24 saat) doldu. Lütfen şifrenizi sıfırlamayı tekrar deneyin. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[144]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[144]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">E-posta adresinize bir onay bağlantısı gönderilir. Orada şifre sıfırlama bilgilerini alacaksınız. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[145]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[145]; ?></textarea>
                    </div>
                </div>
				<div class="form-group">
                    <label for="" class="col-sm-4 control-label">Şifre başarıyla sıfırlandı. Artık giriş yapabilirsiniz. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[146]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[146]; ?></textarea>
                    </div>
                </div>    
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Üzgünüm! Hesabınız etkin değil. Lütfen yöneticiyle iletişime geçin. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[148]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[148]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">WEB SİTENİZ için Kayıt E-posta Onayı. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[150]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[150]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Kaydınız için teşekkür ederiz! Hesabınız oluşturuldu. Hesabınızı aktif hale getirmek için aşağıdaki bağlantıya tıklayın: <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[151]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[151]; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label">Kaydınız tamamlandı. Kaydınızı onaylama sürecini takip etmek için lütfen e-posta adresinizi kontrol edin. <span>*</span></label>
                    <div class="col-sm-6">
                        <textarea name="lang_value[152]" class="form-control" cols="30" rows="10" style="height:70px;"><?php echo $lang_ids[152]; ?></textarea>
                    </div>
                </div>
                              
            </div>
        </div>



        <div class="box box-info">
            <div class="box-body">
                <div class="form-group">
                    <label for="" class="col-sm-4 control-label"></label>
                    <div class="col-sm-6">
                      <button type="submit" class="btn btn-success pull-left" name="form1">Update</button>
                    </div>
                </div>
            </div>
        </div>

        </form>



    </div>
  </div>

</section>

<?php require_once('footer.php'); ?>