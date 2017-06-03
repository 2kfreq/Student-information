<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master-admin-ac.master" AutoEventWireup="true" CodeFile="ac-deluser.aspx.cs" Inherits="Admin_account_ac_deluser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <ul class="am-nav am-nav-pills">
            <li><a href="ac-adduser.aspx">增加管理员</a></li>
            <li class="am-active"><a href="ac-deluser.aspx">删除管理员</a></li>
            <li><a href="ac-view.aspx">浏览管理员用户</a></li>
        </ul>
    </div>
    <div class="am-form am-form-horizontal">
        <div class="am-form-group">
            <label for="doc-ipt-3" class="am-u-sm-2 am-form-label">用户名</label>
            <div class="am-u-sm-10">
                <asp:TextBox ID="Tbname" runat="server" placeholder="输入要删除的用户名"></asp:TextBox>
            </div>
        </div>

        <div class="am-form-group">
            <label for="doc-ipt-pwd-2" class="am-u-sm-2 am-form-label">密码</label>
            <div class="am-u-sm-10">
                <asp:TextBox type="password" ID="tbpw" runat="server" placeholder="请输入要删除的用户的密码"></asp:TextBox>
            </div>
        </div>
        <div class="am-form-group">
            <label for="doc-ipt-pwd-2" class="am-u-sm-2 am-form-label">确认密码</label>
            <div class="am-u-sm-10">
                <asp:TextBox type="password" ID="tbpwc" runat="server" placeholder="再次输入密码"></asp:TextBox>
            </div>
        </div>
        <div class="am-form-group">
            <div class="am-u-sm-10 am-u-sm-offset-2">
                <asp:Button ID="btn1" runat="server" Text="确认删除" class="am-btn am-btn-default" OnClick="btn1_Click"/>
            </div>
        </div>
    </div>
</asp:Content>

