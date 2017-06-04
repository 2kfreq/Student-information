<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <link href="asset/css/amazeui.flat.css" rel="stylesheet" />
    <script src="asset/js/amazeui.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="text-align:center">学生信息管理系统</h1>
    <div style="width:60%;margin:20px auto;">
        <label for="doc-ipt-email-1">用户名</label>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="用户名" CssClass="am-form-field"></asp:TextBox>
        <p />
        <label for="doc-ipt-pwd-1">密码</label>
        <asp:TextBox ID="TextBox2" type="password" runat="server" placeholder="密码" CssClass="am-form-field"></asp:TextBox>
        <p />
        <asp:Button ID="Button1" runat="server" Text="登陆" class="am-btn am-btn-secondary" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" Text="清空" class="am-btn am-btn-default" OnClick="Button2_Click"/>
    </div>
    </form>
    <div style="margin:40px auto; width:250px;">
        <h2>源码：<a href="https://github.com/2kfreq/Student-information"><img src="/asset/img/github.jpg" height="25px" style="margin-bottom:7px;"/></a></h2>
        
    </div>
</body>
</html>
