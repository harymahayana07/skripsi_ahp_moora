<?php
session_start();

if (!isset($_SESSION["operator"])) {
  header("Location: login2.php");
  exit;
}
$page = "alternatif";
require 'koneksi.php';
include('template/topbar.php');
include('template/sidebar.php');
$id = $_GET['id_alternatif'];

// $alternatif=query("SELECT * FROM alternatif");
$kriteria = query("SELECT * FROM kriteria");
$subkriteria = query("SELECT * FROM subkriteria");
$alternatif = query("SELECT * FROM alternatif where id_alternatif=$id")[0];

if (isset($_POST["tambah"])) {
  //apakah $_POST yang kuncinya submit kalo dipencet akan dibuat array submit
  // var_dump($_POST);die; 
  //ambil data dari tiap elemen
  if (tambahnilaialt($_POST) > 0) {
    echo "
      <script>
        alert('data berhasil ditambahkan');
        document.location.href = 'data_alternatif.php';
      </script>
      ";
  } else {
    echo "
      <script>
        alert('data gagal ditambahkan');
      </script>
      ";
  }
}



?>

<div class="container-fluid">
  <h1 class="m-0 font-weight-bold text-dark">Input Nilai Alternatif</h1> <br>
  <div class="card shadow mb-4">
    <div class="card-body">
      <div class="table-responsive">
        <tr>
          <h2 class="text-center"><?= $alternatif['nama'] ?></h2>
          <p class="text-center"><b><em>NOTE :</em></b>input data sesuai dengan data dosen yang bersangkutan!.</p>
          <form method="POST">
            <input type="hidden" name="id_alternatif" value="<?= $alternatif['id_alternatif'] ?>">
            <?php foreach ($kriteria as $key) : ?>
              <?php if ($key['id'] == 1) : ?>
                <label name="<?= $key['id_kriteria']  ?>"><?= $key['nama_kriteria']  ?></label>
                <?php
                if ($key['nama_kriteria'] == 'pengajaran') {
                  $val = $alternatif['pengajaran'];
                } elseif ($key['nama_kriteria'] == 'pm_jumlah') {
                  $val = $alternatif['pm_jumlah'];
                } elseif ($key['nama_kriteria'] == 'pm_sbg') {
                  $val = $alternatif['pm_sbg'];
                } elseif ($key['nama_kriteria'] == 'penelitian_jml') {
                  $val = $alternatif['penelitian_jml'];
                } elseif ($key['nama_kriteria'] == 'penelitian_jurnal') {
                  $val = $alternatif['penelitian_jurnal'];
                } elseif ($key['nama_kriteria'] == 'absen_fp') {
                  $val = $alternatif['absen_fp'];
                } elseif ($key['nama_kriteria'] == 'absen_apel') {
                  $val = $alternatif['absen_apel'];
                } elseif ($key['nama_kriteria'] == 'ang_kep') {
                  $val = $alternatif['ang_kep'];
                } elseif ($key['nama_kriteria'] == 'jab_dos') {
                  $val = $alternatif['jab_dos'];
                } else {
                  if ($val = $alternatif['pendidikan_terakhir'] == '1') {
                    $val = 1;
                  } else if ($val = $alternatif['pendidikan_terakhir'] == '2') {
                    $val = 2;
                  } else {
                    $val = 3;
                  }
                }
                ?>
                <input type="text" class="form-control" name="idx.<?= $key['id_kriteria']  ?>" id="nilai" autocomplete="off" value="<?= $val ?>" readonly>
              <?php else : ?>
                <input type="hidden" name="idk.<?= $key['id_kriteria'] ?>" value="<?= $key['id_kriteria'] ?>">
                <?php $idk = $key['id_kriteria'];
                $sub = query("SELECT * FROM subkriteria where id_kriteria=$idk");
                foreach ($sub as $key2) : ?>
                  <label name="<?= $key2['id_subkriteria'] ?>"><?= $key['nama_kriteria'] ?> - <?= $key2['nama_subkriteria']  ?></label>
                  <input type="text" class="form-control" name="<?= $key2['id_subkriteria']  ?>" id="nilai" autocomplete="off" placeholder=" Kurang 50-59, Cukup 60-69, dan Baik 70-80" style="font-size: 12px;" required>
                <?php endforeach; ?>
              <?php endif; ?>
            <?php endforeach; ?>
        </tr>
        <button class="btn btn-info float-right" type="submit" name="tambah"><i class="fas fa-angle-double-right"></i> Tambah</button>
        </form>
        <!-- <a href="perhitungan2.php">
          <button class="btn btn-info"><i class="fas fa-angle-double-right"></i> lanjut
        </button>          
      </a> -->
      </div>
    </div>
  </div>
</div>

<?php
include('template/footer.php');
?>