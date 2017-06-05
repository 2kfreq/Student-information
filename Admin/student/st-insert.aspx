<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master-admin-st.master" AutoEventWireup="true" CodeFile="st-insert.aspx.cs" Inherits="Admin_account_ac_insert" %>

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
            InsertCommand="INSERT INTO [学生表] ([学号], [姓名], [性别], [班级], [专业], [出生日期], [家庭住址], [入学时间], [政治面貌], [备注]) VALUES (@学号, @姓名, @性别, @班级, @专业, @出生日期, @家庭住址, @入学时间, @政治面貌, @备注)"
            SelectCommand="SELECT * FROM [学生表]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [学生表] WHERE [学号] = @original_学号 AND (([姓名] = @original_姓名) OR ([姓名] IS NULL AND @original_姓名 IS NULL)) AND (([性别] = @original_性别) OR ([性别] IS NULL AND @original_性别 IS NULL)) AND (([班级] = @original_班级) OR ([班级] IS NULL AND @original_班级 IS NULL)) AND (([专业] = @original_专业) OR ([专业] IS NULL AND @original_专业 IS NULL)) AND (([出生日期] = @original_出生日期) OR ([出生日期] IS NULL AND @original_出生日期 IS NULL)) AND (([家庭住址] = @original_家庭住址) OR ([家庭住址] IS NULL AND @original_家庭住址 IS NULL)) AND (([入学时间] = @original_入学时间) OR ([入学时间] IS NULL AND @original_入学时间 IS NULL)) AND (([政治面貌] = @original_政治面貌) OR ([政治面貌] IS NULL AND @original_政治面貌 IS NULL)) AND (([备注] = @original_备注) OR ([备注] IS NULL AND @original_备注 IS NULL))" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [学生表] SET [姓名] = @姓名, [性别] = @性别, [班级] = @班级, [专业] = @专业, [出生日期] = @出生日期, [家庭住址] = @家庭住址, [入学时间] = @入学时间, [政治面貌] = @政治面貌, [备注] = @备注 WHERE [学号] = @original_学号 AND (([姓名] = @original_姓名) OR ([姓名] IS NULL AND @original_姓名 IS NULL)) AND (([性别] = @original_性别) OR ([性别] IS NULL AND @original_性别 IS NULL)) AND (([班级] = @original_班级) OR ([班级] IS NULL AND @original_班级 IS NULL)) AND (([专业] = @original_专业) OR ([专业] IS NULL AND @original_专业 IS NULL)) AND (([出生日期] = @original_出生日期) OR ([出生日期] IS NULL AND @original_出生日期 IS NULL)) AND (([家庭住址] = @original_家庭住址) OR ([家庭住址] IS NULL AND @original_家庭住址 IS NULL)) AND (([入学时间] = @original_入学时间) OR ([入学时间] IS NULL AND @original_入学时间 IS NULL)) AND (([政治面貌] = @original_政治面貌) OR ([政治面貌] IS NULL AND @original_政治面貌 IS NULL)) AND (([备注] = @original_备注) OR ([备注] IS NULL AND @original_备注 IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_学号" Type="String" />
                <asp:Parameter Name="original_姓名" Type="String" />
                <asp:Parameter Name="original_性别" Type="String" />
                <asp:Parameter Name="original_班级" Type="String" />
                <asp:Parameter Name="original_专业" Type="String" />
                <asp:Parameter Name="original_出生日期" Type="DateTime" />
                <asp:Parameter Name="original_家庭住址" Type="String" />
                <asp:Parameter Name="original_入学时间" Type="DateTime" />
                <asp:Parameter Name="original_政治面貌" Type="String" />
                <asp:Parameter Name="original_备注" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="学号" Type="String" />
                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="性别" Type="String" />
                <asp:Parameter Name="班级" Type="String" />
                <asp:Parameter Name="专业" Type="String" />
                <asp:Parameter Name="出生日期" Type="DateTime" />
                <asp:Parameter Name="家庭住址" Type="String" />
                <asp:Parameter Name="入学时间" Type="DateTime" />
                <asp:Parameter Name="政治面貌" Type="String" />
                <asp:Parameter Name="备注" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="性别" Type="String" />
                <asp:Parameter Name="班级" Type="String" />
                <asp:Parameter Name="专业" Type="String" />
                <asp:Parameter Name="出生日期" Type="DateTime" />
                <asp:Parameter Name="家庭住址" Type="String" />
                <asp:Parameter Name="入学时间" Type="DateTime" />
                <asp:Parameter Name="政治面貌" Type="String" />
                <asp:Parameter Name="备注" Type="String" />
                <asp:Parameter Name="original_学号" Type="String" />
                <asp:Parameter Name="original_姓名" Type="String" />
                <asp:Parameter Name="original_性别" Type="String" />
                <asp:Parameter Name="original_班级" Type="String" />
                <asp:Parameter Name="original_专业" Type="String" />
                <asp:Parameter Name="original_出生日期" Type="DateTime" />
                <asp:Parameter Name="original_家庭住址" Type="String" />
                <asp:Parameter Name="original_入学时间" Type="DateTime" />
                <asp:Parameter Name="original_政治面貌" Type="String" />
                <asp:Parameter Name="original_备注" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="学号" DataSourceID="SqlDataSource1" DefaultMode="Insert" style="margin:0 auto;"  class="am-form am-form-horizontal" Width="50%">
            <EditItemTemplate>
                学号:
            <asp:Label ID="学号Label1" runat="server" Text='<%# Eval("学号") %>' />
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
                <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" class="am-btn am-btn-secondary"/>
&nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="清空" class="am-btn am-btn-default"/>
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
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新建" />
            </ItemTemplate>
        </asp:FormView>
    </div>
    <br /><br />
</asp:Content>

