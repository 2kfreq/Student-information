﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_class_add_class : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Write("<script LANGUAGE='javascript'>alert('请登录');window.location.href='/Login.aspx';</script>");
        }
    }
}