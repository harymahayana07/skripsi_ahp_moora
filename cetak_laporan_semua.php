<?php
require_once __DIR__ . '/vendor/autoload.php';
require 'koneksi.php';
$sql=query("SELECT alternatif.kode, alternatif.nama, hasil.nilai FROM alternatif JOIN hasil USING (id_alternatif)");

$mpdf = new \Mpdf\Mpdf();
$krit = '<!DOCTYPE html>
<html>
<head>
      <title>Cetak Laporan</title>
      <link rel="stylesheet" href="print.css">
</head>
<body>
<table width="100%" >
<tr>
<td width="10%"><left><img src="assets1/foto/iahn-bg-tp.png"></left></td>
<td width="80%"><h2 > Institut Agama Hindu Negeri Gde Pudja Mataram </h2>
<p> Jln. Pancaka No. 7B Mataram, Nusa Tenggara Barat, Indonesia </p></td>
<td width="10%"></td>
</tr>
</table>

<hr />
<h2> Laporan Hasil Perekrutan Guru </h2>
      <table border="1" cellpadding="10" cellspacing="0">
            <tr>
                  <th>Kode</th>
                  <th>Nama</th>
                  <th>Nilai</th>
                  <th>Rank</th>
            </tr>';
            $i=1;
            foreach ($sql as $row) {
                  $krit .= '<tr>
                              <td>'. $row["kode"] .'</td>
                              <td>'. $row["nama"] .'</td>
                              <td>'. $row["nilai"] .'</td>
                              <td>'. $i .'</td>
                  </tr>';
                  $i++;
            }


 $krit .=    '</div> </table>
</body>
</html>'; 
$mpdf->WriteHTML($krit);
$mpdf->Output('laporan_rekrutmen.pdf', \Mpdf\Output\Destination::INLINE);
?>