<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_product.aspx.cs" Inherits="Furnishing_Store.admin_profile.add_product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <title>Admin</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="../Frontend/css/admin.css"/>
    <link rel="stylesheet" href="../Frontend/font-awesome-4.7.0/css/font-awesome.min.css">

    <!--bootstrap 4-->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
        <style>
        .b{
            font-weight:700;
            font-size:20px;
        }
        </style>
</head>
<body>
    <form runat="server" id="add_product">
     <div class="page-wrapper chiller-theme toggled">
                    <a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
                      <i class="fas fa-bars"></i>
                    </a>
                    <nav id="sidebar" class="sidebar-wrapper">
                      <div class="sidebar-content">
                        <div class="sidebar-brand">
                          <a href="admin_profile.aspx">Welcome Admin!</a>
                          <div id="close-sidebar">
                            <i class="fas fa-times"></i>
                          </div>
                        </div>
                        <div class="sidebar-header">
                          <div class="user-pic">
                            <a href="admin_profile.aspx"><img class="img-responsive img-rounded" src="../Frontend/images/admin.jpg"
                              alt="User picture"> </a>
                          </div>
                          
                          <div class="user-info">
                            <span class="user-name">
                              <strong>
                                  <asp:Label ID="username" runat="server" Text=""></asp:Label></strong>
                            </span>
                            <span class="user-role">Administrator</span>
                            <span class="user-status">
                              <i class="fa fa-circle"></i>
                              <span>Online</span>
                            </span>
                          </div>
                        </div>
                        <!-- sidebar-header  -->
                        
                        <div class="sidebar-menu">
                          <ul>
                            <li class="header-menu">
                              <span>General</span>
                            </li>
                            <li class="sidebar-dropdown">
                              <a href="#">
                                <i class="fa fa-tachometer-alt"></i>
                                <span style="color:white">Dashboard</span>
                                <!--
                                  side bagadegs
                                <span class="badge badge-pill badge-warning">New</span>
                                <span class="badge badge-pill badge-success">Pro</span>
                                <span class="badge badge-pill badge-danger">3</span>-->
                              </a>
                              <div class="sidebar-submenu">
                                <ul>
                                  <li>
                                    <a   href="view_user.aspx"  >View Users
                                      
                                    </a>
                                  </li>
                                  <li>
                                    <a href="view_product.aspx" ">View Products</a>
                                  </li>
                                  <li>
                                    <a href="view_order.aspx">View Total Sells</a>
                                  </li>
                                    <li>
                                    <a href="view_contact.aspx">View Contact Messages</a>
                                  </li>
                                  
                                </ul>
                              </div>
                            </li>
                            <li class="sidebar-dropdown">
                              <a href="#">
                                <i class="fa fa-shopping-cart"></i>
                                <span>E-commerce</span>
                                
                              </a>
                              <div class="sidebar-submenu">
                                <ul>
                                  <li>
                                    <a href="add_product.aspx">Add Products</a>
                                  </li>
                                  <li>
                                    <a href="add_admin.aspx">Add Admin</a>
                                  </li>
                                  
                                  
                                  
                                </ul>
                              </div>
                            </li>
                           
    
                          </ul>
                        </div>
                        <!-- sidebar-menu  -->
                      </div>
                      <!-- sidebar-content  -->
                    <div class="sidebar-footer " style="align-content:center">
                      <!--<a href="#">
                        <i class="fa fa-bell"></i>
                        <span class="badge badge-pill badge-warning notification">3</span>
                      </a>
                      <a href="#">
                        <i class="fa fa-envelope"></i>
                        <span class="badge badge-pill badge-success notification">7</span>
                      </a>-->

                       
                        <asp:Button runat="server" CssClass="btn btn-outline-success" Text="Logout" OnClick="Unnamed1_Click1" />
                    
                    </div>
                  </nav>
                  
          <!-- sidebar-wrapper  -->
          <main class="page-content">
            <div class="container-fluid">
              <span style="justify-content:left; color:green; font-size:20px;">Total Products Available : <asp:Label ID="ttlpdt" runat="server" Text=""></asp:Label></span>
              <hr>
                <!--<div class="text-center" >
                    <div class="row " style="justify-content:center">
                    <div class="col-md-3 col-12 ">
            <div class="card">
                <div class="card-body"> <img class="img rck" src="https://i.imgur.com/rG3CGn3.png" />
                    <div class="card-title"> Add Sofa Items </div>
                    
                </div>
            </div>
        </div>
        <div class=" col-md-3 col-12 ">
            <div class="card">
                <div class="card-body"> <img class="img rck" src="https://i.imgur.com/rG3CGn3.png" />
                    <div class="card-title"> Add Bed Items </div>
                    
                </div>
            </div>
        </div>
        
        <div class="col-md-3 col-12 ">
            <div class="card">
                <div class="card-body"> <img class="img rck" src="https://i.imgur.com/rG3CGn3.png" />
                    <div class="card-title"> Add Chair Items </div>
                    
                </div>
            </div>
        </div>
                    </div>
                    </div>-->



                     <div class="card" style="margin: 10px; padding:25px;">
                                    
                                <div class="card-title text-center">
                                <h1>Add products</h1>
                                    <p runat="server"  id="correct" style="color:green"> 
                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                    </p>
                                </div>
                                        <div class="form-group">
                                            <label class="b">Name of product:
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="*" ForeColor="Red" Width="16px" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
                                            </label>
                                             <input type="text" runat="server" class="form-control" placeholder="Name of product" id="name"  >

                                        </div>
                                        <div class="form-group">
                                            <label  class="b">Price :
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="price" ErrorMessage="*" ForeColor="Red" Width="16px" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
                                            </label>
                                            <textarea runat="server" class="form-control" id="price" rows="1" name="price"></textarea>
                                        </div>

                                        <div class="form-group">
                                            <label class="b">Select Color:
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="color" ErrorMessage="*" ForeColor="Red" Width="16px" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
                                            </label>
                                            <input runat="server" type="color" id="color"/>
                                        </div>

                                         <div class="form-group">
                                            <label class="b">Category:
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="type" ErrorMessage="*" ForeColor="Red" Width="16px" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
                                            </label>
                                             <select id="type" runat="server" class="form-control"  >
                                            <option selected>Choose...</option>
                                            <option value="Bed">Bed</option>
                                            <option  value="Sofa">Sofa</option>
                                            <option  value="Chair">Chair</option>
                                            
                                            <option  value="Others">Others</option>
                                            </select>
                                
                                        </div>

                                        <div class="form-group">
                                            <label  class="b">Material :
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="material" ErrorMessage="*" ForeColor="Red" Width="16px" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
                                            </label>
                                            <textarea runat="server" class="form-control" id="material" rows="1" name="material"></textarea>
                                        </div>

                                        <div class="form-group">
                                            <label  class="b">Description :
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="description" ErrorMessage="*" ForeColor="Red" Width="16px" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
                                            </label>
                                            <textarea runat="server" class="form-control" id="description" rows="4" name="description"></textarea>
                                        </div>

                                        

                                       

                                        
                                        <div class="form-group">
                                           
                                            <label class="b">Please upload photo of product :
                                                
                                            </label>
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                        </div>
                            

                            

                           <!-- <div class="form-group">
                                <label class="b">Entry Date:</label>
                            <input type="date" max="3000-12-31" 
                                    min="1000-01-01" class="form-control" name="entry_date">
                            </div>-->
                            
                                
                            
                            
                           
                            
                            <div class="text-center">
                            <asp:Button runat="server" Text="submit"  class="btn btn-primary mb-2" OnClick="Unnamed1_Click" />
                            
                            </div>
                            
                      
                            </div>
              
            
              <hr>

               
    </div>
  </main>
  <!-- page-content" -->
</div>
    </form>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- page-wrapper -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
   

    <!--Jquery-->
    <script>
            jQuery(function ($) {

                $(".sidebar-dropdown > a").click(function() {
            $(".sidebar-submenu").slideUp(200);
            if (
                $(this)
                .parent()
                .hasClass("active")
            ) {
                $(".sidebar-dropdown").removeClass("active");
                $(this)
                .parent()
                .removeClass("active");
            } else {
                $(".sidebar-dropdown").removeClass("active");
                $(this)
                .next(".sidebar-submenu")
                .slideDown(200);
                $(this)
                .parent()
                .addClass("active");
            }
            });

            $("#close-sidebar").click(function() {
            $(".page-wrapper").removeClass("toggled");
            });
            $("#show-sidebar").click(function() {
            $(".page-wrapper").addClass("toggled");
            });


            
            
            });
    </script>
    
</body>

</html>
