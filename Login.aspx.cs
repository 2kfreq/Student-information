using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    int temp = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            DropDownList1.Items.Add("管理员");
            DropDownList1.Items.Add("教师");
            DropDownList1.Items.Add("学生");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection myConn = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strcon"]);

        string strcmd = "";
        if (TextBox1.Text != "" && TextBox2.Text != "")
        {
            if (DropDownList1.Text == "管理员")
            {
                strcmd = "select count(*) from 用户表  where  用户名='" + TextBox1.Text + "' and 密码='" + TextBox2.Text + "'";
                temp = 1;
            }
            if (DropDownList1.Text == "教师")
            {
                strcmd = "select count(*) from  教师表 where  教师编号='" + TextBox1.Text + "' and 密码='" + TextBox2.Text + "'";
                temp = 2;
            }
            if (DropDownList1.Text == "学生")
            {
                strcmd = "select count(*) from  学生表 where  学号='" + TextBox1.Text + "' and 密码='" + TextBox2.Text + "'";
                temp = 3;
            }

            myConn.Open();
            SqlCommand cmd = new SqlCommand(strcmd, myConn);
            if ((int)cmd.ExecuteScalar() == 1)
            {
                this.Session.Add("name", Convert.ToString(TextBox1.Text));
                if (temp == 1)
                    Response.Redirect("Admin//admin-main.aspx");
                if (temp == 2)
                    Response.Redirect("Teacher//Default1.aspx");
                if (temp == 3)
                    Response.Redirect("Student//Default.aspx");
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
        DropDownList1.Text = "管理员";
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}