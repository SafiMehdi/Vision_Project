<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>Sign_Up</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="" name="description" /><meta charset="utf-8" />
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="" name="description" />
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <!-- App favicon -->
    <link rel="shortcut icon" href="assets/images/logos/deep.ico">

    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <style>
        .register{
            background: -webkit-linear-gradient(left, #273c92, #6776b2);
            margin-top: 3%;
            padding: 3%;
            border-radius:2%;
        }
        .register-left{
            text-align: center;
            color: #fff;
            margin-top: 4%;
        }
        .register-left img{
            background-color :white;
            border-radius:10%;

        }
        .register-left input{
            border: none;
            border-radius: 1.5rem;
            padding: 2%;
            width: 60%;
            background: #f8f9fa;
            font-weight: bold;
            color: #383d41;
            margin-top: 30%;
            margin-bottom: 3%;
            cursor: pointer;
        }
        .register-right{
            background: #f8f9fa;
            border-top-left-radius: 10% 50%;
            border-bottom-left-radius: 10% 50%;
        }
        .register .register-form{
            padding: 10%;
            margin-top: 10%;
        }
        .btnRegister{
            float: right;
            margin-top: 10%;
            border: none;
            border-radius: 1.5rem;
            padding: 2%;
            background: #0062cc;
            color: #fff;
            font-weight: 600;
            width: 50%;
            cursor: pointer;
        }
        .register-heading{
            text-align: center;
            margin-top: 8%;
            margin-bottom: -15%;
            color: #495057;
        }
    </style>
    <!------ Include the above in your HEAD tag ---------->
</head>    
<body>
            <div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="assets/images/logos/deep_vertical_blue_logo.png" alt="" height="120"/>
                        <h3 class = "mt-4">WELCOME TO DEEPECHO</h3>
                        <a href="<c:url value="/login.do"/>"><input type="submit" name="" value="Login"/></a><br/>
                        <p style="font-size : 10px;">if you already have an account</p>
                    </div>
                    <div class="col-md-9 register-right">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Sign-up</h3>
                                <form class="form-horizontal" action=" " method="post">
                                    <div class="row register-form">
                                        <div class="col-md-10">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="First Name " name = "first_name" required/>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Last Name " name="last_name" required/>
                                            </div>
                                            <div class="form-group">
                                                <input type="email" class="form-control" placeholder="Your Email " name="email" required/>
                                            </div>
                                            <div class="form-group">
                                                <input type="password" class="form-control" placeholder="Password " name="password" required/>
                                            </div>
                                            <input type="submit" class="btnRegister" value="Register"/>
                                        </div>
                                    </div>
                                </form>    
                            </div>
                        </div>
                    </div>
                </div>

            </div>
    </body>
</html>  