using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection myConn = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strcon"]);

        string strcmd = "";
        if (TextBox1.Text != "" && TextBox2.Text != "")
        {

            strcmd = "select count(*) from 用户表  where  用户名='" + TextBox1.Text + "' and 密码='" + TextBox2.Text + "'";



            myConn.Open();
            SqlCommand cmd = new SqlCommand(strcmd, myConn);
            if ((int)cmd.ExecuteScalar() == 1)
            {
                this.Session.Add("name", Convert.ToString(TextBox1.Text));
                Response.Redirect("Admin//admin-main.aspx");

            }
            else
                Response.Write("<script LANGUAGE='javascript'>alert('账号或密码错误!');history.go(-1);</script>");
            myConn.Close();
        }
        else
            Response.Write("<script LANGUAGE='javascript'>alert('请输入账号或密码!');history.go(-1);</script>");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}