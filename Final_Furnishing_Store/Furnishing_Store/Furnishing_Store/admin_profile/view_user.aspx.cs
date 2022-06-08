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
    public partial class view_user : System.Web.UI.Page
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

                    GridView1.DataSource = SqlDataSource1;
                    GridView1.DataBind();

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
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            Label4.Text = "";
            GridView1.EditRowStyle.BackColor = System.Drawing.Color.Orange;
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            Label4.Text = "";
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label user_id = GridView1.Rows[e.RowIndex].FindControl("label1") as Label;
            TextBox email = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
            TextBox phone = GridView1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
            TextBox name = GridView1.Rows[e.RowIndex].FindControl("TextBox8") as TextBox;
            TextBox userrole = GridView1.Rows[e.RowIndex].FindControl("TextBox9") as TextBox;
            TextBox address = GridView1.Rows[e.RowIndex].FindControl("TextBox10") as TextBox;



           
            string updatedata = "update signup set email=@email, phone=@phone, userrole=@userrole, name=@name, address=@address where user_id=@user_id";

            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@email", email.Text);
            
            cmd.Parameters.AddWithValue("@name", name.Text);
            cmd.Parameters.AddWithValue("@userrole", userrole.Text);
            cmd.Parameters.AddWithValue("@phone", phone.Text);
            cmd.Parameters.AddWithValue("@address", address.Text);
            cmd.Parameters.AddWithValue("@user_id", user_id.Text);
            cmd.ExecuteNonQuery();
            Label4.Text = "Row Data has been updated successfully";
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();

        }



        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label user_id = GridView1.Rows[e.RowIndex].FindControl("label1") as Label;
            string constr = ConfigurationManager.ConnectionStrings["Furnishing_Store"].ConnectionString;
            string del = " delete from signup where user_id=" + user_id.Text;
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = del;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label4.Text = "Row data has been deleted successfully";
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();

        }
        protected void Unnamed1_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("../index.aspx");
        }

        
    }
}