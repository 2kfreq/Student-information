<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master-admin-class.master" AutoEventWireup="true" CodeFile="class-search.aspx.cs" Inherits="Admin_class_class_search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <ul class="am-nav am-nav-pills">
            <li><a href="class-view.aspx">班级信息浏览</a></li>
            <li class="am-active"><a href="class-search.aspx">班级信息查询</a></li>
            <li><a href="class-del.aspx">班级信息删除</a></li>
            <li><a href="add-class.aspx">添加班级</a></li>
        </ul>
    </div>
    <asp:TextBox ID="TextBox1" runat="server" class="am-form-field"  placeholder="请输入班级"></asp:TextBox><p />
    <asp:Button ID="Button1" runat="server" Text="查询" CssClass="am-btn am-btn-secondary" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM [班级表]WHERE (班级 = @班级)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="班级" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    &nbsp;<asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="6"
        AutoGenerateColumns="False" CssClass="am-table"
        DataKeyNames="班级" DataSourceID="SqlDataSource1">
        <RowStyle BackColor="Cyan" />
        <Columns>
            <asp:BoundField DataField="班级" HeaderText="班级" ReadOnly="True"
                SortExpression="班级" />
            <asp:BoundField DataField="专业" HeaderText="专业" SortExpression="专业" />
        </Columns>
    </asp:GridView>
</asp:Content>

