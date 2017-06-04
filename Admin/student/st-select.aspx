<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master-admin.master" AutoEventWireup="true" CodeFile="st-select.aspx.cs" Inherits="Admin_account_ac_select" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <ul class="am-nav am-nav-pills">
            <li><a href="st-view.aspx">学生信息浏览</a></li>
            <li class="am-active"><a href="st-select.aspx">学生信息查询</a></li>
            <li><a href="st-change.aspx">学生信息修改</a></li>
            <li><a href="st-del.aspx">学生信息删除</a></li>
            <li><a href="st-insert.aspx">学生信息插入</a></li>
        </ul>
    </div>
    <div style="margin: 0 auto; padding-left: 10%; padding-right: 10%; padding-top: 20px;">
        <div>
            <asp:TextBox ID="tbSelect" runat="server" class="am-form-field"  placeholder="请输入学生学号"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="查询" CssClass="am-btn am-btn-secondary" Style="margin-top:10px;" />
            <p />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT * FROM [学生表]WHERE (学号 = @学号)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="tbSelect" Name="学号" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="6"
                AutoGenerateColumns="False"
                DataKeyNames="学号" DataSourceID="SqlDataSource1" CssClass="am-table">
                <Columns>
                    <asp:BoundField DataField="学号" HeaderText="学号" ReadOnly="True"
                        SortExpression="学号" />
                    <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                    <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
                    <asp:BoundField DataField="班级" HeaderText="班级" SortExpression="班级" />
                    <asp:BoundField DataField="专业" HeaderText="专业" SortExpression="专业" />
                    <asp:BoundField DataField="出生日期" DataFormatString="{0:d}" HeaderText="出生日期"
                        SortExpression="出生日期" />
                    <asp:BoundField DataField="家庭住址" HeaderText="家庭住址" SortExpression="家庭住址" />
                    <asp:BoundField DataField="入学时间" HeaderText="入学时间" SortExpression="入学时间" />
                    <asp:BoundField DataField="政治面貌" HeaderText="政治面貌" SortExpression="政治面貌" />
                    <asp:BoundField DataField="备注" HeaderText="备注" SortExpression="备注" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

