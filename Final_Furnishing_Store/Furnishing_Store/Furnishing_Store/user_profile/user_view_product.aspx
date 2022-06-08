<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_view_product.aspx.cs" Inherits="Furnishing_Store.user_profile.user_view_product" %>

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
    <title>Item_View-Woodland Furnishing</title>
    <style>
        .details{
            font-weight:700;

        }
        .icon{
           font-size:30px;
        }
        .container-card-button {
            flex: 1;
            display: flex;
            align-items: center;
            background: #0090e3;
            color: #fff;
            }

            .container-card-button .icon-card {
            font-size: 22px;
            padding: 5px 8px;
            }

            .product-thumb .caption {
                padding: 0 20px;
                height: 51px;
            }

            .btn-default {
            flex: 1;
            transition: 0.4s;
            color: #fff;
            background-color: #303030;
            text-transform: uppercase;
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
                            <a class="nav-link" href="user_product.aspx"><span class="nav-word" style="color:red"> <u>Products-Item</u></span></a>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link" href="addtocart.aspx"><span class="nav-word">Invoice</span></a>
                        </li>
                        
                        <!--<li class="nav-item">
                            <a class="nav-link disabled" href="#">Disabled</a>
                        </li>-->

                        </ul>
                       
                   
                            <asp:Button runat="server" class="btn btn-outline-success my-2 my-sm-0" Text="Logout" OnClick="Unnamed1_Click2" />
                        
                        
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
            
            <asp:Repeater ID="Repeater1" runat="server"  >
                <ItemTemplate>
                    <div class="container ">
                    <br><br><br>
                        <div class="row">
                            <div class="col-sm-6">
                            <br>
                            <h3><%# Eval("name") %></h3>
                            <br>
                                    <img class="img-fluid" src="../Product_image/<%#Eval("imagename") %>">

                            </div>
                            <div class="col-sm-6">
                            <br><br><br><br>
                                <!--<p class="ml-5 details" >IN STOCK</p>-->
                                <p class="ml-5 details">ID: <asp:Label ID="id" runat="server" Text='<%#Eval("product_id") %>'></asp:Label>
                                    
                                <p class="ml-5 details">Price: Rs  
                                    
                                   
                                    <asp:Label ID="price" runat="server" Text='<%#Eval("price") %>'></asp:Label></p>
                                <p class="ml-5 "><small  class="details text-muted">Price is inclusive of VAT</small></p>
                              
                                   <div class="text-center">
                                   
                                       Quantity: <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                                <asp:ListItem>4</asp:ListItem>
                                                <asp:ListItem>5</asp:ListItem>
                                                <asp:ListItem>6</asp:ListItem>
                                            </asp:DropDownList>
                                       <br><br />
                                    <div class="text-center container-card-button">
                                     
                                        <asp:Button 
                                            id="add2cart"
                                            class="btn btn-default"
                                            runat="server"
                                            Text="Add to Cart"
                                            OnClick="Addtocart"
                                           CausesValidation="False" />
                                            
                                        <i class="fa fa-shopping-cart icon-card"></i>
                                        </div>
                            </div>
                            </div>
                        </div>
                       
                        <!--More information-->
                       
                        <div class="row">
                        <div class="col-sm-3">
                            <p style="font-weight:500;">
                             <h4>More Information</h4>
                                Name:<br>
                                Color:<br>
                                Price:<br>
                                Type:<br>
                            </p>
                            <p style="font-weight:500;">
                             <h4>Features</h4>
                                Material:<br>
                                Description:<br>
                               
                            </p>
                        </div>
                        <div class="col-sm-3">
                        <br><br>
                        <p style="font-weight:500;">
                             
                               <asp:Label ID="name" runat="server" Text='<%# Eval("name") %>'></asp:Label> 
                            <br>
                               <%# Eval("color") %><br>
                                <%# Eval("price") %><br>
                                <%# Eval("type") %><br>
                            </p>
                            <br><br>
                            <p style="font-weight:500;">
 
                                <%# Eval("material") %><br>
                                <%# Eval("description") %><br>
                            </p>
                        </div>
                        </div>
                    
                                    
                        </div>
                </ItemTemplate>
            </asp:Repeater>
         <!--Body-->

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
