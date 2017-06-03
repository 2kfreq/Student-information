<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master-admin.master" AutoEventWireup="true" CodeFile="st-insert.aspx.cs" Inherits="Admin_account_ac_insert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <ul class="am-nav am-nav-pills">
            <li><a href="st-view.aspx">学生信息浏览</a></li>
            <li><a href="st-select.aspx">学生信息查询</a></li>
            <li><a href="st-change.aspx">学生信息修改</a></li>
            <li><a href="st-del.aspx">学生信息删除</a></li>
            <li class="am-active"><a href="st-insert.aspx">学生信息插入</a></li>
        </ul>
    </div>
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            InsertCommand="INSERT INTO 学生表(学号, 姓名, 性别, 班级, 专业,  家庭住址, 政治面貌, 备注, 密码) VALUES (@学号, @姓名, @性别, @班级, @专业, @家庭住址, @政治面貌, @备注, @密码)"
            SelectCommand="SELECT * FROM [学生表]">
            <InsertParameters>
                <asp:QueryStringParameter Name="学号" />
                <asp:QueryStringParameter Name="姓名" />
                <asp:QueryStringParameter Name="性别" />
                <asp:QueryStringParameter Name="班级" />
                <asp:QueryStringParameter Name="专业" />
                <asp:QueryStringParameter Name="家庭住址" />
                <asp:QueryStringParameter Name="政治面貌" />
                <asp:QueryStringParameter Name="备注" />
                <asp:QueryStringParameter Name="密码" />
            </InsertParameters>
        </asp:SqlDataSource>
    </div>
    <div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="学号" DataSourceID="SqlDataSource1" DefaultMode="Insert" style="margin:0 auto;"  class="am-form am-form-horizontal" Width="50%">
            <EditItemTemplate>
             <label for="doc-ipt-3" class="am-u-sm-2 am-form-label">学号：</label>
            <asp:Label ID="学号Label1" runat="server" Text='<%# Eval("学号") %>' />
                <br />
             <label for="doc-ipt-3" class="am-u-sm-2 am-form-label">姓名：</label>
            <asp:TextBox ID="姓名TextBox" runat="server" Text='<%# Bind("姓名") %>' />
                <br />
                性别:
            <asp:TextBox ID="性别TextBox" runat="server" Text='<%# Bind("性别") %>' />
                <br />
                班级:
            <asp:TextBox ID="班级TextBox" runat="server" Text='<%# Bind("班级") %>' />
                <br />
                专业:
            <asp:TextBox ID="专业TextBox" runat="server" Text='<%# Bind("专业") %>' />
                <%--<br />
                出生日期:
            <asp:TextBox ID="出生日期TextBox" runat="server" Text='<%# Bind("出生日期") %>' />--%>
                <br />
                家庭住址:
            <asp:TextBox ID="家庭住址TextBox" runat="server" Text='<%# Bind("家庭住址") %>' />
               <%-- <br />
                入学时间:
            <asp:TextBox ID="入学时间TextBox" runat="server" Text='<%# Bind("入学时间") %>' />--%>
                <br />
                政治面貌:
            <asp:TextBox ID="政治面貌TextBox" runat="server" Text='<%# Bind("政治面貌") %>' />
                <br />
                备注:
            <asp:TextBox ID="备注TextBox" runat="server" Text='<%# Bind("备注") %>' />
                <br />
                密码:
            <asp:TextBox ID="密码TextBox" runat="server" Text='<%# Bind("密码") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <InsertItemTemplate>
                学号:
            <asp:TextBox ID="学号TextBox" runat="server" Text='<%# Bind("学号") %>' />
                <br />
                姓名:
            <asp:TextBox ID="姓名TextBox" runat="server" Text='<%# Bind("姓名") %>' />
                <br />
                性别:
            <asp:TextBox ID="性别TextBox" runat="server" Text='<%# Bind("性别") %>' />
                <br />
                班级:
            <asp:TextBox ID="班级TextBox" runat="server" Text='<%# Bind("班级") %>' />
                <br />
                专业:
            <asp:TextBox ID="专业TextBox" runat="server" Text='<%# Bind("专业") %>' />
                <br />
                出生日期:
            <asp:TextBox ID="出生日期TextBox" runat="server" Text='<%# Bind("出生日期") %>' />
                <br />
                家庭住址:
            <asp:TextBox ID="家庭住址TextBox" runat="server" Text='<%# Bind("家庭住址") %>' />
                <br />
                入学时间:
            <asp:TextBox ID="入学时间TextBox" runat="server" Text='<%# Bind("入学时间") %>' />
                <br />
                政治面貌:
            <asp:TextBox ID="政治面貌TextBox" runat="server" Text='<%# Bind("政治面貌") %>' />
                <br />
                备注:
            <asp:TextBox ID="备注TextBox" runat="server" Text='<%# Bind("备注") %>' />
                <br />
                密码:
            <asp:TextBox ID="密码TextBox" runat="server" Text='<%# Bind("密码") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" class="am-btn am-btn-secondary"/>
                &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" class="am-btn am-btn-default"/>
            </InsertItemTemplate>
            <ItemTemplate>
                学号:
            <asp:Label ID="学号Label" runat="server" Text='<%# Eval("学号") %>' />
                <br />
                姓名:
            <asp:Label ID="姓名Label" runat="server" Text='<%# Bind("姓名") %>' />
                <br />
                性别:
            <asp:Label ID="性别Label" runat="server" Text='<%# Bind("性别") %>' />
                <br />
                班级:
            <asp:Label ID="班级Label" runat="server" Text='<%# Bind("班级") %>' />
                <br />
                专业:
            <asp:Label ID="专业Label" runat="server" Text='<%# Bind("专业") %>' />
                <br />
                出生日期:
            <asp:Label ID="出生日期Label" runat="server" Text='<%# Bind("出生日期") %>' />
                <br />
                家庭住址:
            <asp:Label ID="家庭住址Label" runat="server" Text='<%# Bind("家庭住址") %>' />
                <br />
                入学时间:
            <asp:Label ID="入学时间Label" runat="server" Text='<%# Bind("入学时间") %>' />
                <br />
                政治面貌:
            <asp:Label ID="政治面貌Label" runat="server" Text='<%# Bind("政治面貌") %>' />
                <br />
                备注:
            <asp:Label ID="备注Label" runat="server" Text='<%# Bind("备注") %>' />
                <br />
                密码:
            <asp:Label ID="密码Label" runat="server" Text='<%# Bind("密码") %>' />
                <br />
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新建" />
            </ItemTemplate>
        </asp:FormView>
    </div>
    <br /><br />
</asp:Content>

