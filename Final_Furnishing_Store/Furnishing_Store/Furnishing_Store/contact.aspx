<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Furnishing_Store.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <link rel="stylesheet" href="Frontend/css/styles.css"/>
    <link rel="stylesheet" href="Frontend/css/contact.css"/>

    <link rel="stylesheet" href="Frontend/font-awesome-4.7.0/css/font-awesome.min.css">
    <title>Contact-Woodland Furnishing</title>
    <style>
        .icon{
           font-size:30px;
        }
    </style>
</head>
<body>
         <!--navbar-->
                <nav class="navbar navbar-expand-md navbar-light fixed-top bg-light nav-a">
                    <a class="navbar-brand" href="#">Woodland Furnishing</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarCollapse">
                        <ul class="navbar-nav m-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="index.aspx" ><span class="nav-word">Home <span class="sr-only">(current)</span></span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="product.aspx"><span class="nav-word">Products</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="service.aspx"><span class="nav-word">Services</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.aspx"><span class="nav-word" style="color:red;"><u>Contact Us</u></span></a>
                        </li>
                        <!--<li class="nav-item">
                            <a class="nav-link disabled" href="#">Disabled</a>
                        </li>-->

                        </ul>
                       
                        <a class="nav-item m-1" href="login.aspx">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
                        </a>
                        
                    </div>
                    </nav>
                <!--navbar close-->
                
          
                

                <!--Body-->
                

              
                    <!--Contact-->
                   <br /><br /><br /><br /><br />
                            <div class="container contacts contact">
                                <h3 class="text-center" style="color:green; font-weight:700;" runat="server" id="correct" Visible = "false"><br /> Thank You for your message. We will contact you soon !!<br />
                                    <a href="contact.aspx">Click here to refresh.</a>
                                </h3>
    <div class="d-flex justify-content-center pt-5">
        <h2 class="font-weight-bold">Get in touch!</h2>
           
    </div>
    <div class="d-flex justify-content-center text-muted">Contact us for a quote, help to join the team.</div>
    <div class="d-md-flex flex-md-row justify-content-center">
        <div class="d-md-flex flex-md-column px-4">
            <div class="d-md-flex justify-content-center icon py-2"> <span class="fa fa-map-marker"></span> <span class="mobile-info text-dark p-2 pb-3">102 street 2714 Don</span> </div>
            <div class="contact-info">Maitidevi, Kathmandu, Nepal</div>
        </div>
        <div class="d-flex flex-column px-4">
            <div class="d-md-flex justify-content-center icon py-2"> <span class="fa fa-phone"></span> <span class="mobile-info text-dark p-2 pb-3">+02 1234 567</span> </div>
            <div class="contact-info">+977 - 9849497787</div>
        </div>
        <div class="d-flex flex-column  px-4">
            <div class="d-md-flex justify-content-center icon py-2"> <span class="fa fa-envelope"></span> <span class="mobile-info text-dark p-2 pb-3">hello@flowbase.com</span> </div>
            <div class="contact-info">woodlandfurnishing@info.com</div>
        </div>
                  
    </div>
    <div class="d-flex flex-row justify-content-center">
        <form class="w-xl-50 w-lg-75" id="contact" runat="server">
            <div class="container">
                <div class="row">
                   <div class="col-md-6">

                        <div class="form-group"> <label for="name">Your Name
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="name" ErrorMessage="*" ForeColor="Red" Width="16px" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
&nbsp;</label>
                            <div class="input-field"> <span class="fa fa-user-o p-2 border-right"></span> <input runat="server" id="name" type="text" required> </div>
                        </div>


                        <div class="form-group"> <label for="name">Mail <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" ErrorMessage="*" ForeColor="Red" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
                            </label>
                            &nbsp;<div class="input-field"> <span class="fa fa-envelope-o p-2"></span> <input runat="server" id="email" type="email" required> </div>
                        </div>
                        <div class="form-group"> <label for="name">Phone <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="phone" ErrorMessage="*" ForeColor="Red" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
                            </label>
                            &nbsp;<div class="input-field"> <span class="fa fa-mobile p-2"></span> <input runat="server" id="phone" type="text" required> </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group"> <label for="msg">Message <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="msg" ErrorMessage="*" ForeColor="Red" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
                            </label>
                            &nbsp;<div class="input-field bg-light"> <textarea name="message" runat="server" id="msg" cols="10" rows="9" class="form-control bg-light" placeholder="Your Message"></textarea> </div>
                        </div>
                    </div>
                    <div class="d-flex flex-row justify-content-center w-100"> 
                 
                         <asp:Button runat="server"  class="btn-contact" Text="Send message" OnClick="Unnamed1_Click" />
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>  

                   
                    <!--End contactform-->

                    
                

               
                       



                    

                    


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

