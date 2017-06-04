<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master-admin.master" AutoEventWireup="true" CodeFile="st-del.aspx.cs" Inherits="Admin_account_ac_del" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <ul class="am-nav am-nav-pills">
            <li><a href="st-view.aspx">学生信息浏览</a></li>
            <li><a href="st-select.aspx">学生信息查询</a></li>
            <li><a href="st-change.aspx">学生信息修改</a></li>
            <li class="am-active"><a href="st-del.aspx">学生信息删除</a></li>
            <li><a href="st-insert.aspx">学生信息插入</a></li>
        </ul>
    </div>
    <div>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" PageSize="6"
            AutoGenerateColumns="False"
            DataKeyNames="学号" DataSourceID="SqlDataSource1" CssClass="am-table">

            <Columns>
                <asp:BoundField DataField="学号" HeaderText="学号" ReadOnly="True"
                    SortExpression="学号" />
                <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
                <asp:BoundField DataField="班级" HeaderText="班级" SortExpression="班级" />
                <asp:BoundField DataField="专业" HeaderText="专业" SortExpression="专业" />
                <asp:BoundField DataField="出生日期" HeaderText="出生日期" SortExpression="出生日期" />
                <asp:BoundField DataField="家庭住址" HeaderText="家庭住址" SortExpression="家庭住址" />
                <asp:BoundField DataField="入学时间" HeaderText="入学时间" SortExpression="入学时间" />
                <asp:BoundField DataField="政治面貌" HeaderText="政治面貌" SortExpression="政治面貌" />
                <asp:BoundField DataField="备注" HeaderText="备注" SortExpression="备注" />
            </Columns>

        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            DeleteCommand="DELETE FROM [学生表] WHERE [学号] = @original_学号 AND (([姓名] = @original_姓名) OR ([姓名] IS NULL AND @original_姓名 IS NULL)) AND (([性别] = @original_性别) OR ([性别] IS NULL AND @original_性别 IS NULL)) AND (([班级] = @original_班级) OR ([班级] IS NULL AND @original_班级 IS NULL)) AND (([专业] = @original_专业) OR ([专业] IS NULL AND @original_专业 IS NULL)) AND (([出生日期] = @original_出生日期) OR ([出生日期] IS NULL AND @original_出生日期 IS NULL)) AND (([家庭住址] = @original_家庭住址) OR ([家庭住址] IS NULL AND @original_家庭住址 IS NULL)) AND (([入学时间] = @original_入学时间) OR ([入学时间] IS NULL AND @original_入学时间 IS NULL)) AND (([政治面貌] = @original_政治面貌) OR ([政治面貌] IS NULL AND @original_政治面貌 IS NULL)) AND (([备注] = @original_备注) OR ([备注] IS NULL AND @original_备注 IS NULL))"
            SelectCommand="SELECT * FROM [学生表]" ConflictDetection="CompareAllValues" InsertCommand="INSERT INTO [学生表] ([学号], [姓名], [性别], [班级], [专业], [出生日期], [家庭住址], [入学时间], [政治面貌], [备注]) VALUES (@学号, @姓名, @性别, @班级, @专业, @出生日期, @家庭住址, @入学时间, @政治面貌, @备注)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [学生表] SET [姓名] = @姓名, [性别] = @性别, [班级] = @班级, [专业] = @专业, [出生日期] = @出生日期, [家庭住址] = @家庭住址, [入学时间] = @入学时间, [政治面貌] = @政治面貌, [备注] = @备注 WHERE [学号] = @original_学号 AND (([姓名] = @original_姓名) OR ([姓名] IS NULL AND @original_姓名 IS NULL)) AND (([性别] = @original_性别) OR ([性别] IS NULL AND @original_性别 IS NULL)) AND (([班级] = @original_班级) OR ([班级] IS NULL AND @original_班级 IS NULL)) AND (([专业] = @original_专业) OR ([专业] IS NULL AND @original_专业 IS NULL)) AND (([出生日期] = @original_出生日期) OR ([出生日期] IS NULL AND @original_出生日期 IS NULL)) AND (([家庭住址] = @original_家庭住址) OR ([家庭住址] IS NULL AND @original_家庭住址 IS NULL)) AND (([入学时间] = @original_入学时间) OR ([入学时间] IS NULL AND @original_入学时间 IS NULL)) AND (([政治面貌] = @original_政治面貌) OR ([政治面貌] IS NULL AND @original_政治面貌 IS NULL)) AND (([备注] = @original_备注) OR ([备注] IS NULL AND @original_备注 IS NULL))">
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
</asp:Content>

