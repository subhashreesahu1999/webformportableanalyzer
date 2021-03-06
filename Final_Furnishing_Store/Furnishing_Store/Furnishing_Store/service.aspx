<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="service.aspx.cs" Inherits="Furnishing_Store.service" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <link rel="stylesheet" href="Frontend/css/styles.css"/>
    <link rel="stylesheet" href="Frontend/css/service.css"/>

    <link rel="stylesheet" href="Frontend/font-awesome-4.7.0/css/font-awesome.min.css">
    <title>Service-Woodland Furnishing</title>
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
                            <a class="nav-link" href="service.aspx"><span class="nav-word" style="color:red"><u>Services</u></span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.aspx"><span class="nav-word">Contact Us</span></a>
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
                

              
                    <!--Our Services-->
                        <div class='container-fluid mx-auto mt-5 mb-5 col-12 service' style="text-align: center">
                            <br /><br /><br /><br /><br />
    <div class="hd">Why People Believe in Us</div>
    <p><small class="text-muted">Always render more and better service than <br />is expected of you, no matter what your ask may be.</small></p>
    <br />
                            <div class="row" style="justify-content: center">
        <div class="card col-md-3 col-12">
            <div class="card-content">
                <div class="card-body"> <img class="img" src="https://i.imgur.com/S7FJza5.png" />
                    <div class="shadow"></div>
                    <div class="card-title"> Cheap prices </div>
                    <div class="card-subtitle">
                        <p> <small class="text-muted">We spent thousands of hours creating on algorithm that does this for you in seconds. We collect a small fee from the professional after they meet your</small> </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="card col-md-3 col-12">
            <div class="card-content">
                <div class="card-body"> <img class="img" src="Frontend/images/repair.png" width="100px" height="100px" />
                    <div class="shadow"></div>
                    <div class="card-title"> Repair </div>
                    <div class="card-subtitle">
                        <p> <small class="text-muted"> Some relatively minor damage and bringing it back to a condition where there is no longer anhy significant diminishment of either utiity or beauty.</small> </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="card col-md-3 col-12">
            <div class="card-content">
                <div class="card-body"> <img class="img" src="Frontend/images/warranty.png" width="100px" height="100px"/>
                    <div class="shadow"></div>
                    <div class="card-title"> Warranty </div>
                    <div class="card-subtitle">
                        <p> <small class="text-muted">Warranty is applies only to the product that cost more than 50,000. </small> </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="card col-md-3 col-12">
            <div class="card-content">
                <div class="card-body"> <img class="img" src="Frontend/images/delivery.png" width="100px" height="100px"/>
                    <div class="shadow"></div>
                    <div class="card-title"> Home delivery </div>
                    <div class="card-subtitle">
                        <p> <small class="text-muted">Home delivery will be charge according to the customer destination.</small> </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="card col-md-3 col-12">
            <div class="card-content">
                <div class="card-body"> <img class="img" src="Frontend/images/exchange.png" width="100px" height="100px" />
                    <div class="shadow"></div>
                    <div class="card-title"> Exchange offers </div>
                    <div class="card-subtitle">
                        <p> <small class="text-muted">The Exchange Offer value that is applied on the used order is applied based on the used product details that were entered. </small> </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="card col-md-3 col-12">
            <div class="card-content">
                <div class="card-body"> <img class="img" src="Frontend/images/customer.png" width="100px" height="100px"/>
                    <div class="shadow"></div>
                    <div class="card-title"> Customer services </div>
                    <div class="card-subtitle">
                        <p> <small class="text-muted">We offer 24/7 hours of customer services. Process orders, prepare correspondences and fulfill customer needs to ensure customer satisfaction.</small> </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="card col-md-3 col-12 ml-2">
            <div class="card-content">
                <div class="card-body"> <img class="img" src="https://i.imgur.com/xUWJuHB.png" />
                    <div class="card-title"> Fixed delivery </div>
                    <div class="card-subtitle">
                        <p> <small class="text-muted"> We don't accept ads from anyone. We use actual data to match you who the best person for each job </small> </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="card col-md-3 col-12 ml-2">
            <div class="card-content">
                <div class="card-body"> <img class="img rck" src="https://i.imgur.com/rG3CGn3.png" />
                    <div class="card-title"> We Guide you </div>
                    <div class="card-subtitle">
                        <p> <small class="text-muted">Buying or selling a home is often the largest transaction anyone does in their life. we guide you through the process so that you can be confident in reaching your dream outcome.</small> </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
  
    
</div>

                    <!--End of services-->
                    <!--likes-->
                    <div class="container">
                    <h1 class="text-center">Your need our service :</h1>
                    <br>
                    <div class="row">
                        <div class="four col-md-3">
                            <div class="counter-box colored"> <i class="fa fa-thumbs-o-up"></i> <span class="counter">2930</span>
                                <p>Happy Customers</p>
                            </div>
                        </div>
                        <div class="four col-md-3">
                            <div class="counter-box"> <i class="fa fa-group"></i> <span class="counter">3000</span>
                                <p>Registered Members</p>
                            </div>
                        </div>
                        <div class="four col-md-3">
                            <div class="counter-box"> <i class="fa fa-shopping-cart"></i> <span class="counter">289</span>
                                <p>Available Products</p>
                            </div>
                        </div>
                        <div class="four col-md-3">
                            <div class="counter-box"> <i class="fa fa-user"></i> <span class="counter">4000</span>
                                <p>Saved Trees</p>
                            </div>
                        </div>
                    </div>
                </div>

                    <!--Endo fo likes-->

                    


                <!--End of body-->

                <br>
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
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <script>
                            $(document).ready(function() {

                            $('.counter').each(function () {
                            $(this).prop('Counter',0).animate({
                            Counter: $(this).text()
                            }, {
                            duration: 4000,
                            easing: 'swing',
                            step: function (now) {
                            $(this).text(Math.ceil(now));
                            }
                            });
                            });

                            });
            </script>
  </body>
</html>
