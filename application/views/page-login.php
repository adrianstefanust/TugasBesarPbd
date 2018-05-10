
<body class="bg-dark">


    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                <div class="login-logo">
                </div>
                <div class="login-form">
                    <div>
                        <a href="index.html">
                        <h3 align="center">Customer Relational Management</h3>
                        <br>
                        <h4 align="center">Admin Site</h4>
                        <hr>
                        </a>
                    </div>
                    <?php echo form_open('/attemptLogin');?>
                        <div class="form-group">
                            <label>Email address</label>
                            <input type="text" name="username" class="form-control" placeholder="Email">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" name= "password" class="form-control" placeholder="Password">
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> Remember Me
                            </label>
                            <label class="pull-right">
                                <a href="#">Forgotten Password?</a>
                            </label>

                        </div>
                        <button type="submit" class="btn btn-success btn-flat m-b-30 m-t-30">Sign in</button>
                    </form>
                    <?php
                        if($this->session->flashdata('error_login')){
                            ?>
                            <br>
                            <h5 style="color: red;" align="center"><?php echo $this->session->flashdata('error_login'); ?></h5>
                            <?php
                        }
                    ?>
                    
                </div>
            </div>
        </div>
    </div>


    <script src="<?php echo base_url("assets/js/vendor/jquery-2.1.4.min.js"); ?>"></script>
    <script src="<?php echo base_url("assets/js/popper.min.js"); ?>"></script>
    <script src="<?php echo base_url("assets/js/plugins.js"); ?>"></script>
    <script src="<?php echo base_url("assets/js/main.js"); ?>"></script>


</body>
</html>
