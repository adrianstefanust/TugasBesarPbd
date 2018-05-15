<div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>Edit Data Administrator</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <li><a href="#">Dashboard</a></li>
                            <li><a href="#">Edit Data</a></li>
                            <li class="active">Edit Data Administrator</li>
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
                            <strong class="card-title">Edit Data Administrator</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                              <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Edit Data Administrator <br>
                                      <?php if($detailAdmin) : ?>
                                        <?php foreach($detailAdmin as $det) : 
                                          echo "<span>".$det['nama']."</span>";
                                        endforeach; ?>
                                      <?php endif; ?> 
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
                                  <form action="<?php echo base_url()?>editAdmin" method="post" novalidate="novalidate">
                                    <?php if($detailAdmin) : ?>
                                              <?php foreach($detailAdmin as $det) : ?>
                                      <div class="form-group">
                                          <label for="namaAdmin" class="control-label mb-1">Nama</label>
                                          <input type="hidden" name="idAdmin" value="<?php echo $det['id']; ?>">
                                          <input id="namaAdmin" name="namaAdmin" type="text" class="form-control" aria-required="true" aria-invalid="false" value="<?php echo $det['nama'];?>">
                                      </div>
                                      <div class="form-group">
                                          <label for="namaAdmin" class="control-label mb-1">Password</label>
                                          <input id="passwordAdmin" name="passwordAdmin" type="password" class="form-control" aria-required="true" aria-invalid="false" value="<?php echo $det['pass'];?>">
                                      </div>
                                      <div class="form-group">
                                          <label for="usernameAdmin" class="control-label mb-1">Username</label>
                                          <input id="usernameAdmin" name="usernameAdmin" type="text" class="form-control" aria-required="true" aria-invalid="false" value="<?php echo $det['username'];?>">
                                      </div>
                                      <div>
                                        <div class="col-lg-4">
                                          <a href="<?php echo base_url();?>dataAdministrator" class="btn btn-lg btn-danger btn-block"><i class="fa fa-remove fa-lg"></i>&nbsp; BACK</a>
                                        </div>
                                        <div class="col-lg-8">
                                          <button id="payment-button" type="submit" class="btn btn-lg btn-info btn-block">
                                              <i class="fa fa-check fa-lg"></i>&nbsp;
                                              <span id="payment-button-amount">Edit Data</span>
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