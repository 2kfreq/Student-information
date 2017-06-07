<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <script src="asset/js/jquery-3.2.1.js"></script>
    <link href="asset/css/amazeui.flat.css" rel="stylesheet" />
    <script src="asset/js/amazeui.js"></script>


    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登录</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="text-align: center">学生信息管理系统</h1>
        <div style="width: 60%; margin: 20px auto;">
            <label for="doc-ipt-email-1">用户名</label>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="用户名" CssClass="am-form-field"></asp:TextBox>
            <p />
            <label for="doc-ipt-pwd-1">密码</label>
            <asp:TextBox ID="TextBox2" type="password" runat="server" placeholder="密码" CssClass="am-form-field"></asp:TextBox>
            <p />
            <asp:Button ID="Button1" runat="server" Text="登陆" class="am-btn am-btn-secondary" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="清空" class="am-btn am-btn-default" OnClick="Button2_Click" />
            <script>
                $('#forget').modal(options);

            </script>
            <button
                type="button"
                class="am-btn am-btn-danger"
                data-am-modal="{target: '#forget'}">
                修改密码
            </button>

            <div class="am-modal am-modal-alert" tabindex="-1" id="forget">
                <div class="am-modal-dialog">
                    <div class="am-modal-hd">忘记密码</div>
                    <div class="am-modal-bd">
                        <label for="doc-ipt-email-1">用户名</label>
                        <asp:TextBox ID="tbusername" runat="server" placeholder="要修改的用户名" CssClass="am-form-field"></asp:TextBox>
                        <label for="doc-ipt-email-1">密保关键字</label>
                        <asp:TextBox ID="tbmibao" runat="server" placeholder="密保关键字" CssClass="am-form-field"></asp:TextBox>
                        <label for="doc-ipt-email-1">请输入新密码</label>
                        <asp:TextBox ID="tbpw" runat="server" placeholder="新密码" CssClass="am-form-field" TextMode="Password"></asp:TextBox>
                        <label for="doc-ipt-email-1">请在此输入新密码</label>
                        <asp:TextBox ID="tbpwc" runat="server" placeholder="再次输入密码" CssClass="am-form-field" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="am-modal-footer">

                        <asp:linkButton ID="lb_submit" runat="server" Text="确定"  OnClick="lb_submit_Click"></asp:linkButton>
                    </div>
                    
                </div>
            </div>
        </div>

    </form>
    <div style="margin: 40px auto; width: 250px;">
        <h2>源码：<a href="https://github.com/2kfreq/Student-information" target="_blank"><img src="/asset/img/github.jpg" height="25px" style="margin-bottom: 7px;" /></a></h2>
    </div>
</body>
</html>
