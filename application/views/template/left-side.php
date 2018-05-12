<body>


        <!-- Left Panel -->

    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">

            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="./home"><h4>CRM</h4></a>
                <a class="navbar-brand hidden" href="<?php echo base_url();?>home"><img src="images/logo2.png" alt="Logo"></a>
            </div>

            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="<?php echo base_url();?>home"> <i class="menu-icon fa fa-dashboard"></i>Dashboard </a>
                    </li>
                    <h3 class="menu-title">Action</h3><!-- /.menu-title -->
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-laptop"></i>Insert Data</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-puzzle-piece"></i><a href="<?php echo base_url();?>viewAdmin">Admin</a></li>
                            <li><i class="fa fa-id-badge"></i><a href="<?php echo base_url();?>viewInsertCustomer">Customer</a></li>
                            <li><i class="fa fa-bars"></i><a href="<?php echo base_url();?>viewHubungan">Hubungan</a></li>
                            <li><i class="fa fa-share-square-o"></i><a href="<?php echo base_url();?>viewHubunganCustomer">Hubungan Costumer</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>Data</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-table"></i><a href="<?php echo base_url();?>dataCustomer">Data Customer</a></li>
                            <li><i class="fa fa-table"></i><a href="<?php echo base_url();?>dataAdministrator">Data Administrator</a></li>
                            <li><i class="fa fa-table"></i><a href="<?php echo base_url();?>dataHubunganCustomer">Data Hubungan Customer</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-search"></i>Advanced Search</a>
                        <ul class="sub-menu children dropdown-menu">
                        <li><i class="fa fa-search"></i><a href="<?php echo base_url();?>advancedSearch">Advanced Search</a></li>
                        </ul>
                    </li>
                   
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside><!-- /#left-panel -->

    <!-- Left Panel -->