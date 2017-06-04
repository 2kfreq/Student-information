<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master-admin.master" AutoEventWireup="true" CodeFile="st-change.aspx.cs" Inherits="Admin_account_ac_change" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <ul class="am-nav am-nav-pills">
            <li><a href="st-view.aspx">学生信息浏览</a></li>
            <li><a href="st-select.aspx">学生信息查询</a></li>
            <li class="am-active"><a href="st-change.aspx">学生信息修改</a></li>
            <li><a href="st-del.aspx">学生信息删除</a></li>
            <li><a href="st-insert.aspx">学生信息插入</a></li>
        </ul>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="6" AutoGenerateColumns="False"
            DataKeyNames="学号" DataSourceID="SqlDataSource1" CssClass="am-table">

            <Columns>
                <asp:BoundField DataField="学号" HeaderText="学号" ReadOnly="True"
                    SortExpression="学号" />
                <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
                <asp:BoundField DataField="班级" HeaderText="班级" SortExpression="班级" />
                <asp:BoundField DataField="专业" HeaderText="专业"
                    SortExpression="专业" />
                <asp:BoundField DataField="出生日期" HeaderText="出生日期" SortExpression="出生日期" />
                <asp:BoundField DataField="家庭住址" HeaderText="家庭住址" SortExpression="家庭住址" />
                <asp:BoundField DataField="入学时间" HeaderText="入学时间" SortExpression="入学时间" />
                <asp:BoundField DataField="政治面貌" HeaderText="政治面貌" SortExpression="政治面貌" />
                <asp:BoundField DataField="备注" HeaderText="备注" SortExpression="备注" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT * FROM [学生表]"
            UpdateCommand="UPDATE 学生表 SET 姓名 = @姓名, 性别 = @性别, 班级 = @班级, 专业 = @专业, 出生日期 = @出生日期, 家庭住址 = @家庭住址, 入学时间 = @入学时间, 政治面貌 = @政治面貌, 备注 = @备注 WHERE (学号 = @学号)">
            <UpdateParameters>
                <asp:QueryStringParameter Name="姓名" />
                <asp:QueryStringParameter Name="性别" />
                <asp:QueryStringParameter Name="班级" />
                <asp:QueryStringParameter Name="专业" />
                <asp:QueryStringParameter Name="出生日期" />
                <asp:QueryStringParameter Name="家庭住址" />
                <asp:QueryStringParameter Name="入学时间" />
                <asp:QueryStringParameter Name="政治面貌" />
                <asp:QueryStringParameter Name="备注" />
                <asp:QueryStringParameter Name="学号" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

