<div class="jumbotron text-center">
  <h2><?= $obat->nama ?><small>(<?= $obat->kode_obat;?>)</small></h2>
</div>

<div class="container">
  <h3>Manfaat</h3>
  <p><?= $obat->manfaat;?></p>
  <ul>
    <br><li>Bentuk obat : <?= $obat->bentuk;?></li></br>
    <br><li>Dikonsumsi oleh : <?= $obat->konsumen;?></li></br>
    <br><li>Harga satuan : <?= $obat->harga;?></li></br>
  </ul>

  <br>
  <a href="javascript:history.go(-1)" class="btn btn-warning">Kembali</a>
</div>