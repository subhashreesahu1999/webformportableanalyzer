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
    public partial class user_view_product : System.Web.UI.Page
    {
        
        string constr = ConfigurationManager.ConnectionStrings["Furnishing_Store"].ConnectionString;

     

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null) Response.Redirect("../error.aspx");
            String user = Session["username"].ToString();
            if (!IsPostBack )
                GetData();
        }

        private void GetData()
        {

            Int64 productid = Convert.ToInt64(Request.QueryString["product_id"]);
            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlDataAdapter da = new SqlDataAdapter("Select * from product where product_id = " + productid + "", con);
                //SqlDataAdapter da = new SqlDataAdapter("Select product_id, name, color, type, description, price, material, imagepath, imagename from product where product_id=", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                Repeater1.DataSource = ds;
                Repeater1.DataBind();
                //return ds;
            }
        }

        protected void Addtocart(object sender, EventArgs e)
        {
            Int64 productid = Convert.ToInt64(Request.QueryString["product_id"]);

                String user = Session["username"].ToString();
            { Response.Write("<script>alert('"+productid+"');</script>"); }


            DropDownList dp = (DropDownList)Repeater1.Items[0].FindControl("DropDownList1");
            Label pl = (Label)Repeater1.Items[0].FindControl("price");

            
           


                if (pl == null) { Response.Write("<script>alert('no price data');</script>"); return; }
               
                int pric = Convert.ToInt32(pl.Text);
                int Quantity = Convert.ToInt32(dp.SelectedValue);
                int TotalPrice = pric * Quantity;


                /*String constr = ConfigurationManager.ConnectionStrings["Furnishing_Store"].ConnectionString;
                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand("Select * from product", con);
                SqlDataReader rdr;
                con.Open();
                rdr = cmd.ExecuteReader();

                int price = Convert.ToInt32(["price"].ToString());
                int Quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                int TotalPrice = price * Quantity;*/



                string constr = ConfigurationManager.ConnectionStrings["Furnishing_Store"].ConnectionString;
                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmdselect = new SqlCommand("select product_id, name, imagepath, imagename, description, price from product where product_id =@productid", con);
                cmdselect.Parameters.AddWithValue("@productid", productid);
                con.Open();
                SqlDataReader dr = cmdselect.ExecuteReader();
            if (!dr.HasRows) { Response.Write("<script>alert('no data found');</script>"); return; }


            SqlCommand cmd = new SqlCommand("insert into addtocart values(@username, @product_id, @product_name, @imagepath, @imagename, @description, @price, @quantity, @totalprice, @time,'Pending')",con);

            dr.Read();
                cmd.Parameters.AddWithValue("@username", user);
                cmd.Parameters.AddWithValue("@quantity", Quantity);
                cmd.Parameters.AddWithValue("@totalprice", TotalPrice);
                cmd.Parameters.AddWithValue("@product_id", dr.GetValue(0));
                cmd.Parameters.AddWithValue("@product_name", dr["name"]);
                cmd.Parameters.AddWithValue("@imagepath", dr["imagepath"]);
                cmd.Parameters.AddWithValue("@imagename", dr["imagename"]);
                cmd.Parameters.AddWithValue("@description", dr["description"].ToString());
                cmd.Parameters.AddWithValue("@price", dr["price"]);
           

            dr.Close();
            cmd.Parameters.AddWithValue("@time", DateTime.Now);

            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('Add to cart successfull'); </script>");
                con.Close();

        }
        protected void Unnamed1_Click2(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("../index.aspx");
        }


    }
}