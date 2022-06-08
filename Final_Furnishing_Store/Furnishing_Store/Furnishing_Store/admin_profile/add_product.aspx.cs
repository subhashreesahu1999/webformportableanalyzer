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
    public partial class add_product : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["Furnishing_Store"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] == null) Response.Redirect("../error.aspx");
               

                if (Session["username"] != null)
                {
                    username.Text = Session["username"].ToString();

                    SqlConnection con = new SqlConnection(constr);
                    string strQuery = "SELECT COUNT(*) AS users FROM signup";
                    string pro = "SELECT COUNT(*) AS products FROM product";
                    string adm = "SELECT COUNT(*) AS contacts FROM contact";

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
        protected void Unnamed1_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("../index.aspx");
        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (name.Value != "" && color.Value != "" && description.Value != "" && material.Value != "" 
                 && price.Value != "" && type.Value != ""
                )
            {

               


                string names = name.Value;
                string col = color.Value;
                string desc = description.Value;
                string mat = material.Value;
               
                string pri = price.Value;
                string ty = type.Value;
              

                //file uploads
                string saveDir = @"Product_image\";

                var validExtensions = new List<string>() { ".jpg", ".png", ".jpeg", ".JPG", ".JPG", ".JPEG", ".PNG" };
                string savePath;
                string appPath = Request.PhysicalApplicationPath;
                string fileName = Server.HtmlEncode(FileUpload1.FileName);
                savePath = appPath + saveDir;

                if (FileUpload1.HasFile)
                {
                    string extension = System.IO.Path.GetExtension(fileName);
                    if (validExtensions.Contains(extension))
                    {
                        int fileSize = FileUpload1.PostedFile.ContentLength;
                        if(fileSize < 2100000)
                        {
                            string imagepath = savePath;
                            savePath += fileName;
                            FileUpload1.SaveAs(savePath);

                            
                            SqlConnection con = new SqlConnection(constr);
                          

                            SqlCommand cmd = new SqlCommand("insert into product values(@name,@price, @color, @type, @material, @description, @imagepath, @imagename)", con);
                            cmd.Parameters.AddWithValue("@name", names);
                            cmd.Parameters.AddWithValue("@color", col);
                            cmd.Parameters.AddWithValue("@description", desc);
                            cmd.Parameters.AddWithValue("@material", mat);
                          
                            cmd.Parameters.AddWithValue("@price", pri);
                            cmd.Parameters.AddWithValue("@type", ty);
                            cmd.Parameters.AddWithValue("@imagename", fileName);
                            cmd.Parameters.AddWithValue("@imagepath", imagepath);


                            con.Open();
                            cmd.ExecuteScalar();

                            con.Close();


                            Label1.Text = "Product add success !";
                        }
                        else
                        {
                            Label1.Text = "Your file was not upload because" + "it exceeds the 2 MB size limit" ;
                        }
                    }
                    else
                    {
                        Label1.Text = "Your file was not upload because you selected a file with invalid extendion";
                    }
                }
                //end of file uploads
                else
                {
                    Label1.Text = "Your didnot sepcify a file to upload";
                }

                

            }
            else
            {

                Label1.Text = "please enter all";

            }

        }
    }
}