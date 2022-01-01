<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="" name="description" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="assets/images/logos/deep.ico">
    <!-- Bootstrap Css -->
    <link href="assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="assets/css/app.css" id="app-style" rel="stylesheet" type="text/css" />
    <style>
        .bg-login-overlay {
            border-radius: 0;
        }
    </style>
</head>

<body>
    <div class="account-pages my-5 pt-sm-5">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8 col-lg-6 col-xl-5">
                    <div class="card overflow-hidden">
                        <div class="bg-login text-center">
                            <div class="bg-login-overlay"></div>
                            <div class="position-relative">
                                <p>
                                    <img src="assets/images/logos/deep_horizontal_text.png" alt="" height="30">
                                </p>
                                <p class="text-white-50 mb-0">Sign in to continue</p>
                                <a href="index.html" class="logo logo-admin mt-4">
                                    <img src="assets/images/logos/moumen.jpeg" alt="" height="80">
                                </a>
                            </div>
                        </div>
                        <div class="card-body pt-5">
                            <div class="p-2">
                                <!-- success -->
                                <form class="form-horizontal" action="" method="post">
									
									<p>
										<font color="red">${errorMessage}</font>
									</p>
									
                                    <div class="form-group">
                                        <label for="login">Login</label>
                                        <input type="text" class="form-control" id="login" name="login" placeholder="Enter login">
                                    </div>

                                    <div class="form-group">
                                        <label for="password">Password</label>
                                        <input type="password" class="form-control" id="password" name="password" placeholder="Enter password">
                                    </div>

                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="customControlInline">
                                        <label class="custom-control-label" for="customControlInline">Remember
                                            me</label>
                                    </div>

                                    <div class="mt-3">
                                        <button class="btn btn-primary btn-block waves-effect waves-light"
                                            type="submit">Log In</button>
                                    </div>

                                    <!-- <div class="mt-4 text-center">
                                        <a href="#" class="text-muted"><i class="mdi mdi-lock mr-1"></i> Forgot your
                                            password?</a>
                                    </div> -->
                                </form>
                                <div class = "row mt-4 justify-content-center">
                                    <div class = "col-md-auto">
                                    <a href="<c:url value="/New_account"/>" class="link-primary"><u>Creer un compte </u></a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- JAVASCRIPT -->
    <script src="assets/libs/jquery/jquery.min.js"></script>
    <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/libs/metismenu/metisMenu.min.js"></script>
    <script src="assets/libs/simplebar/simplebar.min.js"></script>
    <script src="assets/libs/node-waves/waves.min.js"></script>

    <script src="assets/js/app.js"></script>

</body>

</html>