<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign_up.aspx.cs" Inherits="Furnishing_Store.sign_up" %>

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
    <title>SignUp-Woodland Furnishing</title>
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
                        
                        <a class="nav-item m-1">
                            <button class="btn btn-outline-success my-2 my-sm-0" ><span style="color:red"><u><a href="login.aspx">Login</a></u></span></button>
                        </a>
                        
                    </div>
                    </nav>
                <!--navbar close-->
                <!--Pramod-->
            <!--Head-->
                   
                        
                    
                    
                    <!--head end-->
    <br /><br ><br ><br >
    <!--Body-->
    <div class="container">
        <br ><br >
        <h6 class="text-center">Please fill up the form for instane create your account</h6>
        
        <form id="signup" runat="server">
            <div class="card p-5">
           
               <p style="color:green; font-weight:700;" runat="server" id="correct" Visible = "false">Account registered successfull.<a href="login.aspx">Click here</a> to login. Thank You!</p>
               <div class="form-group">
                <label for="name">Name
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="*" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                   </label>&nbsp;<input runat="server" type="text" class="form-control" id="name">
              </div>
                <div class="form-group">
                <label for="email">Email address
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email" ErrorMessage="*" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                    </label>&nbsp;<input type="email" runat="server" class="form-control" id="Email" aria-describedby="emailHelp">
                <small id="emailp" class="form-text text-muted">We'll never share your email with anyone else.</small>
              </div>                    
                <div class="form-group">
                <label for="phone">Phones
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="phone" ErrorMessage="*" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                    </label>&nbsp;<input runat="server" type="text" class="form-control" id="phone">
              </div> 
                <div class="form-group">
                <label for="address">Address
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="address" ErrorMessage="*" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                    </label>&nbsp;<input runat="server" type="text" class="form-control" id="address">
              </div>
            <div class="form-group">
            <label for="exampleInputPassword">Password
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="pass1" ErrorMessage="*" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                </label>&nbsp;<input runat="server" type="password" class="form-control" id="pass1">
          </div>
            <div class="form-group">
            <label for="exampleInputConPassword">Confirm Password
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="pass2" ErrorMessage="*" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;</label><asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="pass2" ErrorMessage="Password does not match !" ForeColor="Red" ValueToCompare="pass1" ControlToCompare="pass1"></asp:CompareValidator>
            &nbsp;<input type="password" runat="server" class="form-control" id="pass2">
          </div>
            <asp:Button class="btn btn-primary" runat="server" Text="Submit" OnClick="Unnamed1_Click"/>
                <small class="font-weight-bold">Already have an account? <a class="text-danger" href="login.aspx">Login.</a></small>&nbsp;
                <asp:Label ID="Message" runat="server"></asp:Label>
          
               
            </div>
        </form>

        </div>
    <br />

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

