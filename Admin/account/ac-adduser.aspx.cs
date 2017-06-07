using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_account_ac_adduser : System.Web.UI.Page
{
    public string CID;
    public string sqlconn;
    DataRow dtr;
    SqlDataAdapter myadapter;
    SqlCommandBuilder scb;
    DataSet myDataSet;
    SqlConnection mysqlconnection;
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
        SqlCommand mysqlcommand = mysqlconnection.CreateCommand();
        myadapter = new SqlDataAdapter();
        myadapter.SelectCommand = mysqlcommand;
        myDataSet = new DataSet();
        mysqlconnection.Open();
        int numberOfRow = myadapter.Fill(myDataSet, "用户表");
        mysqlconnection.Close();
        DataTable tb = myDataSet.Tables["用户表"];
        dtr = tb.Rows[0];
        SqlCommand coutsqlcommand = mysqlconnection.CreateCommand();
        mysqlconnection.Open();
        if (Tbname.Text != "" && tbpw.Text != "" && tbpwc.Text != "" && tbbackup.Text!="")
        {
            if (tbpw.Text != tbpwc.Text)
            {
                Response.Write("<script>alert('两次输入密码不一致！请重新输入。');</script>");
            }
            else
            {
                coutsqlcommand.CommandText = "select count(*) as 数目 from 用户表 where 用户名=" + "'" + Tbname.Text + "'";
                returnValue = (int)coutsqlcommand.ExecuteScalar();
                if (returnValue != 0)
                {
                    Response.Write("<script>alert('用户名已存在！');</script>");
                }
                else
                {
                    DataRow dbr = myDataSet.Tables["用户表"].NewRow();
                    dbr["用户名"] = (String)(Tbname.Text);
                    dbr["密码"] = (String)(tbpw.Text);
                    dbr["密保问题"] = (String)(tbbackup.Text);
                    myDataSet.Tables["用户表"].Rows.Add(dbr);
                    scb = new SqlCommandBuilder(myadapter);
                    myadapter.Update(myDataSet.Tables["用户表"]);
                    Response.Write("<script>alert('添加用户成功！');</script>");
                }
            }
        }
    }
}