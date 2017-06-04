<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master-admin-class.master" AutoEventWireup="true" CodeFile="class-view.aspx.cs" Inherits="Admin_grade_grade_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <ul class="am-nav am-nav-pills">
            <li class="am-active"><a href="class-view.aspx">班级信息浏览</a></li>
            <li><a href="class-search.aspx">班级信息查询</a></li>
            <li><a href="add-class.aspx">添加班级</a></li>
        </ul>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="班级" DataSourceID="SqlDataSource1" CssClass="am-table">
            <Columns>
                <asp:BoundField DataField="班级" HeaderText="班级" ReadOnly="True" SortExpression="班级" />
                <asp:BoundField DataField="专业" HeaderText="专业" SortExpression="专业" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [班级表]"></asp:SqlDataSource>
    </div>
</asp:Content>

