<?php
session_start();
if (!isset($_SESSION["operator"])) {
  header("Location: login2.php");
  exit;
}
$page = "home";
require 'koneksi.php';
include('template/topbar.php');
include('template/sidebar.php');
// var_dump($_SESSION);
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
  <div class="alert">
    <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
    <strong>Selamat Datang <?= $_SESSION['username'] ?>!</strong>
  </div>
  <!-- Content Row -->
  <div class="row">

    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-primary shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                Alternatif Yang Siap Dinilai</div>
              <?php $alternatif = query("SELECT * FROM alternatif WHERE status='1'");
              $jml_alternatif = count($alternatif); ?>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $jml_alternatif ?></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-users fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-success shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                Alternatif Yang Belum Diverifikasi</div>
              <?php $alternatif = query("SELECT * FROM alternatif WHERE status='0'");
              $jml_alternatif = count($alternatif); ?>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $jml_alternatif ?></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-list fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-danger shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">
                Alternatif Diblokir</div>
              <?php $alternatif = query("SELECT * FROM alternatif WHERE status='2'");
              $jml_alternatif = count($alternatif); ?>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $jml_alternatif ?></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-users fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Pending Requests Card Example -->

  </div>
  <?php include('template/footer.php'); ?>
</div>