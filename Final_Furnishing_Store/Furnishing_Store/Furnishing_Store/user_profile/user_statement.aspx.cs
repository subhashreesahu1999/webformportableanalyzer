using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Furnishing_Store.user_profile
{
    public partial class user_statement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = Session["username"].ToString();
            if (Session["username"] == null) Response.Redirect("../error.aspx");
        }
    }
}