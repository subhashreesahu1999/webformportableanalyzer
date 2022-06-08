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
    public partial class addtocart : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["Furnishing_Store"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] == null) Response.Redirect("../error.aspx");
                String user = Session["username"].ToString();
                if (Session["username"] == null) return;
               
                GetData();
            }
               
        }
        private void GetData()
        {


            String user = Session["username"].ToString();
            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlDataAdapter da = new SqlDataAdapter("Select * from addtocart where username='" + user + "'", con);
                /*SqlDataAdapter da = new SqlDataAdapter("Select sn, product_id, product_name, imagepath, imagename, price, quantity, totalprice, time, status from dbo.addtocart where username=" + user + "", con);*/
                //SqlDataAdapter da = new SqlDataAdapter("Select product_id, name, color, type, description, price, material, imagepath, imagename from product where product_id=", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                Repeater1.DataSource = ds;
                Repeater1.DataBind();
                //return ds;
            }
        }
        //SqlDataAdapter da = new SqlDataAdapter("Select product_id, name, color, type, description, price, material, imagepath, imagename from product where product_id=", con);
        protected void Unnamed1_Click2(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("../index.aspx");
        }
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Delete" && e.CommandArgument.ToString() != "")
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    string del = " delete  from addtocart where sn=" + e.CommandArgument.ToString();
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = del;
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery(); 
                    Repeater1.DataBind();
                }   
            }
        }
        protected void Unnamed1_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("../index.aspx");
        }
    }
}