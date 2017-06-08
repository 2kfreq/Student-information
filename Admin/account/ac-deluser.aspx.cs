using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_account_ac_deluser : System.Web.UI.Page
{
    public string CID;
    public string sqlconn;
    int returnValue;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Write("<script LANGUAGE='javascript'>alert('请登录');window.location.href='/Login.aspx';</script>");
        }
    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        SqlConnection mysqlconnection = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strcon"]);
        SqlCommand coutsqlcommand = mysqlconnection.CreateCommand();
        mysqlconnection.Open();
        if (Tbname.Text != "" && tbpw.Text != "" && tbpwc.Text != "")
        {
            if (tbpw.Text == tbpwc.Text)
            {
                coutsqlcommand.CommandText = "delete from 用户表 where 用户名=" + "'" + Convert.ToString(Tbname.Text) + "'" + " and 密码=" + "'" + Convert.ToString(tbpw.Text) + "'";
                returnValue = coutsqlcommand.ExecuteNonQuery();
                if (returnValue == 1)
                {
                    Response.Write("<script>alert('已删除。');</script>");
                    Tbname.Text = "";
                    tbpw.Text = "";
                    tbpwc.Text = "";
                }
                else
                {
                    Response.Write("<script>alert('密码或用户名错误。');</script>");
                }
            }
        }
        else
        {
            Response.Write("<script LANGUAGE='javascript'>alert('两次输入的密码不一致。');</script>");
        }

    }
}