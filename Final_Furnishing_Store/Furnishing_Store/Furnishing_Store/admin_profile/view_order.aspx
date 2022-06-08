<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_order.aspx.cs" Inherits="Furnishing_Store.admin_profile.view_order" %>

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
    <form  runat="server">
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

                          <asp:Button runat="server" class="btn btn-outline-success" Text="Logout" OnClick="Unnamed1_Click1" />
                        
                    
                    </div>
                  </nav>
                  
          <!-- sidebar-wrapper  -->
          <main class="page-content">
            <div class="container-fluid">
              <h2 class="text-center">Welcome Mr. Admin !</h2>
              <hr>
            
              <!--View-->
           
                    <div class="container">
                        <div class="card " runat="server" id="orders" Visible="true">
                          <div class="card-body ">
                            <h5 class="card-title text-center">Total order : <asp:Label ID="odr" runat="server" Text=""></asp:Label></div>
                            <div class="text-center p-5">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="sn" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="SN" InsertVisible="False" SortExpression="sn">
                                            <EditItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("sn") %>'></asp:Label>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("sn") %>'></asp:Label>
                                            </ItemTemplate>
                                            <FooterStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Username" SortExpression="username">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("username") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("username") %>'></asp:Label>
                                            </ItemTemplate>
                                            <FooterStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Product Name" SortExpression="product_name">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("product_name") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("product_name") %>'></asp:Label>
                                            </ItemTemplate>
                                            <FooterStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Product ID" SortExpression="product_id">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("product_id") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("product_id") %>'></asp:Label>
                                            </ItemTemplate>
                                            <FooterStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Price" SortExpression="price">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                                            </ItemTemplate>
                                            <FooterStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Quantity" SortExpression="quantity">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("quantity") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("quantity") %>'></asp:Label>
                                            </ItemTemplate>
                                            <FooterStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Total Price" SortExpression="totalprice">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("totalprice") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("totalprice") %>'></asp:Label>
                                            </ItemTemplate>
                                            <FooterStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Time" SortExpression="time">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("time") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("time") %>'></asp:Label>
                                            </ItemTemplate>
                                            <FooterStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Status" SortExpression="status">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("status") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                                            </ItemTemplate>
                                            <FooterStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Action">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                                            </ItemTemplate>
                                            <FooterStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                    </Columns>
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>

                                <asp:Label ID="Label10" runat="server" Text=""></asp:Label>


                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Furnishing_StoreConnectionString %>" DeleteCommand="DELETE FROM [addtocart] WHERE [sn] = @sn" InsertCommand="INSERT INTO [addtocart] ([username], [product_name], [product_id], [price], [quantity], [totalprice], [time], [status]) VALUES (@username, @product_name, @product_id, @price, @quantity, @totalprice, @time, @status)" SelectCommand="SELECT [sn], [username], [product_name], [product_id], [price], [quantity], [totalprice], [time], [status] FROM [addtocart]" UpdateCommand="UPDATE [addtocart] SET [username] = @username, [product_name] = @product_name, [product_id] = @product_id, [price] = @price, [quantity] = @quantity, [totalprice] = @totalprice, [time] = @time, [status] = @status WHERE [sn] = @sn">
                                    <DeleteParameters>
                                        <asp:Parameter Name="sn" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="username" Type="String" />
                                        <asp:Parameter Name="product_name" Type="String" />
                                        <asp:Parameter Name="product_id" Type="String" />
                                        <asp:Parameter Name="price" Type="Int32" />
                                        <asp:Parameter Name="quantity" Type="Int32" />
                                        <asp:Parameter Name="totalprice" Type="Int32" />
                                        <asp:Parameter Name="time" Type="DateTime" />
                                        <asp:Parameter Name="status" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="username" Type="String" />
                                        <asp:Parameter Name="product_name" Type="String" />
                                        <asp:Parameter Name="product_id" Type="String" />
                                        <asp:Parameter Name="price" Type="Int32" />
                                        <asp:Parameter Name="quantity" Type="Int32" />
                                        <asp:Parameter Name="totalprice" Type="Int32" />
                                        <asp:Parameter Name="time" Type="DateTime" />
                                        <asp:Parameter Name="status" Type="String" />
                                        <asp:Parameter Name="sn" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                                
                                </div>
                               
                          </div>
                       

                        <br>
                        <hr>
                        
               
                        </div>
               
                 
                
                

                
                              
                		
                  

              <!--End view-->
            
              
    </div>
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


