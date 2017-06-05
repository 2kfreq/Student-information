<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master-admin-class.master" AutoEventWireup="true" CodeFile="add-class.aspx.cs" Inherits="Admin_class_add_class" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <ul class="am-nav am-nav-pills">
            <li><a href="class-view.aspx">班级信息浏览</a></li>
            <li><a href="class-search.aspx">班级信息查询</a></li>
            <li><a href="class-del.aspx">班级信息删除</a></li>
            <li class="am-active"><a href="add-class.aspx">添加班级</a></li>
        </ul>
    </div>
    <div>

    </div>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="班级" DataSourceID="SqlDataSource1" DefaultMode="Insert"  style="margin:0 auto;">
        <EditItemTemplate>
            班级:
            <asp:Label ID="班级Label1" runat="server" Text='<%# Eval("班级") %>' />
            <br />
            专业:
            <asp:TextBox ID="专业TextBox" runat="server" Text='<%# Bind("专业") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
            班级:
            <asp:TextBox ID="班级TextBox" runat="server" Text='<%# Bind("班级") %>' />
            <br />
            专业:
            <asp:TextBox ID="专业TextBox" runat="server" Text='<%# Bind("专业") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" class="am-btn am-btn-secondary"/>
            &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="清空" class="am-btn am-btn-default"/>
        </InsertItemTemplate>
        <ItemTemplate>
            班级:
            <asp:Label ID="班级Label" runat="server" Text='<%# Eval("班级") %>' />
            <br />
            专业:
            <asp:Label ID="专业Label" runat="server" Text='<%# Bind("专业") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="删除" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新建" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [班级表] WHERE [班级] = @original_班级 AND (([专业] = @original_专业) OR ([专业] IS NULL AND @original_专业 IS NULL))" InsertCommand="INSERT INTO [班级表] ([班级], [专业]) VALUES (@班级, @专业)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [班级表]" UpdateCommand="UPDATE [班级表] SET [专业] = @专业 WHERE [班级] = @original_班级 AND (([专业] = @original_专业) OR ([专业] IS NULL AND @original_专业 IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_班级" Type="String" />
            <asp:Parameter Name="original_专业" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="班级" Type="String" />
            <asp:Parameter Name="专业" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="专业" Type="String" />
            <asp:Parameter Name="original_班级" Type="String" />
            <asp:Parameter Name="original_专业" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

