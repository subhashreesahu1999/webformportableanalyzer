<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addtocart.aspx.cs" Inherits="Furnishing_Store.user_profile.addtocart" %>

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
    <title>Add to cart-Woodland Furnishing</title>
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
                            <a class="nav-link" href="user_product.aspx"><span class="nav-word" > Products</span></a>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link" href="addtocart.aspx"><span class="nav-word" style="color:red"><u>Invoice</u></span></a>
                        </li>
                        
                        <!--<li class="nav-item">
                            <a class="nav-link disabled" href="#">Disabled</a>
                        </li>-->

                        </ul>
                        
                   
                            <asp:Button runat="server" class="btn btn-outline-success my-2 my-sm-0" Text="Logout" OnClick="Unnamed1_Click1" />
                        
                        
                    </div>
                    </nav>
                <!--navbar close-->
                
         

                <!--Body-->
                
                    <div class="container ">
                        <br /><br /><br /><br /><br /><br />
                        <h1 class="text-center">Your cart</h1>
                        <br />
                        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                            <ItemTemplate>
                                <div class="container">
                            <div class="row">
                        <div class="col-sm-12">
                        <div class="card">
        
                                 <div class="card-header">
                                            Invoice
                                <strong><%# Eval("time") %></strong> 
                                  <span class="float-right"><strong>Status:</strong> <%# Eval("status") %></span>
            
                                </div>
            
                            <div class="row">
               
    
            
                          <div class="col-sm-6">
                            <div class="card border-0">
                                <div class="card-body ">
                
                                            <div class="text-center"><img src='../Product_image/<%# Eval("imagename") %>' height="200px" width="200px" /></div>
                                            <div ><strong>Name:</strong> <%# Eval("product_name") %></div>
                                            <div><strong>S.N:</strong> <%# Eval("sn") %></div>
                                            <div><strong>Product ID:</strong>  <%# Eval("product_id") %></div>
                
                                            <div><strong>Price:</strong>  <%# Eval("price") %></div>
                                            <div><strong>Quantity:</strong>  <%# Eval("quantity") %></div>
                                            <div><strong>Total Price:</strong>  <%# Eval("totalprice") %></div><br />
                                           <div class="text-center"><asp:LinkButton ID="LinkButton1"  CommandName="Delete" OnClientClick="javascript:if(!confirm('Delete this information? This will delete permanently'))return false;" CommandArgument='<%# Eval("sn") %>' runat="server" style="background-color:darkred; padding:8px; " ForeColor="White" Font-Bold="True" BorderColor="Black"  >Delete</asp:LinkButton></div>
                                            </div>
                                            </div>
          
                                  </div>

      
                                          <div class="col-sm-6">
                                            <div class="card border-0">
                                                <div class="card-body" style="font-size:12px;">
                                                    <div class="card-header">
                                                        <strong>Payment Method:</strong>
                                                    </div>
                                                    <div class="table-responsive-sm">
                                                      <table class="table table-striped">
                                                      <thead>
                                                      <tr>
                                                      <th><a href="https://esewa.com.np/#/home"><img src="https://ictframe.com/wp-content/uploads/eSewa-logo.png" alt="esewa" style="width: 90%; height: 70px;"></a></th>
                                                      <th><a href="https://khalti.com/"><img src="https://upload.wikimedia.org/wikipedia/commons/e/ee/Khalti_Digital_Wallet_Logo.png.jpg" alt="khalti" style="width: 90%; height: 70px;"></a></th>
                                                      </tr>
                                                      </thead>
                                                      </table>
                                                    </div>

                                                      <div>
                                                        <b>esewa id:</b> <span>woodlandfurnishing@woodland.host(Name on account: Woodland Company)</span>
                                                    </div>
                                                    <div>
                                                        <b>Khalti id:</b> <span>9849497787 (Name on account: Rakesh Shrestha)</span>
                                                    </div>
                
                                                    <hr>
                                                    <div class="text-center"><strong>Total Due: NPR <%# Eval("totalprice") %></strong></div>
                
               
                
                                                </div>
                                            </div>
                                          </div>
                                          </div>
                                          </div>
                                          </div>
                                          </div>
      
   
      
                                          </div>
                                          </div>

                              <br />  
                            </ItemTemplate>
                        </asp:Repeater>     
                      </div>
             
                <!--End of body-->
                    </form>

              


                 
           

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
