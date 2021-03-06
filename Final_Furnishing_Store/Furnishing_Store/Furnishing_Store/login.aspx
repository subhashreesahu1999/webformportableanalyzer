<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Furnishing_Store.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <link rel="stylesheet" href="Frontend/css/styles.css"/>
    <link rel="stylesheet" href="Frontend/css/login.css"/>
    <link rel="stylesheet" href="Frontend/font-awesome-4.7.0/css/font-awesome.min.css">
    <title>Login-Woodland Furnishing</title>
    <style>
        .icon{
           font-size:30px;
        }
    </style>
</head>
<body>
     <!--navbar-->
                <nav class="navbar navbar-expand-md navbar-light fixed-top bg-light nav-a">
                    <a class="navbar-brand" href="#"> Woodland Furnishing</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarCollapse">
                        <ul class="navbar-nav m-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="index.aspx" ><span class="nav-word">Home <span class="sr-only">(current)</span></span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="product.aspx"><span class="nav-word">Product</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="service.aspx"><span class="nav-word">Services</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.aspx"><span class="nav-word">Contact Us</span></a>
                        </li>
                        <!--<li class="nav-item">
                            <a class="nav-link disabled" href="#">Disabled</a>
                        </li>-->

                        </ul>
                        
                      
                        
                    </div>
                    </nav>
                <!--navbar close-->
             
         
                

                <!--Body-->
                

                 <div class="container-fluid px-1 px-md-4 px-lg-1 px-xl-4 py-4 mx-auto login">
                     <br /><br />
    <div class="card card0 border-0">
        <div class="row d-flex">
            <div class="col-lg-6">
                <div class="card1 pb-5">
                    <div class="row"> <img src="Frontend/images/logo_company.png" class="logo"> </div>
                    <div class="row px-3 justify-content-center mt-4 mb-5 border-line"> <img src="Frontend/images/login_img.png" class="image" height="200px" width="200px"> </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="card2 card border-0 px-4 py-5">
                    
                   <h5 class="text-center" style="color:red; font-weight:700;" runat="server" id="message2" Visible = "false"> Invaild username and password !</h5>
                    <h5 class="text-center" style="color:red; font-weight:700;" runat="server" id="message1" Visible = "false"> Please enter username and password !</h5>

                    <form id="form1" runat="server">
                    <div class="row px-3"> <label class="mb-1">
                            <h6 class="mb-0 text-sm">Email Address 
                                <label class="mb-1">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="*" Font-Size="Large" ForeColor="Red" Width="27px">*</asp:RequiredFieldValidator>
                        </label> 
                        
                        
                        </h6>
                        </label> 
                        
                        
                        <input class="mb-4" type="text" runat="server" name="email" placeholder="Enter a valid email address" id="username"> </div>
                    <div class="row px-3">
                         <label class="mb-1">
                            <h6 class="mb-0 text-sm">Password
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="*" Font-Size="Large" ForeColor="Red">*</asp:RequiredFieldValidator>
                         </h6>
                        </label> <input type="password"  runat="server" name="password" placeholder="Enter password" id="password"> </div>
                    <div class="row px-3 mb-4">
                        <div class="custom-control custom-checkbox custom-control-inline"> <input runat="server" id="chk1" type="checkbox" name="chk" class="custom-control-input"> <label for="chk1" class="custom-control-label text-sm">Remember me</label> </div> <a href="#" class="ml-auto mb-0 text-sm">Forgot Password?</a>
                    </div>
                    <div class="row mb-3 px-3"> <asp:Button runat="server"  class="btn btn-blue text-center" Text="Login" OnClick="Unnamed1_Click"/> </div>
                    <div class="row mb-4 px-3"> <small class="font-weight-bold">Don't have an account? <a class="text-danger" href="sign_up.aspx">Register</a></small> 
                    
              
                    
                            
                                        </div>
                    </form>
                    <!--end -->
                    
                    
                    </div>
                </div>
            </div>
        </div>
        
    </div>
</div>
                


                <!--End of body-->
                 <!--footer-->

    <div class="row footer">

        <div class="col-sm-3 foot">
            <h6>At a Glance</h6>
            <p>
                Active since 2000 March 17, Woodland Furniture was started by founders who really care about home decoration furnitures.
            </p>
        
        </div>
        <div class="col-sm-3 foot">
            <h6>Developers</h6>
            <span>Bibek Karki<br>Pramod Sapkota<br>Rakesh Shrestha<br></span>
        </div>
        <div class="col-sm-3 foot">
            <h6>Info</h6>
            <span>
                Shipping and Delivery<br>
                Returns and Exchnages<br>
                Terms, Conditions & Privacy
        </div>
        <div class="col-sm-3 foot">
            <h6> Contact</h6>
            
            <p> You can message us on our contact page. <b>Thank You!</b> </p> 

        </div>

    </div>
    <div class="bg-grey py-4">
        <div class="row px-3">
            <p class="ml-4 ml-sm-5 mb-2">Copyright &copy; 2021. All rights reserved.</p>
            <div class="social-contact ml-4 ml-sm-auto"><span class=" mr-4 ">Follow us on &nbsp;: </span> <span class="fa fa-facebook mr-4"></span> <span class="fa fa-google-plus mr-4 "></span> <span class="fa fa-linkedin mr-4 "></span> <span class="fa fa-twitter mr-4 mr-sm-5 "></span> </div>
        </div>
    </div>

    <!--end of footer-->


    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    <!-- Option 2: jQuery, Popper.js, and Bootstrap JS
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    -->
  </body>
</html>
