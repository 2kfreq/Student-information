<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master-admin-teacher.master" AutoEventWireup="true" CodeFile="tea-update.aspx.cs" Inherits="Admin_teacher_tea_update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <ul class="am-nav am-nav-pills">
            <li><a href="tea-view.aspx">教师信息浏览</a></li>
            <li><a href="tea-select.aspx">教师信息查询</a></li>
            <li class="am-active"><a href="tea-update.aspx">教师信息修改</a></li>
            <li><a href="tea-del.aspx">教师信息删除</a></li>
            <li><a href="tea-insert.aspx">教师信息插入</a></li>
        </ul>
    </div>
        <div>
        <asp:GridView ID="GridView1" runat="server" PageSize="6"
            AutoGenerateColumns="False"
            DataKeyNames="教师编号" DataSourceID="SqlDataSource1" CssClass="am-table">
            <Columns>
                <asp:BoundField DataField="教师编号" HeaderText="教师编号" ReadOnly="True"
                    SortExpression="教师编号" />
                <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                
                <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
                <asp:BoundField DataField="职称" HeaderText="职称" SortExpression="职称" />
                <asp:BoundField DataField="学历" HeaderText="学历" SortExpression="学历" />
                <asp:BoundField DataField="备注" HeaderText="备注" SortExpression="备注" />
                <asp:BoundField DataField="政治面貌" HeaderText="政治面貌" SortExpression="政治面貌" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT * FROM [教师表]"
            UpdateCommand="UPDATE 教师表 SET 姓名 = @姓名, 性别 = @性别, 职称 = @职称, 学历 = @学历, 备注 = @备注, 政治面貌 = @政治面貌, 密码 = @密码 WHERE (教师编号 = @教师编号)">
            <UpdateParameters>
                <asp:QueryStringParameter Name="姓名" />
                <asp:QueryStringParameter Name="性别" />
                <asp:QueryStringParameter Name="职称" />
                <asp:QueryStringParameter Name="学历" />
                <asp:QueryStringParameter Name="备注" />
                <asp:QueryStringParameter Name="政治面貌" />
                <asp:QueryStringParameter Name="密码" />
                <asp:QueryStringParameter Name="教师编号" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

