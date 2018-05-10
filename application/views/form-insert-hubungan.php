<div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>Dashboard</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <li><a href="#">Dashboard</a></li>
                            <li><a href="#">Insert Data</a></li>
                            <li class="active">Insert Hubungan</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <div class="content mt-3">
            <div class="animated fadeIn">


                <div class="row">
                  <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Insert Hubungan</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                              <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Hubungan</h3>
                                      <?php
                                      if($this->session->flashdata('info_add')){
                                          ?>
                                          <hr>
                                          <h4 align="center" style="color:red;"><?php echo $this->session->flashdata('info_add'); ?></h4>
                                          <?php
                                      }
                                      ?>
                                  </div>
                                  <hr>
                                  <form action="./insertHubungan" method="post" novalidate="novalidate">
                                      <div class="form-group">
                                          <label for="nama_hubungan" class="control-label mb-1">Nama Hubungan</label>
                                          <input id="nama_hubungan" name="nama_hubungan" type="text" class="form-control" aria-required="true" aria-invalid="false">
                                      </div>
                                      <div>
                                          <button id="payment-button" type="submit" class="btn btn-lg btn-info btn-block">
                                              <i class="fa fa-plus fa-lg"></i>&nbsp;
                                              <span id="payment-button-amount">Tambah</span>
                                          </button>
                                      </div>
                                  </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div><!--/.col-->


                </div>


            </div><!-- .animated -->
        </div><!-- .content -->


    </div><!-- /#right-panel -->

    <!-- Right Panel -->


    <script src="<?php echo base_url("assets/js/vendor/jquery-2.1.4.min.js"); ?>"></script>
    <script src="<?php echo base_url("assets/js/popper.min.js"); ?>"></script>
    <script src="<?php echo base_url("assets/js/plugins.js"); ?>"></script>
    <script src="<?php echo base_url("assets/js/main.js"); ?>"></script>


</body>
</html>