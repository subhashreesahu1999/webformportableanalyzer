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
    public partial class admin_profile : System.Web.UI.Page
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
                    GetData();


                    Repeater1.DataBind();


                    SqlConnection con = new SqlConnection(constr);
                    string strQuery = "SELECT COUNT(*) AS users FROM signup";
                    string pro = "SELECT COUNT(*) AS products FROM product";
                    string adm = "SELECT COUNT(*) AS contacts FROM contact";
                    string odr = "SELECT COUNT(*) AS orders FROM addtocart";

                    con.Open();

                    //For total user count
                    SqlCommand cmd = new SqlCommand(strQuery, con);
                    SqlDataAdapter OleDbDa = new SqlDataAdapter(cmd);
                    DataTable dtData = new DataTable();
                    OleDbDa.Fill(dtData);
                    ttlusr.Text = dtData.Rows[0]["users"].ToString();

                    //For total product count
                    SqlCommand product = new SqlCommand(pro, con);
                    SqlDataAdapter dta = new SqlDataAdapter(product);
                    DataTable Data = new DataTable();
                    dta.Fill(Data);
                    ttlpdt.Text = Data.Rows[0]["products"].ToString();

                    //For total contact count
                    SqlCommand contact = new SqlCommand(adm, con);
                    SqlDataAdapter addta = new SqlDataAdapter(contact);
                    DataTable Datadm = new DataTable();
                    addta.Fill(Datadm);
                    contactmsg.Text = Datadm.Rows[0]["contacts"].ToString();

                    //For total orders count
                    SqlCommand order = new SqlCommand(odr, con);
                    SqlDataAdapter ord = new SqlDataAdapter(order);
                    DataTable ords = new DataTable();
                    ord.Fill(ords);
                    orderss.Text = ords.Rows[0]["orders"].ToString();

                    con.Close();
                   
                




                }
               
                
                
                    
                       
                   
              
            }
        }


        private void GetData()
        {


            using (SqlConnection con = new SqlConnection(constr))
            {
                string user = Session["username"].ToString();
                
                SqlDataAdapter da = new SqlDataAdapter("Select * from signup where email = '" + user + "'", con);
                /*SqlDataAdapter signup = new SqlDataAdapter("SELECT COUNT(*) from signup ", con);
                SqlDataAdapter tluser = new SqlDataAdapter("SELECT COUNT(*) from signup where userrole=user ", con);
                SqlDataAdapter admin = new SqlDataAdapter("SELECT COUNT(*) from signup where userrole=admin ", con);
                SqlDataAdapter product = new SqlDataAdapter("SELECT COUNT(*) from product ", con);*/
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