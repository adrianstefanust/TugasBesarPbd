<div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>Advanced Search</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <li><a href="#">Dashboard</a></li>
                            <li class="active"><a href="#">Advanced Search</a></li>
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
                            <strong class="card-title">Advanced Search Customer</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                              <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Advanced Search Customer</h3>
                                  </div>
                                  <hr>
                                  <form action="<?php echo base_url();?>search" method="post" novalidate="novalidate">
                                      <div class="form-group">
                                          <label for="namaCustomer" class="control-label mb-1">Nama Customer</label>
                                          <input id="namaCustomer" name="namaCustomer" type="text" class="form-control" aria-required="true" aria-invalid="false">
                                      </div>
                                      <div class="form-group has-success">
                                          <label for="lokasi" class="control-label mb-1">Lokasi Customer</label>
                                          <select name="lokasi" id="lokasi" class="form-control">
                                             <option value="" disabled selected="">-- Please Select Option --</option>
                                            <?php if($lokasi) : ?>
                                              <?php foreach($lokasi as $lok) : ?>
                                                <option value="<?php echo $lok['id'];?>"><?php echo $lok['nama'];?></option>
                                              <?php endforeach; ?>
                                            <?php endif; ?>
                                          </select>
                                      </div>
                                      <div class="form-group">
                                          <label for="tanggal_lahir" class="control-label mb-1">Rentang Umur</label>
                                          <div class="">
                                          <input id="umur_awal" name="umur_awal" type="number" class="form-control col-sm-3" value=""> - 
                                          <input id="umur_akhir" name="umur_akhir" type="number" class="form-control col-sm-3" value="">
                                          </div>
                                          
                                      </div>
                                      <div class="form-group">
                                          <label for="tanggal_lahir" class="control-label mb-1">Rentang Investasi</label>
                                          <div class="">
                                          <input id="investasi_awal" name="investasi_awal" type="number" class="form-control col-sm-3" value=""> - 
                                          <input id="investasi_akhir" name="investasi_akhir" type="number" class="form-control col-sm-3" value="">
                                          </div>
                                          
                                      </div>
                                      <div>
                                          <button id="payment-button" type="submit" class="btn btn-lg btn-info btn-block">
                                              <i class="fa fa-search fa-lg"></i>&nbsp;
                                              <span id="payment-button-amount">Search</span>
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