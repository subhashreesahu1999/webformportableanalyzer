<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_product.aspx.cs" Inherits="Furnishing_Store.user_profile.user_product1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <link rel="stylesheet" href="../Frontend/css/styles.css"/>
    <link rel="stylesheet" href="../Frontend/css/add.css"/>
    <link rel="stylesheet" href="../Frontend/font-awesome-4.7.0/css/font-awesome.min.css">
    <title>Product-Woodland Furnishing</title>
    <style>
    .card-top{
        height:230px;
        width: 250px;
    }
    .icon{
           font-size:30px;
        }
    </style>
</head>
<body>
         <form id="form1" runat="server">
                <!--navbar-->
                <nav class="navbar navbar-expand-md navbar-light fixed-top bg-light nav-a">
                    <a class="navbar-brand" href="#">Woodland Furnishing</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarCollapse">
                        <ul class="navbar-nav m-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="user_profile.aspx" ><span class="nav-word" >Profile <span class="sr-only">(current)</span></span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="user_product.aspx"><span class="nav-word"style="color:red" ><u> Products</u></span></a>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link" href="addtocart.aspx"><span class="nav-word">Invoice</span></a>
                        </li>
                        
                        <!--<li class="nav-item">
                            <a class="nav-link disabled" href="#">Disabled</a>
                        </li>-->

                        </ul>
                        
                        <asp:Button runat="server" class="btn btn-outline-success my-2 my-sm-0" Text="Logout" OnClick="Unnamed1_Click1" />
                        
                    </div>
                    </nav>
                <!--navbar close-->
                
            <!--Head-->
                   
                        <div class="row heads ">
                        
                            <div class="col">
                                <!-- Actual search box -->
                                    <div class="form-group has-search">
                                        <span class="fa fa-search form-control-feedback"></span>
                                        <input type="text" class="form-control" placeholder="Search">
                                    </div>
        
                            </div>
                           
                           
                        </div>
                    
                    
                    <!--head end-->

                <!--Body-->
                
                    <div class="container ">
                    <div class="row ">
                                  
                                            
                                  
                            <div class="col-sm-12">
                                <!--Gallery sample-->
                                            <section class="gallery-block cards-gallery">
                                                        <div class="container">
                                                            
                                                            <div class="row">
                                                          
                                                          <asp:Repeater ID="Repeater1" runat="server">
                                                               <ItemTemplate>
                                                                    <div class="col-md-6 col-lg-4">
                                                                    <div class=" border-0 transform-on-hover">
                                                                        <a class="lightbox" href='user_view_product.aspx?product_id=<%# Eval("product_id") %>' >
                                                                             <img src='../Product_image/<%# Eval("imagename") %>' class="card-top"/>
                                                                        </a>
                                                                     <div class="card-body">
                                                                         <h6>Name: <%# Eval("name") %></h6>
                                                                         <p class="text-muted card-text" >Price: <%# Eval("price") %></p>
                                                                     </div>
                                                                    </div>
                                                                    </div>
                                                                </ItemTemplate>    
                                                          </asp:Repeater>


                                                              

                                                                
                                                               
                                                            </div>
                                                            </div>
                                                            </section>
                                                        </div>
                                                    
                                  </div> 
                                            <!--End of gallery sample-->
                            </div>

                    </form>

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
    </form>
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
