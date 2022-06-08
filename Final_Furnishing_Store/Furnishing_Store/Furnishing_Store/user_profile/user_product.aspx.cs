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
    public partial class user_product1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] == null)  Response.Redirect("../error.aspx");
                String user = Session["username"].ToString();
                DataSet ds = GetData();

                Repeater1.DataSource = ds;
                Repeater1.DataBind();
            }
        }
        private DataSet GetData()
        {
            string constr = ConfigurationManager.ConnectionStrings["Furnishing_Store"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlDataAdapter da = new SqlDataAdapter("Select * from product", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }
        protected void Unnamed1_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("../index.aspx");
        }
    }
}