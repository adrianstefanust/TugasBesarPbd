<div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>Data Customer</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <li><a href="#">Dashboard</a></li>
                            <li><a href="#">Data</a></li>
                            <li class="active">Data Customer</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">
                
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Data Customer</strong>
                        </div>
                        
                  
                
                        <div class="card-body">
                  <table id="bootstrap-data-table" class="table table-striped table-bordered">
                    <div class="">
                <div class="card text-white bg-flat-color-2">
                    <div class="card-body pb-0">
                        <a href="<?php echo base_url(); ?>viewInsertCustomer">
                            <p class="text-light"><i class="fa fa-plus fa-lg"></i>&nbsp;
                                              <span id="payment-button-amount">Insert Data Customer</span></p>
                        </a>
                    </div>
                </div>
            </div>
            <div class="">
                        <div class="card text-black">
                            <div class="card-body pb-0">
                                <h5><?php echo $this->session->flashdata('info_add');?></h5>
                            </div>
                        </div>
                    </div>
                    <thead>
                      <tr>
                        <th>Nama</th>
                        <th>Lokasi</th>
                        <th>Tanggal Lahir</th>
                        <th>Alamat</th>
                        <th>Nilai Investasi</th>
                        <th>Tanggal Bergabung</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php if($dataCustomer) : ?>
                        <?php foreach($dataCustomer as $customer) : ?>
                          
                          <tr>
                            <td><?php echo $customer['nama'];?></td>
                            <td><?php echo $customer['lokasi'];?></td>
                            <td><?php echo $customer['tanggalLahir'];?></td>
                            <td><?php echo $customer['alamat'];?></td>
                            <td><?php echo number_format($customer['nilaiInvestasi']);?></td>
                            <td><?php echo $customer['tanggalMasuk'];?></td>
                            <td>
                                <a href="<?php echo base_url();?>editCustomer/<?php echo $customer['idCustomer']; ?>" class="btn btn-success btn-sm">
                                    <i class="fa fa-dot-circle-o"></i> Ubah Data
                                </a>
                                <form method="post" action="<?php echo base_url(); ?>revertCustomer">
                                     <input type="hidden" name="idCustomer" value="<?php echo $customer['idCustomer']; ?>">
                                     <input type="hidden" name="idAdmin" value="<?php echo $this->session->userdata('idAdmin'); ?>">
                                     <button style="margin-top: 5px;" type="submit" href="" class="btn btn-danger btn-sm">
                                                    <i class="fa fa-ban"></i> Revert Data Customer
                                                </button>
                                </form>
                            </td>
                          </tr>
                        <?php endforeach; ?>
                      <?php endif; ?>
                      </tbody>
                  </table>
                        </div>
                    </div>
                </div>


                </div>
            </div><!-- .animated -->
        </div><!-- .content -->


    </div><!-- /#right-panel -->

    <!-- Right Panel -->


    <script src="<?php echo base_url("assets/js/vendor/jquery-2.1.4.min.js"); ?>"></script>
    <script src="<?php echo base_url("assets/js/popper.min.js"); ?>"></script>
    <script src="<?php echo base_url("assets/js/plugins.js"); ?>"></script>
    <script src="<?php echo base_url("assets/js/main.js"); ?>"></script>


    <script src="<?php echo base_url("assets/js/lib/data-table/datatables.min.js"); ?>"></script>
    <script src="<?php echo base_url("assets/js/lib/data-table/dataTables.bootstrap.min.js"); ?>"></script>
    <script src="<?php echo base_url("assets/js/lib/data-table/dataTables.buttons.min.js"); ?>"></script>
    <script src="<?php echo base_url("assets/js/lib/data-table/buttons.bootstrap.min.js"); ?>"></script>
    <script src="<?php echo base_url("assets/js/lib/data-table/jszip.min.js"); ?>"></script>
    <script src="<?php echo base_url("assets/js/lib/data-table/pdfmake.min.js"); ?>"></script>
    <script src="<?php echo base_url("assets/js/lib/data-table/vfs_fonts.js"); ?>"></script>
    <script src="<?php //echo base_url("assets/js/lib/data-table/buttons.html5.min.js"); ?>"></script>
    <script src="<?php echo base_url("assets/js/lib/data-table/buttons.print.min.js"); ?>"></script>
    <script src="<?php echo base_url("assets/js/lib/data-table/buttons.colVis.min.js"); ?>"></script>
    <script src="<?php echo base_url("assets/js/lib/data-table/datatables-init.js"); ?>"></script>


    <script type="text/javascript">
        $(document).ready(function() {
          $('#bootstrap-data-table-export').DataTable();
        } );
    </script>


</body>
</html>