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
    public partial class sign_up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (Email.Value !="" && phone.Value !="" && pass2.Value!="") { 
            string constr = ConfigurationManager.ConnectionStrings["Furnishing_Store"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
                string nam =name.Value;
                string emai = Email.Value;
                string adr = address.Value;
                string phon = phone.Value;
                string password = pass2.Value;
                string hashedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "MD5");
                SqlCommand cmd = new SqlCommand("insert into signup values(@name, @email, @phone, @address, @password,'user')", con);
                cmd.Parameters.AddWithValue("@name", nam);
                cmd.Parameters.AddWithValue("@email", emai);
                cmd.Parameters.AddWithValue("@phone", phon);
                cmd.Parameters.AddWithValue("@address", adr);
                cmd.Parameters.AddWithValue("@password", hashedPassword);
                con.Open();
                cmd.ExecuteScalar();
                con.Close();
                correct.Visible = true; 
            }
            else
            {
                Response.Redirect("sign_up.aspx");
             
            }
        }
    }
}