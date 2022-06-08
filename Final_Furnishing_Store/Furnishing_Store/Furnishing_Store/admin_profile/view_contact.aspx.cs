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
    public partial class view_contact : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["Furnishing_Store"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] == null) Response.Redirect("../error.aspx");
                String user = Session["username"].ToString();
                String pass = Session["password"].ToString();

                if (Session["username"] != null)
                {
                    username.Text = Session["username"].ToString();

                    SqlConnection con = new SqlConnection(constr);
                    string adm = "SELECT COUNT(*) AS contacts FROM contact";

                    con.Open();

                   

                    //For total contact count
                    SqlCommand contact = new SqlCommand(adm, con);
                    SqlDataAdapter addta = new SqlDataAdapter(contact);
                    DataTable Datadm = new DataTable();
                    addta.Fill(Datadm);
                    contactmsg.Text = Datadm.Rows[0]["contacts"].ToString();

                    con.Close();
                }





            }
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label product_id = GridView1.Rows[e.RowIndex].FindControl("label1") as Label;
           
            string del = " delete  from product where product_id=" + product_id.Text;
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = del;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label10.Text = "Row data has been deleted successfully";
            GridView1.EditIndex = -1;
        }
        protected void Unnamed1_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("../index.aspx");
        }
    }
}