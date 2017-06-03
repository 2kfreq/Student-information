using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_admin_main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = Session["name"].ToString();
        lbwel.Text = lbwel.Text + s + "!";
    }
}