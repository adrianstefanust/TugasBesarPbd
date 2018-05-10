

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

            <div class="col-sm-12">
                <div class="alert  alert-success alert-dismissible fade show" role="alert">
                  QUICK ACCESS
                </div>
            </div>


           <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-flat-color-1">
                    <div class="card-body pb-0">
                        <a href="./viewAdmin">
                        <p class="text-light">INSERT DATA ADMINISTRATOR<br></p>
                        </a>

                    </div>

                </div>
            </div>
            <!--/.col-->

            <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-flat-color-2">
                    <div class="card-body pb-0">
                        <a href="./viewInsertCustomer">
                            <p class="text-light">INSERT DATA CUSTOMER<br></p>
                        </a>
                    </div>
                </div>
            </div>
            <!--/.col-->

            <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-flat-color-3">
                    <div class="card-body pb-0">
                        <a href="./viewHubungan">
                            <p class="text-light">INSERT HUBUNGAN</p>
                        </a>
                        

                    </div>
                </div>
            </div>
            <!--/.col-->

            <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-flat-color-4">
                    <div class="card-body pb-0">
                        <a href="./viewHubunganCustomer">
                            <p class="text-light">INSERT HUBUNGAN CUSTOMER</p>
                        </a>
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
                                            <?php echo $total['totalInvestasi'];?>
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

</body>
</html>
