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

namespace Furnishing_Store
{
    
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            

            if (username.Value != "" && password.Value != "") {
                string constr = ConfigurationManager.ConnectionStrings["Furnishing_Store"].ConnectionString;
                SqlConnection con = new SqlConnection(constr);
                string usersname = username.Value;
                string passwords = password.Value;
                string hashedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(passwords, "MD5");
                SqlCommand cmd = new SqlCommand("select userrole from signup where email=@email and password=@password", con);
                cmd.Parameters.AddWithValue("@email", usersname);
                cmd.Parameters.AddWithValue("@password", hashedPassword);
                con.Open();
                hashedPassword = Convert.ToString(hashedPassword);
                string RetUser = (string)cmd.ExecuteScalar();
                if(RetUser != null) {
                         Session["username"] = usersname;
                           Session["password"] = passwords;
                    if (RetUser=="user")
                    {
                        Response.Redirect("user_profile/user_profile.aspx");
                    }
                    else
                    {
                        Response.Redirect("admin_profile/admin_profile.aspx");
                    }
                }
                else
                {
                    message2.Visible = true;
                }
                con.Close();
            }
            else
            {
                message1.Visible = true;
            }
        }
    }
}