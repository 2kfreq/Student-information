﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_admin_main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["name"]==null)
        {
            Response.Write("<script LANGUAGE='javascript'>alert('请登录');window.location.href='/Login.aspx';</script>");
        }
        else
        {
            string s = Session["name"].ToString();
            lbwel.Text = lbwel.Text + s + "!";
        }
        
    }
}