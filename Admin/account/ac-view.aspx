<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master-admin-ac.master" AutoEventWireup="true" CodeFile="ac-view.aspx.cs" Inherits="Admin_account_ac_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <ul class="am-nav am-nav-pills">
            <li><a href="ac-adduser.aspx">增加管理员</a></li>
            <li><a href="ac-deluser.aspx">删除管理员</a></li>
            <li class="am-active"><a href="ac-view.aspx" >浏览管理员用户</a></li>
        </ul>
    </div>
    <asp:GridView ID="GridView1" runat="server" CssClass="am-table" AutoGenerateColumns="False" DataKeyNames="用户名" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="用户名" HeaderText="用户名" ReadOnly="True" SortExpression="用户名" />
            <asp:BoundField DataField="密码" HeaderText="密码" SortExpression="密码" />
            <asp:BoundField DataField="密保问题" HeaderText="密保问题" SortExpression="密保问题" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [用户表]"></asp:SqlDataSource>

</asp:Content>

