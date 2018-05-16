

    <!-- Right Panel -->

   

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
                            <li class="active">Dashboard</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="content mt-3">
            <div class="col-md-12">
               <div class="col-md-3">
                <section class="card">
                    <div class="twt-feed blue-bg">
                        <div class="corner-ribon black-ribon">
                            <i class="fa fa-twitter"></i>
                        </div>
                        <div class="fa fa-twitter wtt-mark"></div>

                        <div class="media">
                            <a href="#">
                                <img class="align-self-center rounded-circle mr-3" style="width:85px; height:85px;" alt="" src="images/admin.jpg">
                            </a>
                            <div class="media-body">
                                <h3 class="text-white display-6">Vincent Joel</h3>
                                <p class="text-light">Mahasiswa Bocuan</p>
                            </div>
                        </div>
                    </div>
                    <footer class="twt-footer">
                        <a href="#"><i class="fa fa-camera"></i></a>
                        <a href="#"><i class="fa fa-map-marker"></i></a>
                        Parahyangan Catholic University
                        <span class="pull-right">
                            2015
                        </span>
                    </footer>
                </section>
                </div> 
                <div class="col-md-9">
                    <div class="alert  alert-success alert-dismissible fade show" role="alert">
                    <h4>
                    QUICK ACCESS</h4>
                    </div>
                    <div class="col-md-5">
                    <div class="card text-white bg-flat-color-1">
                    <div class="card-body pb-0">
                        <a href="<?php echo base_url();?>viewAdmin">
                        <p class="text-light">INSERT DATA ADMINISTRATOR<br></p>
                        </a>
                    </div>
                    </div>
                </div>
                    <div class="col-md-5">
                <div class="card text-white bg-flat-color-2">
                    <div class="card-body pb-0">
                        <a href="<?php echo base_url();?>/viewInsertCustomer">
                            <p class="text-light">INSERT DATA CUSTOMER<br></p>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-5">
                <div class="card text-white bg-flat-color-3">
                    <div class="card-body pb-0">
                        <a href="<?php echo base_url();?>/viewHubungan">
                            <p class="text-light">INSERT HUBUNGAN</p>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-5">
                <div class="card text-white bg-flat-color-4">
                    <div class="card-body pb-0">
                        <a href="<?php echo base_url();?>/viewHubunganCustomer">
                            <p class="text-light">INSERT HUBUNGAN CUSTOMER</p>
                        </a>
                    </div>
                </div>
            </div>
                </div>
            </div>
            <!--/.col-->

            <div class="col-xl-3 col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <div class="stat-widget-one">
                            <div class="stat-icon dib"><i class="ti-money text-success border-success"></i></div>
                            <div class="stat-content dib">
                                <div class="stat-text">Total Investasi Customer</div>
                                <div class="stat-digit">
                                    <?php if($totalInvestasi) : ?>
                                        <?php foreach($totalInvestasi as $total) : ?>
                                            <?php echo number_format($total['totalInvestasi'], 0);?>
                                        <?php endforeach; ?>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-xl-3 col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <div class="stat-widget-one">
                            <div class="stat-icon dib"><i class="ti-user text-primary border-primary"></i></div>
                            <div class="stat-content dib">
                                <div class="stat-text">Jumlah Customer</div>
                                <div class="stat-digit">
                                    <?php if($jumlahCustomer) : ?>
                                        <?php foreach($jumlahCustomer as $jum) : ?>
                                            <?php echo $jum['totalCustomer'];?>
                                        <?php endforeach; ?>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="alert  alert-danger alert-dismissible fade show" role="alert">
                  <h4>
                  KARAKTERISTIK DAERAH</h4>
                </div>
            </div>
            <div class="col-md-12">
                <div class="col-md-6">
                    <div class="form-group">
                        <form id="karakteristik">
                            <div class="form-group">
                                Pilih Lokasi : <select id="lokasi" name="lokasi" class="form-control">
                                    <option selected disabled>-- Please Select Option --</option>
                                <?php if($lokasi) : ?>
                                    <?php foreach($lokasi as $lok) : ?>
                                        <option value="<?php echo $lok['idLokasi']; ?>"><?php echo $lok['nama']; ?></option>
                                    <?php endforeach; ?>
                                <?php endif; ?>
                                </select>
                                <br>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-6">
                    <table id="bootstrap-data-table" class="table table-striped table-bordered">
                        <thead>
                            <th>Rata - Rata Investasi</th>
                            <th>Jumlah Investasi</th>
                            <th>Rata - Rata Umur</th>
                            <th>Jumlah Customer</th>
                        </thead>
                        <tbody id="data-karakteristik">
                            <td colspan="4">No Data.<br>Silahkan Pilih Lokasi terlebih dahulu</td>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="alert  alert-warning alert-dismissible fade show" role="alert">
                  <h4>
                  Perbandingan Antar Daerah</h4>
                </div>
            </div>
            <div class="col-md-12">
                <div class="col-md-6">
                    <div class="form-group">
                        <form id="perbandingan">
                            <div class="form-group">
                                Pilih Lokasi 1 : <select id="lokasi1" name="lokasi1" class="form-control" required>
                                    <option selected disabled>-- Please Select Option --</option>
                                <?php if($lokasi) : ?>
                                    <?php foreach($lokasi as $lok) : ?>
                                        <option value="<?php echo $lok['idLokasi']; ?>"><?php echo $lok['nama']; ?></option>
                                    <?php endforeach; ?>
                                <?php endif; ?>
                                </select>
                                <br>
                            </div>
                            <div class="form-group">
                                Pilih Lokasi 2 : <select id="lokasi2" name="lokasi2" class="form-control" required>
                                    <option selected disabled>-- Please Select Option --</option>
                                <?php if($lokasi) : ?>
                                    <?php foreach($lokasi as $lok) : ?>
                                        <option value="<?php echo $lok['idLokasi']; ?>"><?php echo $lok['nama']; ?></option>
                                    <?php endforeach; ?>
                                <?php endif; ?>
                                </select>
                                <br>
                            </div>
                            <div class="form-group">
                                Pilih Karakteristik yang ingin dicari : <select id="field" name="field" class="form-control" required>
                                    <option selected disabled>-- Please Select Option --</option>
                                    <option value="0">Jumlah Investasi</option>
                                    <option value="1">Jumlah Customer</option>
                                    <option value="2">Rata-Rata Umur</option>
                                    <option value="3">Rata-Rata Investasi</option>
                                </select>
                                <br>
                            </div>
                             <button type="submit" class="btn btn-lg btn-info btn-block"><i class="fa fa-search fa-lg"></i> Search</button>
                        </form>
                    </div>
                </div>
                <div class="col-md-6" id="data-perbandingan">
                    <table id="bootstrap-data-table" class="table table-striped table-bordered">
                        <thead>
                            <th>Hasil Lokasi 1</th>
                            <th>Hasil Lokasi 2</th>
                        </thead>
                        <tbody id="data-karakteristik">
                            <td colspan="4">No Data.<br>Silahkan Pilih Lokasi terlebih dahulu</td>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="alert  alert-primary alert-dismissible fade show" role="alert">
                  <h4>
                  EVENT ULANG TAHUN TERDEKAT (7 HARI)</h4>
                </div>
            </div>
            <div class="col-md-12">
                <table id="bootstrap-data-table" class="table table-striped table-bordered">
                        <thead>
                            <th>Nama Customer</th>
                            <th>Tanggal Lahir</th>
                            <th>Ulang Tahun ke</th>
                        </thead>
                        <tbody id="">
                             <?php if($ulangTahun) : ?>
                                    <?php foreach($ulangTahun as $ultah) : ?>
                                        <tr>
                                        <td><?php echo $ultah['nama'] ?></td>
                                        <td><?php echo $ultah['tanggalLahir'] ?></td>
                                        <td><?php echo $ultah['Umur'] ?></td>
                                    </tr>
                                    <?php endforeach; ?>
                                <?php endif; ?>
                        </tbody>
                    </table>
            </div>
        </div> <!-- .content -->
    </div><!-- /#right-panel -->

    <!-- Right Panel -->

    <script src="<?php echo base_url("assets/js/vendor/jquery-2.1.4.min.js"); ?>"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
    <script src="<?php echo base_url("assets/js/plugins.js"); ?>"></script>
    <script src="<?php echo base_url("assets/js/main.js"); ?>"></script>


    <script src="<?php echo base_url("assets/js/lib/chart-js/Chart.bundle.js"); ?>"></script>
    <script src="<?php echo base_url("assets/js/dashboard.js"); ?>"></script>
    <script src="<?php echo base_url("assets/js/widgets.js"); ?>"></script>
    <script src="<?php echo base_url("assets/js/lib/vector-map/jquery.vmap.js"); ?>"></script>
    <script src="<?php echo base_url("assets/js/lib/vector-map/jquery.vmap.min.js"); ?>"></script>
    <script src="<?php echo base_url("assets/js/lib/vector-map/jquery.vmap.sampledata.js"); ?>"></script>
    <script src="<?php echo base_url("assets/js/lib/vector-map/country/jquery.vmap.world.js"); ?>"></script>
    <script>
        ( function ( $ ) {
            "use strict";

            jQuery( '#vmap' ).vectorMap( {
                map: 'world_en',
                backgroundColor: null,
                color: '#ffffff',
                hoverOpacity: 0.7,
                selectedColor: '#1de9b6',
                enableZoom: true,
                showTooltip: true,
                values: sample_data,
                scaleColors: [ '#1de9b6', '#03a9f5' ],
                normalizeFunction: 'polynomial'
            } );
        } )( jQuery );
    </script>
    <script>
        $( document ).ready(function() {
            $( "#lokasi" ).change(function( event ) {
                var id = $("#lokasi").val();
                event.preventDefault();
                $.ajax({

                    url: "http://localhost/" + "CRM/karakteristikDaerah",
                    method: "post",
                    data: {idLokasi : id},
                    success: function(data) {
                        $("#data-karakteristik").html(data);
                    }
                });
            });
        });
    </script>
    <script>
        $( document ).ready(function() {
            $( "#perbandingan" ).submit(function( event ) {
                var id1 = $("#lokasi1").val();
                var id2 = $("#lokasi2").val();
                var id3 = $("#field").val();
                event.preventDefault();
                $.ajax({

                    url: "http://localhost/" + "CRM/perbandingan",
                    method: "post",
                    data: {
                        idLokasi1 : id1,
                        idLokasi2 : id2,
                        field : id3
                        },
                    success: function(data) {
                        $("#data-perbandingan").html(data);
                    }
                });
            });
        });
    </script>
</body>
</html>
