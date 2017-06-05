<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master-admin-class.master" AutoEventWireup="true" CodeFile="class-del.aspx.cs" Inherits="Admin_class_class_del" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <ul class="am-nav am-nav-pills">
            <li><a href="class-view.aspx">班级信息浏览</a></li>
            <li><a href="class-search.aspx">班级信息查询</a></li>
            <li class="am-active"><a href="class-del.aspx">班级信息删除</a></li>
            <li><a href="add-class.aspx">添加班级</a></li>
        </ul>
    </div>
    <asp:GridView ID="GridView1" class="am-table" runat="server" AutoGenerateColumns="False" DataKeyNames="班级" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="班级" HeaderText="班级" ReadOnly="True" SortExpression="班级" />
            <asp:BoundField DataField="专业" HeaderText="专业" SortExpression="专业" />
        </Columns>
    </asp:GridView>
        
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [班级表] WHERE [班级] = @班级" InsertCommand="INSERT INTO [班级表] ([班级], [专业]) VALUES (@班级, @专业)" SelectCommand="SELECT * FROM [班级表]" UpdateCommand="UPDATE [班级表] SET [专业] = @专业 WHERE [班级] = @班级">
        <DeleteParameters>
            <asp:Parameter Name="班级" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="班级" Type="String" />
            <asp:Parameter Name="专业" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="专业" Type="String" />
            <asp:Parameter Name="班级" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
        
</asp:Content>

