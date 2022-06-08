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
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (name.Value != "" && email.Value != "" && phone.Value != "" && msg.Value != "")
            {

                string constr = ConfigurationManager.ConnectionStrings["Furnishing_Store"].ConnectionString;
                SqlConnection con = new SqlConnection(constr);


                string nam = name.Value;
                string emai = email.Value;
                string phon = phone.Value;
                string mes = msg.Value;
                


                SqlCommand cmd = new SqlCommand("insert into contact values(@name, @email, @phone, @message, @time)", con);
                cmd.Parameters.AddWithValue("@name", nam);
                cmd.Parameters.AddWithValue("@email", emai);
                cmd.Parameters.AddWithValue("@phone", phon);
                cmd.Parameters.AddWithValue("@message", mes);
                cmd.Parameters.AddWithValue("@time", DateTime.Now);



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