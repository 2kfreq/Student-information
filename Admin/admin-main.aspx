<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master-admin.master" AutoEventWireup="true" CodeFile="admin-main.aspx.cs" Inherits="Admin_admin_main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <ul class="am-nav am-nav-pills">
            <li><a href="account/ac-view.aspx">学生信息浏览</a></li>
            <li><a href="#">学生信息查询</a></li>
            <li><a href="#">学生信息修改</a></li>
            <li><a href="#">学生信息删除</a></li>
            <li><a href="#">学生信息插入</a></li>
        </ul>
    </div>
    <div style="margin-top: 150px;">
        <h1 style="text-align: center;">
            <asp:Label ID="lbwel" runat="server" Text="Label">欢迎您，管理员</asp:Label></h1>
    </div>
</asp:Content>

