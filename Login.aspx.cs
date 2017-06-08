using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    public string sqlconn;
    DataSet myDataSet;
    int returnValue;
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

    protected void lb_submit_Click(object sender, EventArgs e)
    {

        SqlConnection mysqlconnection = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strcon"]);
        SqlCommand mysqlcommand = mysqlconnection.CreateCommand();
        myDataSet = new DataSet();
        mysqlconnection.Open();
        mysqlconnection.Close();
        DataTable tb = myDataSet.Tables["用户表"];
        SqlCommand coutsqlcommand = mysqlconnection.CreateCommand();
        
        if (tbusername.Text != "" && tbpw.Text != "" && tbpwc.Text != ""&&tbmibao.Text!="")
        {
            
            if (tbpw.Text != tbpwc.Text)
            {
                Response.Write("<script>alert('两次输入密码不一致！请重新输入。');</script>");
            }
            else
            {
                mysqlconnection.Open();
                coutsqlcommand.CommandText = "select count(*) as 数目 from 用户表 where 用户名=" + "'" + tbusername.Text + "' and " + "密保问题='" + tbmibao.Text + "'";
                returnValue = (int)coutsqlcommand.ExecuteScalar();
                if (returnValue != 1)
                {
                    Response.Write("<script>alert('用户名或密保问题输入错误！');</script>");
                }
                else
                {
                    coutsqlcommand.CommandText = "update  用户表 set 密码='"+ Convert.ToString(tbpw.Text) + "' where 用户名='"+ Convert.ToString(tbusername.Text)+"'";
                    returnValue = coutsqlcommand.ExecuteNonQuery();
                    if(returnValue==1)
                        Response.Write("<script>alert('密码修改成功！');</script>");
                    else
                        Response.Write("<script>alert('密码修改失败！');</script>");
                }
            }
        }
        else
            Response.Write("<script LANGUAGE='javascript'>alert('不能为空!');history.go(-1);</script>");
    }
}