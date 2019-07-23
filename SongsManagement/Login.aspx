<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SongsManagement.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Song Revenue Managment</title>

    <!-- Global stylesheets -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css"/>
    <link href="global_assets/css/icons/icomoon/styles.min.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/bootstrap_limitless.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/layout.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/components.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/colors.min.css" rel="stylesheet" type="text/css" />
  
    <!-- /global stylesheets -->

    <!-- Core JS files -->
    <script src="global_assets/js/main/jquery.min.js"></script>
    <script src="global_assets/js/main/bootstrap.bundle.min.js"></script>
    <script src="global_assets/js/plugins/loaders/blockui.min.js"></script>
    <script src="global_assets/js/plugins/ui/ripple.min.js"></script>
    <!-- /core JS files -->
   
    <!-- Theme JS files -->
    <script src="global_assets/js/plugins/forms/styling/uniform.min.js"></script>

    <script src="assets/js/app.js"></script>
    <script src="global_assets/js/demo_pages/login.js"></script>
</head>
<body>
     <form id="form1" runat="server">
        <!-- Main navbar -->
        <div class="navbar navbar-expand-md navbar-dark bg-indigo navbar-static">
            <div class="navbar-brand">
                <a href="index.html" class="d-inline-block">
                    <img src="global_assets/images/logo_light.png" alt="" />
                </a>
            </div>

            <div class="d-md-none">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-mobile">
                    <i class="icon-tree5"></i>
                </button>
            </div>

            <div class="collapse navbar-collapse" id="navbar-mobile">
                <ul class="navbar-nav"></ul>

                <span class="navbar-text ml-md-3">
                    <span class="badge badge-mark border-orange-300 mr-2"></span>
                    Morning, Abhishek!
			</span>

               
            </div>
        </div>
        <!-- /main navbar -->


        <!-- Page content -->
        <div class="page-content">

            <!-- Main content -->
            <div class="content-wrapper">

                <!-- Content area -->
                <div class="content d-flex justify-content-center align-items-center">

                    <!-- Login form -->
                    <form class="login-form" action="index.html" >
                        <div class="card mb-0">
                            <div class="card-body">
                                <div class="text-center mb-3">
                                    <i class="icon-reading icon-2x text-slate-300 border-slate-300 border-3 rounded-round p-3 mb-3 mt-1"></i>
                                    <h5 class="mb-0">Login to your account</h5>
                                    <span class="d-block text-muted">Your credentials</span>
                                </div>

                                <div class="form-group form-group-feedback form-group-feedback-left">
                                   <%-- <input type="text" class="form-control" placeholder="Username">--%>
                                    <asp:TextBox ID="txtUsername" class="form-control" runat="server"></asp:TextBox>
                                    <div class="form-control-feedback">
                                        <i class="icon-user text-muted"></i>
                                    </div>
                                </div>

                                <div class="form-group form-group-feedback form-group-feedback-left">
                                   <%-- <input type="password" class="form-control" placeholder="Password">--%>
                                    <asp:TextBox ID="txtPassword" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                    <div class="form-control-feedback">
                                        <i class="icon-lock2 text-muted"></i>
                                    </div>
                                </div>

                                <div class="form-group d-flex align-items-center">
                                    <div class="form-check mb-0">
                                        <label class="form-check-label">
                                            <input type="checkbox" name="remember" class="form-input-styled" checked data-fouc />
                                            Remember
								
                                        </label>
                                    </div>

                                    <a href="login_password_recover.html" class="ml-auto">Forgot password?</a>
                                </div>

                                <div class="form-group">
                                   <%-- <button type="submit" class="btn btn-primary btn-block">Sign in <i class="icon-circle-right2 ml-2"></i></button>--%>

                                     <asp:Button ID="btnLogin" runat="server" Text="Login" class="btn btn-primary btn-block" OnClick="btnLogin_Click" />
                                </div>

                                <div class="form-group text-center text-muted content-divider">
                                   
                                </div>

                                <div class="form-group text-center">
                                    
                                </div>

                                <div class="form-group text-center text-muted content-divider">
                                    
                                </div>

                                <div class="form-group">
                                  
                                </div>

                                
                            </div>
                        </div>
                    </form>
                    <!-- /login form -->

                </div>
                <!-- /content area -->


                <!-- Footer -->
                <div class="navbar navbar-expand-lg navbar-light">
                    <div class="text-center d-lg-none w-100">
                        <button type="button" class="navbar-toggler dropdown-toggle" data-toggle="collapse" data-target="#navbar-footer">
                            <i class="icon-unfold mr-2"></i>
                            Footer
				
                        </button>
                    </div>

                    <div class="navbar-collapse collapse" id="navbar-footer">
                        <span class="navbar-text">&copy; 2015 - 2018. <a href="#">Song Revenu Managment</a> by <a href="http://themeforest.net/user/Kopyov" target="_blank">Ask Online Solution</a>
                        </span>

                        <ul class="navbar-nav ml-lg-auto">
                            <li class="nav-item"><a href="https://kopyov.ticksy.com/" class="navbar-nav-link" target="_blank"><i class="icon-lifebuoy mr-2"></i>Support</a></li>
                            <li class="nav-item"><a href="http://demo.interface.club/limitless/docs/" class="navbar-nav-link" target="_blank"><i class="icon-file-text2 mr-2"></i>Contact</a></li>
                        </ul>
                    </div>
                </div>
                <!-- /footer -->

            </div>
            <!-- /main content -->

        </div>
        <!-- /page content -->
    </form>
</body>
</html>
