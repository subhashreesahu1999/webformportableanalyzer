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
    public partial class product : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["Furnishing_Store"].ConnectionString;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
            DataSet ds = GetData();
         

            Repeater1.DataSource = ds;
            Repeater1.DataBind();
            
        }
        private DataSet GetData()
        {
           
            using(SqlConnection con = new SqlConnection(constr))
            {
                SqlDataAdapter da = new SqlDataAdapter("Select * from product", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
           
                string constr = ConfigurationManager.ConnectionStrings["Furnishing_Store"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    SqlDataAdapter da = new SqlDataAdapter("Select * from product where type = 'bed'", con);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                   
                }
          
            
        }
        
    }
}