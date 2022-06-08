<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_product.aspx.cs" Inherits="Furnishing_Store.admin_profile.view_product" %>

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
                       <div class="card " runat="server" id="available_product" Visible="true">
                          <div class="card-body  ">
                            <h5 class="card-title text-center">Total available Products : <asp:Label ID="ttlpdt" runat="server" Text=""></asp:Label></div>
                    <div class="text-center p-5">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowDeleting="GridView2_RowDeleting" OnRowEditing="GridView2_RowEditing" OnRowUpdating="GridView2_RowUpdating" Width="16px" BackImageUrl="&lt;Eval(&quot;imagepath&quot;)&gt;&lt;Eval(&quot;imagename&quot;)&gt;">
                            <Columns>
                                <asp:TemplateField HeaderText="Product ID">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("product_id") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="TextBox14" runat="server" Width="42px"></asp:TextBox>
                                    </FooterTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("product_id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Product Name">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Eval("name") %>' Width="63px" Height="21px"></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="TextBox15" runat="server" Width="58px"></asp:TextBox>
                                    </FooterTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Color">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox9" runat="server" Height="22px" Text='<%# Eval("color") %>' Width="112px"></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="TextBox16" runat="server" Width="78px"></asp:TextBox>
                                    </FooterTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("color") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Description">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox10" runat="server" Text='<%# Eval("description") %>' Width="70px" Height="24px"></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="TextBox17" runat="server" Height="29px" Width="55px"></asp:TextBox>
                                    </FooterTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Material">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox13" runat="server" Text='<%# Eval("material") %>' Width="89px"></asp:TextBox>
                                       
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                         <asp:TextBox ID="TextBox20" runat="server" Height="16px" Width="81px"></asp:TextBox>
                                    </FooterTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("material") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Price">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox12" runat="server" Text='<%# Eval("price") %>' Width="73px"></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="TextBox19" runat="server" Width="74px"></asp:TextBox>
                                    </FooterTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Type">
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="types" runat="server" >
                                            <asp:ListItem>Bed</asp:ListItem>
                                            <asp:ListItem>Sofa</asp:ListItem>
                                            <asp:ListItem>Chair</asp:ListItem>
                                            <asp:ListItem>Other</asp:ListItem>
                                        </asp:DropDownList>
                                        
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="TextBox21" runat="server" Width="167px"></asp:TextBox>
                                    </FooterTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("type") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Image">
                                    <EditItemTemplate>
                                        <asp:FileUpload ID="Uploads" runat="server" />
                                    </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image runat="server" ID="Img" ImageUrl='<%# ("../Product_image/")+Eval("imagename") %>' Height="100px" Width="100px" />
                                </ItemTemplate>
                                    </asp:TemplateField>
                                <asp:TemplateField HeaderText="Action">
                                    <EditItemTemplate>
                                                <asp:LinkButton ID="LinkButton8" runat="server" CommandName="Update">Update</asp:LinkButton>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:LinkButton ID="LinkButton9" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                                            </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton6" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:LinkButton ID="LinkButton7" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                        <asp:Label ID="Label14" runat="server"></asp:Label>
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Furnishing_StoreConnectionString5 %>" DeleteCommand="DELETE FROM [product] WHERE [product_id] = @product_id" InsertCommand="INSERT INTO [product] ([name], [color], [description], [material], [price], [type], [imagepath]) VALUES (@name, @color, @description, @material, @price, @type, @imagepath)" SelectCommand="SELECT * FROM [product]" UpdateCommand="UPDATE [product] SET [name] = @name, [color] = @color, [description] = @description, [material] = @material, [price] = @price, [type] = @type, [imagepath] = @imagepath WHERE [product_id] = @product_id">
                            <DeleteParameters>
                                <asp:Parameter Name="product_id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="color" Type="String" />
                                <asp:Parameter Name="description" Type="String" />
                                <asp:Parameter Name="material" Type="String" />
                                <asp:Parameter Name="price" Type="Int32" />
                                <asp:Parameter Name="type" Type="String" />
                                <asp:Parameter Name="imagepath" Type="String" />
                                <asp:Parameter Name="imagename" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="color" Type="String" />
                                <asp:Parameter Name="description" Type="String" />
                                <asp:Parameter Name="material" Type="String" />
                                <asp:Parameter Name="price" Type="Int32" />
                                <asp:Parameter Name="type" Type="String" />
                                <asp:Parameter Name="imagepath" Type="String" />
                                <asp:Parameter Name="imagename" Type="String" />
                                <asp:Parameter Name="product_id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <br />
                        <br />
                        <br />
                        </div>
                     

                          </div>
               
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

