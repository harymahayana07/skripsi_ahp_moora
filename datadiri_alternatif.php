<?php
session_start();
if (!isset($_SESSION["login_alt"])) {
  header("Location: login2.php");
  exit;
}

$id = $_SESSION["id_alternatif"];
$nama = $_SESSION["nama"];
$status = $_SESSION["status"];
if ($status == 0) {
  $stat = "Menunggu Verifikasi dari Operator";
} elseif ($status == 1) {
  $stat = "Berhasil Diverifikasi";
} else {
  $stat = "Akun Anda DiBlokir!";
}

$page = "datadiri";
require 'koneksi.php';
include('template/topbar.php');
include('template/sidebaralt.php');

$alternatif = mysqli_query($koneksi, "SELECT * FROM alternatif WHERE id_alternatif='$id'") or die(mysqli_error($koneksi));
if (mysqli_num_rows($alternatif) == 0) {
  echo '<script>
  alert("data tidak ditemukan !!!!!!")
  </script>';
} else {
  $alt = mysqli_fetch_assoc($alternatif);
}

//cek apa tombol submit telah dipencet
if (isset($_POST["tambah"])) {
  //apakah $_POST yang kuncinya submit kalo dipencet akan dibuat array submit
  //ambil data dari tiap elemen
  $nama = $_POST["nama"];
  $jk = $_POST["jk"];
  $pendidikan_terakhir = $_POST["pendidikan_terakhir"];
  $pengajaran = $_POST["pengajaran"];
  $pm_jumlah = $_POST["pm_jumlah"];
  $pm_sbg = $_POST["pm_sbg"];
  $penelitian_jml = $_POST["penelitian_jml"];
  $penelitian_jurnal = $_POST["penelitian_jurnal"];
  $absen_fp = $_POST["absen_fp"];
  $absen_apel = $_POST["absen_apel"];
  $ang_kep = $_POST["ang_kep"];
  $jab_dos = $_POST["jab_dos"];
  $email = $_POST["email"];
  $allowed_text = array('pdf');
  $berkas = $_FILES["Berkas"]["name"];
  $file_ext = pathinfo($berkas, PATHINFO_EXTENSION);
  // $file_ext = strtolower(end(explode('.', $berkas)));
  $file_size = $_FILES["Berkas"]["size"];
  $tmp_berkas = $_FILES["Berkas"]["tmp_name"];
  if (in_array($file_ext, $allowed_text) === true) {
    if ($file_size < 1044070) {
      $newberkas = $nama . '-' . $berkas;
      $tmp_new = 'assets1/berkas/' . $newberkas;
      if (move_uploaded_file($tmp_berkas, $tmp_new)) {
        $update = mysqli_query($koneksi, "UPDATE alternatif SET 
          nama='$nama',
          jk ='$jk',
          pendidikan_terakhir = '$pendidikan_terakhir',
          pengajaran = '$pengajaran',
          pm_jumlah = '$pm_jumlah',
          pm_sbg = '$pm_sbg',
          penelitian_jml = '$penelitian_jml',
          penelitian_jurnal = '$penelitian_jurnal',
          absen_fp = '$absen_fp',
          absen_apel = '$absen_apel',
          ang_kep = '$ang_kep',
          jab_dos = '$jab_dos',
          email = '$email',
          size = '$file_size',
          Berkas = '$newberkas' WHERE id_alternatif = '$id'") or die(mysqli_error($koneksi));
        if ($update) {
          echo '
      <script>
      alert("Data Berhasil Ditambahkan")
      </script>';
        } else {
          echo '
  <script>
  alert("Data gagal ditambahkan")
  </script>';
        }
      } else {
        echo '
  <script>
  alert("Berkas gagal diunggah")
  </script>';
      }
    } else {
      echo '
  <script>
  alert("Berkas harus< 1mb")
  </script>';
    }
  } else {
    echo '
  <script>
  alert("Berkas harus PDF")
  </script>';
  }
}
?>
<style>
  .alert {
    padding: 20px;
    background-color: #4682B4;
    color: white;
  }

  .closebtn {
    margin-left: 15px;
    color: white;
    font-weight: bold;
    float: right;
    font-size: 22px;
    line-height: 20px;
    cursor: pointer;
    transition: 0.3s;
  }

  .closebtn:hover {
    color: black;
  }
</style>
<div class="container-fluid">
  <h1 class="m-0 font-weight-bold text-dark">Data Diri</h1> <br>
  <div class="alert">
    <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
    <strong>Selamat Datang <?= $_SESSION['nama'] ?>!</strong> Silahkan Isi Data Diri Anda.
  </div>
  <div class="card shadow mb-4">
    <div class="card-body">
      <form action="" method="post">
        <b>
          <h5>Status Data : <b><?= $stat ?></b></h5>
          <div class="input-group col-2 mb-3 float-right">
            <button type="button" class="btn btn-secondary float-right " data-toggle="modal" data-target="#modaltambahalt"><i class="fas fa-plus-square"></i> Isi Data Diri</button>
          </div>
      </form>
      <!-- <button class="btn btn-secondary" data-toggle="modal" data-target="#modaltambahalt" id="tambah"><i class="fas fa-plus"></i> Tambah Data Diri</button><br> -->
      <div class="table-responsive">
        <div class="col-md-auto">
          <table class="table table-striped">
            <tr>
              <th>Nama</th>
              <th>Pend.Terakhir</th>
              <th>JK</th>
              <th>pengajaran</th>
              <th>Email</th>
              <th>Berkas</th>
              <th>Aksi</th>
            </tr>

            <?php foreach ($alternatif as $row) :
            ?>
              <tr>
                <td><?= $row["nama"]; ?></td>
                <td class="text-center"><?= $row["pendidikan_terakhir"]; ?></td>
                <td><?= $row["jk"]; ?></td>
                <td><?= $row["pengajaran"]; ?></td>
                <td><?= $row["email"]; ?></td>
                <td><a href="assets1/berkas/<?= $row["Berkas"]; ?>" taget="_blank">Lihat Berkas</a></td>
                <td>
                  <form method="POST">
                    <button type="button" id="tambah" name="tambah" class="btn btn-secondary" data-toggle="modal" data-target="#modalubah"><i class="fas fa-edit"></i>Detail</button>
                  </form>
                </td>
              </tr>
            <?php endforeach; ?>
          </table>
        </div>
      </div>
    </div>
  </div>



  <!-- modal tambah data diri -->

  <div class="modal fade" id="modaltambahalt" tabindex="-2" role="dialog" aria-labelledby="modalTambahTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered role=" document">
      <div class="modal-content ">
        <form method="POST" enctype="multipart/form-data">
          <div class="modal-header modal-bg" back>
            <h5 class="modal-title modal-text" id="modalTambahTitle">Form Data Diri</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form>
              <input type="hidden" class="form-control mt-1" id="id_alternatif" name="id_alternatif" required>
              <div class="form-group">
                <label for="nama" class="col-form-label">Nama :</label>
                <input type="text" class="form-control mt-1" id="nama" name="nama" value="<?= $alt['nama'] ?> " required>
              </div>

              <!-- pendidikan terakhir -->
              <div class="form-group">
                <label for="pendidikan_terakhir">Pendidikan Terakhir </label><br>
                <div class="form-check-inline">
                  <input type="radio" class="form-check-input" name="pendidikan_terakhir" id="pendidikan_terakhir" value="1">
                  <label> S1</label>
                </div>
                <div class="form-check-inline">
                  <input type="radio" class="form-check-input" name="pendidikan_terakhir" id="pendidikan_terakhir" value="2">
                  <label> S2</label>
                </div>
                <div class="form-check-inline">
                  <input type="radio" class="form-check-input" name="pendidikan_terakhir" id="pendidikan_terakhir" value="3">
                  <label> S3</label>
                </div>
              </div>
              <!-- end -->

              <!-- jk -->
              <div class="form-group">
                <label for="pendidikan_terakhir">Jenis Kelamin :</label><br>
                <div class="form-check-inline">
                  <input type="radio" class="form-check-input" name="jk" id="jk" value="1">
                  <label> Pria</label>
                </div>
                <div class="form-check-inline">
                  <input type="radio" class="form-check-input" name="jk" id="jk" value="2">
                  <label> Wanita</label>
                </div>
              </div>
              <!-- end jk -->

              <!-- pengajaran -->
              <div class="form-group">
                <label for="pengajaran" class="col-form-label">Pengajaran :</label>
                <input type="number" class="form-control mt-1" id="pengajaran" name="pengajaran" required>
              </div>
              <!-- end  -->

              <!-- pm_jumlah -->
              <div class="form-group">
                <label for="pm_jumlah" class="col-form-label">Jumlah Pengabdian Masyarakat :</label>
                <input type="number" class="form-control mt-1" id="pm_jumlah" name="pm_jumlah" required>
              </div>
              <!-- end -->

              <!-- pm_sbg -->
              <div class="form-group">
                <label for="pm_sbg" class="col-form-label">Pengabdian Masyarakat Sebagai :</label>
                <input type="number" class="form-control mt-1" id="pm_sbg" name="pm_sbg" required>
              </div>
              <!-- end -->

              <!-- penelitian_jml -->
              <div class="form-group">
                <label for="penelitian_jml" class="col-form-label">Jumlah Penelitian :</label>
                <input type="number" class="form-control mt-1" id="penelitian_jml" name="penelitian_jml" required>
              </div>
              <!-- end -->

              <!-- penelitian_jurnal -->
              <div class="form-group">
                <label for="penelitian_jurnal" class="col-form-label">Penelitian Nasional Atau Internasional :</label>
                <input type="number" class="form-control mt-1" id="penelitian_jurnal" name="penelitian_jurnal" required>
              </div>
              <!-- end -->

              <!-- absen_fp -->
              <div class="form-group">
                <label for="absen_fp" class="col-form-label">Kehadiran Absen Finger Print :</label>
                <input type="number" class="form-control mt-1" id="absen_fp" name="absen_fp" required>
              </div>
              <!-- end -->

              <!-- absen_apel -->
              <div class="form-group">
                <label for="absen_apel" class="col-form-label">Kehadiran Absen Apel Senin :</label>
                <input type="number" class="form-control mt-1" id="absen_apel" name="absen_apel" required>
              </div>
              <!-- end -->

              <!-- ang_kep -->
              <div class="form-group">
                <label for="ang_kep" class="col-form-label">Anggota Kepanitiaan :</label>
                <input type="number" class="form-control mt-1" id="ang_kep" name="ang_kep" required>
              </div>
              <!-- end -->

              <!-- jab_dos -->
              <div class="form-group">
                <label for="jab_dos" class="col-form-label">Jabatan Dosen :</label>
                <input type="number" class="form-control mt-1" id="jab_dos" name="jab_dos" required>
              </div>
              <!-- end -->

              <!-- email -->
              <div class="form-group">
                <label for="email" class="col-form-label">Email :</label>
                <input type="email" class="form-control mt-1" id="email" name="email" required>
              </div>
              <!-- end  -->

              <div class="form-group">
                <label for="Berkas">Berkas Persyaratan : </label>
                <input type="file" class="form-control-file" name="Berkas" id="Berkas">
                <div class="small">format file PDF, maks 5mb</div>
              </div>

              <div class="modal-footer">
                <button type="submit" name="tambah" class="btn btn-primary">Tambah</button>
              </div>
            </form>
          </div>
        </form>
      </div>
    </div>
  </div>

  <!-- modal edit data diri -->

  <div class="modal fade" id="modalubah" tabindex="-2" role="dialog" aria-labelledby="modalTambahTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered role=" document">
      <div class="modal-content ">
        <form method="POST" enctype="multipart/form-data">
          <div class="modal-header modal-bg" back>
            <h5 class="modal-title modal-text" id="modalTambahTitle">Form Data Diri</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="form-group">
              <p><b>Nama : </b><?= $alt['nama'] ?></p>
              <p><b>Nip : </b><?= $alt['nip'] ?></p>
              <p><b>Jenis Kelamin : </b><?= $alt['jk'] ?></p>
              <p><b>Pendidikan Terakhir : </b><?= $alt['pendidikan_terakhir'] ?></p>
              <p><b>Pengajaran : </b><?= $alt['pengajaran'] ?></p>
              <p><b>Jumlah Pengabdian Masyarakat : </b><?= $alt['pm_jumlah'] ?></p>
              <p><b>Pengabdian Masyarakat Sebagai : </b><?= $alt['pm_sbg'] ?></p>
              <p><b>Jumlah Penelitian : </b><?= $alt['penelitian_jml'] ?></p>
              <p><b>Penelitian Jurnal : </b><?= $alt['penelitian_jurnal'] ?></p>
              <p><b>Absen Finger Print : </b><?= $alt['absen_fp'] ?></p>
              <p><b>Absen Apel Senin : </b><?= $alt['absen_apel'] ?></p>
              <p><b>Anggota Kepanitiaan : </b><?= $alt['ang_kep'] ?></p>
              <p><b>Jabatan Dosen : </b><?= $alt['jab_dos'] ?></p>
              <p><b>Email : </b><?= $alt['email'] ?></p>
              <p><b>Berkas : </b><?= $alt['Berkas'] ?></p>

            </div>
          </div>
        </form>
      </div>
    </div>
  </div>

  <?php include('template/footer.php'); ?>
</div>