<?php

require_once "core/init.php";
require_once "view/header.php";

function rupiah($nilai, $pecahan = 0) {
    return number_format($nilai, $pecahan, ',', '.');
}
 ?>

 <div class="container-fluid" style="margin:50px 10px 50px 10px;">
   <div class="row">
     <div class="col-md-3">
       <form method="get">
         <div class="form-group">
           <br>
           <select name="filter" onchange="form.submit()" class="form-control">
              <option value="0">-Filter Berdasarkan Divisi-</option>
              <?php $filter = (isset($_GET['filter']) ? strtolower($_GET['filter']) : NULL);  ?>
              <option value="Manager" <?php if($filter == 'Manager '){ echo 'selected'; } ?>>Manager</option>
              <option value="Personal" <?php if($filter == 'Personal'){ echo 'selected'; } ?>>Personal</option>
              <option value="Pemasaran" <?php if($filter == 'Pemasaran'){ echo 'selected'; } ?>>Pemasaran</option>
              <option value="Keuangan" <?php if($filter == 'Keuangan'){ echo 'selected'; } ?>>Keuangan</option>
              <option value="ADM/Gudang" <?php if($filter == 'ADM'){ echo 'selected'; } ?>>ADM</option>
              <option value="Pabrik" <?php if($filter == 'Pabrik'){ echo 'selected'; } ?>>Pabrik</option>
              <option value="Regional" <?php if($filter == 'Regional'){ echo 'selected'; } ?>>Regional</option>
           </select>
         </div>
       </form>
     </div>
     <div class="col-md-2 col-md-offset-6">
       <h1>Divisi</h1>
     </div>
   </div>
   <hr>
   <div class="row" style="margin-top:50px;">
       <h4 class="text-center">Data Karyawan Fathan Development Inc</h4>
   </div>

   <div class="row">
     <div class="table-responsive">
       <table class="table table-stripped table-hover">
         <tr>
          <th>No</th>
          <th>NIP</th>
          <th>Nama Karyawan</th>
          <th>Divisi</th>
          <th>Alamat</th>
          <th>Jenis Kelamin</th>
          <th>Telepon</th>
          <th>Gaji Utama</th>
          <th>Status</th>
          <th>Tools</th>
         </tr>
         <?php
         error_reporting(0);
          if ($filter) {
            $sql = tampil_departemen($filter);
          } else {
            $halaman = 10;
            $page = isset($_GET["halaman"]) ? (int)$_GET["halaman"] : 1;
            $mulai = ($page>1) ? ($page * $halaman) - $halaman : 0;
            $result = tampil_urut();
            $total = mysqli_num_rows($result);
            $pages = ceil($total/$halaman);
            $sql = mysqli_query($link,"SELECT * FROM data_karyawan ORDER BY nama ASC LIMIT $mulai, $halaman")or die(mysql_error);
          }
          $no = $mulai + 1;
          while ($row = mysqli_fetch_assoc($sql)) :?>
         <tr>
            <td><?= $no; ?></td>
            <td><h5><?= $row['nip']; ?></h5></td>
            <td><a href="detail.php?nip=<?= $row['nip']; ?>"><?= $row['nama'];  ?></a></td>
            <td><?= $row['departemen']; ?></td>
            <td><?= $row['alamat']; ?></td>
            <td><?= $row['sex']; ?></td>
            <td><?= $row['no_telp']; ?></td>
            <td>Rp <?= rupiah($row['gaji']); ?></td>
            
            
            <td>
              <?php
              if($row['status'] == 'Tetap'){
                echo '<span class="label label-primary">Tetap</span>';
              }
              else if ($row['status'] == 'Kontrak' ){
                echo '<span class="label label-warning">Kontrak</span>';
              }
               ?>
            </td>
           <td><a class="btn btn-success btn-sm" href="edit.php?nip=<?= $row['nip']; ?>"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
               <a class="btn btn-danger btn-sm" onclick="return confirm('Yakin akan menghapus data ini?')" href="hapus.php?nip=<?= $row['nip']; ?>"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
           </td>
         </tr>
         <?php
          $no++;
          endwhile; ?>
       </table>
     </div>
     <div class="text-center">
       <ul class="pagination">
         <?php for ($i=1; $i<=$pages ; $i++){ ?>
         <li><a href="?halaman=<?php echo $i; ?>"><?php echo $i; ?></a></li>
         <?php } ?>
       </ul>
     </div>
   </div>
 </div>

 <?php
 require_once "view/footer.php";

  ?>
