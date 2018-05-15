<div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>Data Administrator</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <li><a href="#">Dashboard</a></li>
                            <li><a href="#">Data</a></li>
                            <li class="active">Data Administrator</li>
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
                            <strong class="card-title">Data Administrator</strong>
                        </div>
                        
                  
                
                        <div class="card-body">
                  <table id="bootstrap-data-table" class="table table-striped table-bordered">
                    <div class="">
                <div class="card text-white bg-flat-color-1">
                    <div class="card-body pb-0">
                        <a href="<?php echo base_url(); ?>viewAdmin">
                        <p class="text-light"><i class="fa fa-plus fa-lg"></i>&nbsp;
                                              <span id="payment-button-amount">Insert Data Administrator</span></p>
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
                        <th>Username</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php if($dataAdministrator) : ?>
                        <?php foreach($dataAdministrator as $admin) : ?>
                          
                          <tr>
                            <td><?php echo $admin['nama'];?></td>
                            <td><?php echo $admin['username'];?></td>
                            <td><a href = "<?php echo base_url();?>getDetailAdmin/<?php echo $admin['id'];?>" class="btn btn-success btn-sm">
                          <i class="fa fa-dot-circle-o"></i> Ubah Data
                        </a></td>
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
    <script src="<?php echo base_url("assets/js/lib/data-table/buttons.html5.min.js"); ?>"></script>
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