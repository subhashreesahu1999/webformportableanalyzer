<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_profile.aspx.cs" Inherits="Furnishing_Store.admin_profile.admin_profile" %>

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
    
</head>
<body>
    <form id="grid" runat="server">
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
                        
                        <!-- sidebar-search  -->
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

                          <asp:Button runat="server" class="btn btn-outline-success" Text="Logout" OnClick="Unnamed1_Click1" />
                        
                    
                    </div>
                  </nav>
                  
          <!-- sidebar-wrapper  -->
          <main class="page-content">
            <div class="container-fluid">
              
             
            
              <!--View-->
           
                    <div class="container">
                       <h2 class="text-center"><b>Dashboard View</b></h2>
                        <hr />
                        <br />
                        <div class="row">
                            
                                    <div class="col-3">
                                        <div class="card text-center p-3">
                                             <h6 class="color: green"> Total available User: <asp:Label ID="ttlusr" runat="server" Text=""></asp:Label></h6>
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <div class="card text-center p-3">
                                             <h6 class="color: green"> Total available Product: <asp:Label ID="ttlpdt" runat="server" Text=""></asp:Label> </h6>
                                        </div>
                                    </div><br /><br /><br />
                                    <div class="col-3">
                                        <div class="card text-center p-3">
                                             <h6 class="color: green"> Total contact messages: <asp:Label ID="contactmsg" runat="server" Text=""></asp:Label> </h6>
                                        </div>
                                    </div>
                             <div class="col-3">
                                        <div class="card text-center p-3">
                                             <h6 class="color: green"> Total orders: <asp:Label ID="orderss" runat="server" Text=""></asp:Label> </h6>
                                        </div>
                                    </div>
                                    
                                </div>
                        <br />

                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                   <h2 class="text-center"><b>Welcome  <%#Eval("name") %> ! </b></h2>
                                 <hr>
                                    
                               
                                <br />
                                <h4 class="text-center">Your Profile Information</h4>
                                <br />
                                <hr>
                                        <div class="row text-center">
                                                    <div class="col-sm-6 ">
                                                    <b>Name</b><br>
                                                    <b>Email</b><br>
                                                    <b>Phone</b><br>
                                                    <b>Address</b><br>
                                                  
                                                    </div>
                                                    <div class="col-sm-6">
                                                         <%#Eval("name") %><br>
                                                        <%#Eval("email") %>
                                                        <br>
                                                    <%#Eval("phone") %><br>
                                                     <%#Eval("address") %><br>
                                                   
                                                     
                                                        <br />
                                                        <br />
                                                    </div>

                                        </div>
                                
                                
                                            </ItemTemplate>
                        </asp:Repeater>

                        
                        <hr>
                        
                
                        </div>
               
                 
                
                

                
                              
                		
                  

              <!--End view-->
            
              
    </div>
              </div>
  </main>
  <!-- page-content" -->


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
