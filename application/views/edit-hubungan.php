<div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>Edit Data Hubungan Customer</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <li><a href="#">Dashboard</a></li>
                            <li><a href="#">Edit Data</a></li>
                            <li class="active">Edit Data Hubungan Customer</li>
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
                            <strong class="card-title">Edit Data Hubungan Customer</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                              <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Edit Data Hubungan Customer <br>
                                      </h3>
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
                                  <form action="<?php echo base_url()?>editHubunganCustomer" method="post" novalidate="novalidate">
                                    <?php if($detailHubunganCustomer) : ?>
                                              <?php foreach($detailHubunganCustomer as $det) : ?>
                                      <div class="form-group">
                                          <label for="namaCustomer1" class="control-label mb-1">Nama Customer 1</label>
                                          <input type="hidden" name="idCustomer1" value="<?php echo $det['idCustomer1']; ?>">
                                          <input id="namaCustomer1" name="namaCustomer1" type="text" class="form-control" aria-required="true" aria-invalid="false" value="<?php echo $det['namaCust1'];?>" disabled>
                                      </div>
                                      <div class="form-group has-success">
                                          <label for="hubungan" class="control-label mb-1">Hubungan</label>
                                          <select name="hubungan" id="hubungan" class="form-control">
                                             <option value="" disabled selected="">-- Please Select Option --</option>
                                            <?php if($listHubungan) : ?>
                                              <?php foreach($listHubungan as $lok) : ?>
                                                <option value="<?php echo $lok['idHubungan'];?>" <?php if($lok['idHubungan'] == $det['idhubungan']){echo "selected";} ?> ><?php echo $lok['nama'];?></option>
                                              <?php endforeach; ?>
                                            <?php endif; ?>
                                          </select>
                                      </div>
                                      <div class="form-group">
                                        <input type="hidden" name="idHubunganLama" value="<?php echo $det['idhubungan']; ?>">
                                          <label for="namaCustomer2" class="control-label mb-1">Nama Customer 2</label>
                                          <input type="hidden" name="idCustomer2" value="<?php echo $det['idCustomer2']; ?>">
                                          <input id="namaCustomer2" name="namaCustomer2" type="text" class="form-control" aria-required="true" aria-invalid="false" value="<?php echo $det['namaCust2'];?>" disabled>
                                      </div>
                                      <div>
                                        <div class="col-lg-4">
                                          <a href="<?php echo base_url();?>dataHubunganCustomer" class="btn btn-lg btn-danger btn-block"><i class="fa fa-remove fa-lg"></i>&nbsp; BACK</a>
                                        </div>
                                        <div class="col-lg-8">
                                          <button id="payment-button" type="submit" class="btn btn-lg btn-info btn-block">
                                              <i class="fa fa-check fa-lg"></i>&nbsp;
                                              <span id="payment-button-amount">Edit Data Hubungan</span>
                                          </button>
                                        </div>  
                                          
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