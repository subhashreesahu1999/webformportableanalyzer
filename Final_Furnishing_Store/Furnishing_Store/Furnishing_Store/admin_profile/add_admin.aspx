<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_admin.aspx.cs" Inherits="Furnishing_Store.admin_profile.add_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <title>Manage admin</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="../Frontend/css/admin.css"/>
    <link rel="stylesheet" href="../Frontend/font-awesome-4.7.0/css/font-awesome.min.css">

    <!--bootstrap 4-->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .icon{
           font-size:30px;
        }
    </style>
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

                          
                        <asp:Button runat="server" CssClass="btn btn-outline-success" ID="logout" Text="Logout" OnClick="Unnamed2_Click" />
                        
                    
                    </div>
                  </nav>
                  
          <!-- sidebar-wrapper  -->
          <main class="page-content">
            <div class="container-fluid">
              <span style="justify-content:left; color:green; font-size:20px;">Total Users Available : <asp:Label ID="ttlusr" runat="server" Text=""></asp:Label></span>
              <hr>
    <!--Body-->
    <div class="container">
        <h6 class="text-center">Please fill up to add admin</h6>
        
       
            <div class="card p-5">
           
               <p style="color:green; font-weight:700;" runat="server" id="correct" Visible = "false">Account registered successfull. Thank You!</p>
               <div class="form-group">
                <label for="name">Name
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="*" ForeColor="Red" Width="16px" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>

                </label>&nbsp;
                   <input runat="server" type="text" class="form-control" id="name">
              </div>
                <div class="form-group">
                <label for="email">Email address
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="*" ForeColor="Red" Width="16px" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>

                </label>&nbsp;
                    <input type="email" runat="server" class="form-control" id="Email" aria-describedby="emailHelp">
                <small id="emails" class="form-text text-muted">We'll never share your email with anyone else.</small>
              </div>                    
                <div class="form-group">
                <label for="phone">Phones<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="phone" ErrorMessage="*" ForeColor="Red" Width="16px" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>

                </label>&nbsp;
                    <input runat="server" type="text" class="form-control" id="phone">
              </div> 
                <div class="form-group">
                <label for="address">Address
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="address" ErrorMessage="*" ForeColor="Red" Width="16px" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
                </label>&nbsp;
                    
                    <input runat="server" type="text" class="form-control" id="address">
              </div>
            <div class="form-group">
            <label for="exampleInputPassword">Password
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="pass1" ErrorMessage="*" ForeColor="Red" Width="16px" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
            </label>&nbsp;
                <input runat="server" type="password" class="form-control" id="pass1">
          </div>
                
            <div class="form-group">
            <label for="exampleInputConPassword">Confirm Password
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="pass2" ErrorMessage="*" ForeColor="Red" Width="16px" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
            </label>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="pass2" ErrorMessage="Password does not match !" ForeColor="Red" ValueToCompare="pass1" ControlToCompare="pass1"></asp:CompareValidator>
&nbsp;<input type="password" runat="server" class="form-control" id="pass2">
          </div>
                <div class="form-group">
                    <label for="role">User role :</label>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="admin">Admin</asp:ListItem>
                        <asp:ListItem Value="user">User</asp:ListItem>
                    </asp:DropDownList>
                </div>
            <asp:Button class="btn btn-primary" runat="server" ID="submit" Text="Submit" OnClick="Unnamed1_Click"/>
               
                <asp:Label ID="Message" runat="server"></asp:Label>
          
               
            </div>
 

        </div>
    <br />

    <!--End of body-->

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


