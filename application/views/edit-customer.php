<div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>Edit Data Customer</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <li><a href="#">Dashboard</a></li>
                            <li><a href="#">Edit Data</a></li>
                            <li class="active">Edit Data Customer</li>
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
                            <strong class="card-title">Edit Data Customer</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                              <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Edit Data Customer</h3>
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
                                  <form action="./editCustomer" method="post" novalidate="novalidate">
                                    <?php if($detailCustomer) : ?>
                                              <?php foreach($detailCustomer as $det) : ?>
                                      <div class="form-group">
                                          <label for="namaCustomer" class="control-label mb-1">Nama</label>
                                          <input id="namaCustomer" name="namaCustomer" type="text" class="form-control" aria-required="true" aria-invalid="false" value="<?php echo $det['nama'];?>">
                                      </div>
                                      <div class="form-group has-success">
                                          <label for="lokasi" class="control-label mb-1">Lokasi</label>
                                          <select name="lokasi" id="lokasi" class="form-control">
                                             <option value="" disabled selected="">-- Please Select Option --</option>
                                            <?php if($lokasi) : ?>
                                              <?php foreach($lokasi as $lok) : ?>
                                                <option value="<?php echo $lok['idLokasi'];?>"><?php echo $lok['nama'];?></option>
                                              <?php endforeach; ?>
                                            <?php endif; ?>
                                          </select>
                                      </div>
                                      <div class="form-group">
                                          <label for="tanggal_lahir" class="control-label mb-1">Tanggal Lahir</label>
                                          <input id="tanggal_lahir" name="tanggal_lahir" type="date" class="form-control" value="<?php echo $det['tanggalLahir'];?>">
                                      </div>
                                      <div class="form-group">
                                          <label for="alamat" class="control-label mb-1">Alamat</label>
                                          <input id="alamat" name="alamat" type="text" class="form-control" value="<?php echo $det['alamat'];?>">
                                      </div>
                                      <div class="form-group">
                                          <label for="nilai_invest" class="control-label mb-1">Nilai Investasi</label>
                                          <input id="nilai_invest" name="nilai_invest" type="number" class="form-control" value="<?php echo $det['nilaiInvestasi'];?>">
                                      </div>
                                      <div>
                                          <button id="payment-button" type="submit" class="btn btn-lg btn-info btn-block">
                                              <i class="fa fa-lock fa-lg"></i>&nbsp;
                                              <span id="payment-button-amount">Register</span>
                                          </button>
                                      </div>
                                      <?php endforeach; ?>
                                            <?php endif; ?>
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