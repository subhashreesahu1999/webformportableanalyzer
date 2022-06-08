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
    public partial class add_admin : System.Web.UI.Page
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
                 

                    con.Open();

                    //For total user count
                    SqlCommand cmd = new SqlCommand(strQuery, con);
                    SqlDataAdapter OleDbDa = new SqlDataAdapter(cmd);
                    DataTable dtData = new DataTable();
                    OleDbDa.Fill(dtData);
                    ttlusr.Text = dtData.Rows[0]["users"].ToString();

                   

                    con.Close();
                }

                
            }
        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {

            if (Email.Value != "" && phone.Value != "" && pass2.Value != "")
            {

               
                SqlConnection con = new SqlConnection(constr);

                
                string nam = name.Value;
                string role = DropDownList1.SelectedItem.Value;
                string emai = Email.Value;
                string adr = address.Value;
                string phon = phone.Value;
                string password = pass2.Value;
                string hashedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "MD5");

                SqlCommand cmd = new SqlCommand("insert into signup values(@name, @email, @phone, @address, @password,@userole)", con);
                cmd.Parameters.AddWithValue("@name", nam);
                cmd.Parameters.AddWithValue("@email", emai);
                cmd.Parameters.AddWithValue("@phone", phon);
                cmd.Parameters.AddWithValue("@address", adr);
                cmd.Parameters.AddWithValue("@userole", role);
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
        
        
        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("../index.aspx");
        }
    }
}