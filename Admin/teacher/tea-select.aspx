<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master-admin-teacher.master" AutoEventWireup="true" CodeFile="tea-select.aspx.cs" Inherits="Admin_teacher_tea_select" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <ul class="am-nav am-nav-pills">
            <li><a href="tea-view.aspx">教师信息浏览</a></li>
            <li class="am-active"><a href="tea-select.aspx">教师信息查询</a></li>
            <li><a href="tea-update.aspx">教师信息修改</a></li>
            <li><a href="tea-del.aspx">教师信息删除</a></li>
            <li><a href="tea-insert.aspx">教师信息插入</a></li>
        </ul>
    </div>
    <div>
        <asp:TextBox ID="tbSelect" runat="server" class="am-form-field"  placeholder="请输入教师姓名"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="查询" CssClass="am-btn am-btn-secondary" Style="margin-top: 10px;" />
        <p />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="6"
            CaptionAlign="Top"
            AutoGenerateColumns="False"
            DataSourceID="SqlDataSource1" DataKeyNames="教师编号" CssClass="am-table">
            <EditRowStyle HorizontalAlign="Center" />
            <Columns>
                <asp:BoundField DataField="教师编号" HeaderText="教师编号" ReadOnly="True"
                    SortExpression="教师编号" />
                <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
                <asp:BoundField DataField="职称" HeaderText="职称" SortExpression="职称" />
                <asp:BoundField DataField="学历" HeaderText="学历" SortExpression="学历" />
                <asp:BoundField DataField="政治面貌" HeaderText="政治面貌" SortExpression="政治面貌" />
                <asp:BoundField DataField="备注" HeaderText="备注" SortExpression="备注" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT 教师编号, 姓名, 性别, 职称, 学历, 政治面貌, 备注 FROM 教师表 WHERE (姓名 = @姓名)">
            <SelectParameters>
                <asp:ControlParameter ControlID="tbSelect" Name="姓名" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

