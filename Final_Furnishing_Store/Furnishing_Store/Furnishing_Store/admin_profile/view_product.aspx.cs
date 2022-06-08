using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace Furnishing_Store.admin_profile
{
    public partial class view_product : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["Furnishing_Store"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] == null) Response.Redirect("../error.aspx");
                String user = Session["username"].ToString();
                    String pass = Session["password"].ToString();

                    if (Session["username"] != null)
                    {
                        username.Text = Session["username"].ToString();

                    GridView2.DataSource = SqlDataSource2;
                    GridView2.DataBind();

                    SqlConnection con = new SqlConnection(constr);
                    string pro = "SELECT COUNT(*) AS products FROM product";


                    con.Open();

                    //For total product count
                    SqlCommand product = new SqlCommand(pro, con);
                    SqlDataAdapter dta = new SqlDataAdapter(product);
                    DataTable Data = new DataTable();
                    dta.Fill(Data);
                    ttlpdt.Text = Data.Rows[0]["products"].ToString();
                    con.Close();

                }




                
            }
        }
        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView2.EditIndex = e.NewEditIndex;
            GridView2.DataSource = SqlDataSource2;
            GridView2.DataBind();
            Label14.Text = "";
            GridView2.EditRowStyle.BackColor = System.Drawing.Color.Orange;
        }

        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            GridView2.DataSource = SqlDataSource2;
            GridView2.DataBind();
            Label14.Text = "";
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label product_id = GridView2.Rows[e.RowIndex].FindControl("label13") as Label;
            TextBox name = GridView2.Rows[e.RowIndex].FindControl("TextBox8") as TextBox;
            TextBox color = GridView2.Rows[e.RowIndex].FindControl("TextBox9") as TextBox;
            TextBox description = GridView2.Rows[e.RowIndex].FindControl("TextBox10") as TextBox;
            TextBox material = GridView2.Rows[e.RowIndex].FindControl("TextBox13") as TextBox;
            TextBox price = GridView2.Rows[e.RowIndex].FindControl("TextBox12") as TextBox;
            DropDownList type = GridView2.Rows[e.RowIndex].FindControl("types") as DropDownList;
            FileUpload FileToUpload = GridView2.Rows[e.RowIndex].FindControl("Uploads") as FileUpload;



            //file uploads
            string saveDir = @"Product_image\";

            var validExtensions = new List<string>() { ".jpg", ".png", ".jpeg", ".JPG", ".JPG", ".JPEG", ".PNG" };
            string savePath;
            string appPath = Request.PhysicalApplicationPath;
            string fileName = Server.HtmlEncode(FileToUpload.FileName);
            savePath = appPath + saveDir;

            if (FileToUpload.HasFile)
            {
                string extension = System.IO.Path.GetExtension(fileName);
                if (validExtensions.Contains(extension))
                {
                    int fileSize = FileToUpload.PostedFile.ContentLength;
                    if (fileSize < 2100000)
                    {
                        string imagepath = savePath;
                        savePath += fileName;
                        FileToUpload.SaveAs(savePath);
                       
                        string updatedata = "update product set name=@name, color=@color, description=@description, material=@material, price=@price, type=@type, imagepath=@imagepath, imagename=@imagename where product_id =" + product_id.Text;

                        SqlConnection con = new SqlConnection(constr);
                        con.Open();
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = updatedata;
                        cmd.Connection = con;


                        cmd.Parameters.AddWithValue("@name", name.Text);
                        cmd.Parameters.AddWithValue("@color", color.Text);
                        cmd.Parameters.AddWithValue("@description", description.Text);
                        cmd.Parameters.AddWithValue("@material", material.Text);
                        cmd.Parameters.AddWithValue("@price", price.Text);
                        cmd.Parameters.AddWithValue("@type", type.Text);
                        cmd.Parameters.AddWithValue("@imagename", fileName);
                        cmd.Parameters.AddWithValue("@imagepath", imagepath);

                        cmd.ExecuteScalar();
                        Label14.Text = "Row Data has been updated successfully";
                        GridView2.EditIndex = -1;
                        SqlDataSource2.DataBind();
                        GridView2.DataSource = SqlDataSource2;
                        GridView2.DataBind();
    
                    }
                    else
                    {
                        Label14.Text = "Your file was not upload because" + "it exceeds the 2 MB size limit";
                    }
                }
                else
                {
                    Label14.Text = "Your file was not upload because you selected a file with invalid extendion";
                }
            }
            //end of file uploads
            else
            {
                Label14.Text = "Your didnot sepcify a file to upload";
            }
            

           
           
        }

        /*protected void LinkButton8_Click(object sender, EventArgs e)
        {
            TextBox product_id = GridView2.FooterRow.FindControl("TextBox14") as TextBox;
            TextBox name = GridView2.FooterRow.FindControl("TextBox15") as TextBox;
            TextBox color = GridView2.FooterRow.FindControl("TextBox16") as TextBox;
            TextBox description = GridView2.FooterRow.FindControl("TextBox16") as TextBox;
            TextBox material = GridView2.FooterRow.FindControl("TextBox16") as TextBox;
            TextBox price = GridView2.FooterRow.FindControl("TextBox16") as TextBox;
            DropDownList type = GridView2.FooterRow.FindControl("DropDownList1") as DropDownList;
            FileUpload imagepath = GridView2.FooterRow.FindControl("FIleUpload2") as FileUpload;

            string constr = ConfigurationManager.ConnectionStrings["Furnishing_Store"].ConnectionString;
            string query = "insert into product (product_id,name,color,description, material, price, type, imagepath) values(" + product_id.Text + ", '" + name.Text + "', '" + color.Text + "','" + description.Text + "', '" + material.Text + "', '" + price.Text + "', '" + type.SelectedValue + "', '" + imagepath + "')";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label4.Text = "new row inserted successfully";

            SqlDataSource2.DataBind();
            GridView2.DataSource = SqlDataSource1;
            GridView2.DataBind();
        }*/

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label product_id = GridView2.Rows[e.RowIndex].FindControl("label5") as Label;
            string constr = ConfigurationManager.ConnectionStrings["Furnishing_Store"].ConnectionString;
            string del = " delete  from product where product_id=" + product_id.Text;
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = del;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label14.Text = "Row data has been deleted successfully";
            GridView2.EditIndex = -1;
            SqlDataSource2.DataBind();
            GridView2.DataSource = SqlDataSource2;
            GridView2.DataBind();
        }

        protected void Unnamed1_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("../index.aspx");
        }
    }
}