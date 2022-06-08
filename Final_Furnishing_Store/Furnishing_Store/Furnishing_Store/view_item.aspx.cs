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
    public partial class view_item : System.Web.UI.Page
    {
     
        string constr = ConfigurationManager.ConnectionStrings["Furnishing_Store"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                GetData();
              
            }

         

            
        }
        private void  GetData()
        {
           
            Int64 productid = Convert.ToInt64(Request.QueryString["product_id"]);
            
            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlDataAdapter da = new SqlDataAdapter("Select * from product where product_id = "+productid+"", con);
                //SqlDataAdapter da = new SqlDataAdapter("Select product_id, name, color, type, description, price, material, imagepath, imagename from product where product_id=", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                Repeater1.DataSource = ds;
                Repeater1.DataBind();
                //return ds;
            }
        }
        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            Int64 productid = Convert.ToInt64(Request.QueryString["product_id"]);
 
            string str = "?product_id=" + productid;
            
            Response.Redirect("order.aspx" + str);
            
        }
    

    }
}