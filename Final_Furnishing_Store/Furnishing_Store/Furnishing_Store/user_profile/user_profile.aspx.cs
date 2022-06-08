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

namespace Furnishing_Store.user_profile
{
    public partial class user : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["Furnishing_Store"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] == null) Response.Redirect("../error.aspx");
                String user = Session["username"].ToString();
                String pass = Session["password"].ToString();
                if (Session["username"] == null) return;


                GetData();
                Repeater1.DataBind();
            }
         

        }
        private void GetData()
        {
            

            using (SqlConnection con = new SqlConnection(constr))
            {
                string user = Session["username"].ToString();
               
                SqlDataAdapter da = new SqlDataAdapter("Select * from signup where email = '" + user +"'" , con);

                DataSet ds = new DataSet();
                da.Fill(ds);
                Repeater1.DataSource = ds;

                //return ds;
            }
        }


        protected void Unnamed1_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("../index.aspx");
        }
        
    }
}