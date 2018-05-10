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
                            <li class="active">Insert Hubungan Customer</li>
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
                            <strong class="card-title">Insert Hubungan Customer</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                              <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Hubungan Customer</h3>
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
                                  <form action="./insertHubunganCustomer" method="post" novalidate="novalidate">
                                      <div class="form-group">
                                          <label for="jenis_hubungan" class="control-label mb-1">Jenis Hubungan</label>
                                           <select name="jenis_hubungan" id="jenis_hubungan" class="form-control">
                                             <option value="" disabled selected="">-- Please Select Option --</option>
                                            <?php if($listHubungan) : ?>
                                              <?php foreach($listHubungan as $hub) : ?>
                                                <option value="<?php echo $hub['idHubungan'];?>"><?php echo $hub['nama'];?></option>
                                              <?php endforeach; ?>
                                            <?php endif; ?>
                                          </select>
                                      </div>
                                      <div class="form-group">
                                          <label for="customer1" class="control-label mb-1">Nama Customer 1</label>
                                           <select name="customer1" id="customer1" class="form-control">
                                             <option value="" disabled selected="">-- Please Select Option --</option>
                                            <?php if($listCustomer) : ?>
                                              <?php foreach($listCustomer as $cust) : ?>
                                                <option value="<?php echo $cust['idCustomer'];?>"><?php echo $cust['nama'];?></option>
                                              <?php endforeach; ?>
                                            <?php endif; ?>
                                          </select>
                                      </div>
                                      <div class="form-group">
                                          <label for="customer1" class="control-label mb-1">Nama Customer 2</label>
                                           <select name="customer2" id="customer2" class="form-control">
                                             <option value="" disabled selected="">-- Please Select Option --</option>
                                            <?php if($listCustomer) : ?>
                                              <?php foreach($listCustomer as $cust) : ?>
                                                <option value="<?php echo $cust['idCustomer'];?>"><?php echo $cust['nama'];?></option>
                                              <?php endforeach; ?>
                                            <?php endif; ?>
                                          </select>
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