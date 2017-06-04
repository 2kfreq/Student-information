<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master-admin-teacher.master" AutoEventWireup="true" CodeFile="tea-view.aspx.cs" Inherits="Admin_teacher_tea_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <ul class="am-nav am-nav-pills">
            <li class="am-active"><a href="tea-view.aspx">教师信息浏览</a></li>
            <li><a href="tea-select.aspx">教师信息查询</a></li>
            <li><a href="tea-update.aspx">教师信息修改</a></li>
            <li><a href="tea-del.aspx">教师信息删除</a></li>
            <li><a href="tea-insert.aspx">教师信息插入</a></li>
        </ul>
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="教师编号" DataSourceID="SqlDataSource1" PageSize="6" CssClass="am-table">
        <Columns>
            <asp:BoundField DataField="教师编号" HeaderText="教师编号" ReadOnly="True" SortExpression="教师编号" />
            <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
            <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
            <asp:BoundField DataField="职称" HeaderText="职称" SortExpression="职称" />
            <asp:BoundField DataField="学历" HeaderText="学历" SortExpression="学历" />
            <asp:BoundField DataField="备注" HeaderText="备注" SortExpression="备注" />
            <asp:BoundField DataField="政治面貌" HeaderText="政治面貌" SortExpression="政治面貌" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [教师表]"></asp:SqlDataSource>
</asp:Content>

