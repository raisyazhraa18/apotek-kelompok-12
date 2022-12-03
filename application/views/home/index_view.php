<!DOCTYPE html>
<html>
<head>
  <title>Apotek Masa Depan Cerah</title>
  <link rel="stylesheet" type="text/css" href="<?= base_url();?>assets/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url();?>assets/css/style.css">
  <script type="text/javascript" src="<?= base_url();?>assets/js/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="<?= base_url();?>assets/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button class="navbar-toggle" data-toggle="collapse" data-target="#navigasi">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    <div class="collapse navbar-collapse" id="navigasi">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="<?= site_url();?>"><span class="glyphicon glyphicon-home"></a></li>
        <li><a href="<?= site_url('konfirmasi');?>">KONFIRMASI PEMBELIAN<span class="glyphicon glyphicon-credit-card"></a></li>
        <li><a href="<?= site_url('cek');?>">CEK PEMBELIAN <span class="glyphicon glyphicon-list-alt"></a></li>
        <li><a href="<?= site_url('obat');?>">DAFTAR OBAT<span class="glyphicon glyphicon-plus-sign"></a></li>
        <li><a href="<?= site_url('beli');?>"><span class="glyphicon glyphicon-shopping-cart"></a></li>
        <li></li>
      </ul>
    </div>
  </div>
</nav>
<div class="img">
<img src = "https://cdn.discordapp.com/attachments/1018376250005393509/1044969986864709672/Picsart_22-11-23_20-36-31-544.png"  width= "150";  border-radius= "100%";>
</div>
<?php $this->load->view('home/'. $view_name); ?>

</body>
</html>