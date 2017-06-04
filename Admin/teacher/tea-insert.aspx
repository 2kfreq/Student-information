<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master-admin-teacher.master" AutoEventWireup="true" CodeFile="tea-insert.aspx.cs" Inherits="Admin_teacher_tea_insert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <ul class="am-nav am-nav-pills">
            <li><a href="tea-view.aspx">教师信息浏览</a></li>
            <li><a href="tea-select.aspx">教师信息查询</a></li>
            <li><a href="tea-update.aspx">教师信息修改</a></li>
            <li><a href="tea-del.aspx">教师信息删除</a></li>
            <li class="am-active"><a href="tea-insert.aspx">教师信息插入</a></li>
        </ul>
    </div>
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [教师表]" InsertCommand ="INSERT INTO [教师表] ([教师编号], [姓名], [性别], [职称], [学历], [备注], [政治面貌]) VALUES (@教师编号, @姓名, @性别, @职称, @学历, @备注, @政治面貌)" UpdateCommand ="UPDATE [教师表] SET [姓名] = @姓名, [性别] = @性别, [职称] = @职称, [学历] = @学历, [备注] = @备注, [政治面貌] = @政治面貌 WHERE [教师编号] = @original_教师编号 AND [姓名] = @original_姓名 AND (([性别] = @original_性别) OR ([性别] IS NULL AND @original_性别 IS NULL)) AND (([职称] = @original_职称) OR ([职称] IS NULL AND @original_职称 IS NULL)) AND (([学历] = @original_学历) OR ([学历] IS NULL AND @original_学历 IS NULL)) AND (([备注] = @original_备注) OR ([备注] IS NULL AND @original_备注 IS NULL)) AND (([政治面貌] = @original_政治面貌) OR ([政治面貌] IS NULL AND @original_政治面貌 IS NULL)) " ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [教师表] WHERE [教师编号] = @original_教师编号 AND [姓名] = @original_姓名 AND (([性别] = @original_性别) OR ([性别] IS NULL AND @original_性别 IS NULL)) AND (([职称] = @original_职称) OR ([职称] IS NULL AND @original_职称 IS NULL)) AND (([学历] = @original_学历) OR ([学历] IS NULL AND @original_学历 IS NULL)) AND (([备注] = @original_备注) OR ([备注] IS NULL AND @original_备注 IS NULL)) AND (([政治面貌] = @original_政治面貌) OR ([政治面貌] IS NULL AND @original_政治面貌 IS NULL))" OldValuesParameterFormatString="original_{0}">
            <DeleteParameters>
                <asp:Parameter Name="original_教师编号" Type="String" />
                <asp:Parameter Name="original_姓名" Type="String" />
                <asp:Parameter Name="original_性别" Type="String" />
                <asp:Parameter Name="original_职称" Type="String" />
                <asp:Parameter Name="original_学历" Type="String" />
                <asp:Parameter Name="original_备注" Type="String" />
                <asp:Parameter Name="original_政治面貌" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="教师编号" Type="String" />
                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="性别" Type="String" />
                <asp:Parameter Name="职称" Type="String" />
                <asp:Parameter Name="学历" Type="String" />
                <asp:Parameter Name="备注" Type="String" />
                <asp:Parameter Name="政治面貌" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="性别" Type="String" />
                <asp:Parameter Name="职称" Type="String" />
                <asp:Parameter Name="学历" Type="String" />
                <asp:Parameter Name="备注" Type="String" />
                <asp:Parameter Name="政治面貌" Type="String" />
                <asp:Parameter Name="original_教师编号" Type="String" />
                <asp:Parameter Name="original_姓名" Type="String" />
                <asp:Parameter Name="original_性别" Type="String" />
                <asp:Parameter Name="original_职称" Type="String" />
                <asp:Parameter Name="original_学历" Type="String" />
                <asp:Parameter Name="original_备注" Type="String" />
                <asp:Parameter Name="original_政治面貌" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView2" runat="server" DataKeyNames="教师编号" 
                        DataSourceID="SqlDataSource1" DefaultMode="Insert" style="margin:0 auto;"  class="am-form am-form-horizontal" Width="50%">
                        <EditItemTemplate>
                            教师编号:
                            <asp:Label ID="教师编号Label1" runat="server" Text='<%# Eval("教师编号") %>' />
                            <br />
                            姓名:
                            <asp:TextBox ID="姓名TextBox" runat="server" Text='<%# Bind("姓名") %>' />
                            <br />
                            性别:
                            <asp:TextBox ID="性别TextBox" runat="server" Text='<%# Bind("性别") %>' />
                            <br />
                            职称:
                            <asp:TextBox ID="职称TextBox" runat="server" Text='<%# Bind("职称") %>' />
                            <br />
                            学历:
                            <asp:TextBox ID="学历TextBox" runat="server" Text='<%# Bind("学历") %>' />
                            <br />
                            备注:
                            <asp:TextBox ID="备注TextBox" runat="server" Text='<%# Bind("备注") %>' />
                            <br />
                            政治面貌:
                            <asp:TextBox ID="政治面貌TextBox" runat="server" Text='<%# Bind("政治面貌") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="更新" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            教师编号:
                            <asp:TextBox ID="教师编号TextBox" runat="server" Text='<%# Bind("教师编号") %>' />
                            <br />
                            姓名:
                            <asp:TextBox ID="姓名TextBox" runat="server" Text='<%# Bind("姓名") %>' />
                            <br />
                            性别:
                            <asp:TextBox ID="性别TextBox" runat="server" Text='<%# Bind("性别") %>' />
                            <br />
                            职称:
                            <asp:TextBox ID="职称TextBox" runat="server" Text='<%# Bind("职称") %>' />
                            <br />
                            学历:
                            <asp:TextBox ID="学历TextBox" runat="server" Text='<%# Bind("学历") %>' />
                            <br />
                            备注:
                            <asp:TextBox ID="备注TextBox" runat="server" Text='<%# Bind("备注") %>' />
                            <br />
                            政治面貌:
                            <asp:TextBox ID="政治面貌TextBox" runat="server" Text='<%# Bind("政治面貌") %>' />
                            <br />
                            <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" class="am-btn am-btn-secondary"/>
&nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="清空" class="am-btn am-btn-default"/>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            教师编号:
                            <asp:Label ID="教师编号Label" runat="server" Text='<%# Eval("教师编号") %>' />
                            <br />
                            姓名:
                            <asp:Label ID="姓名Label" runat="server" Text='<%# Bind("姓名") %>' />
                            <br />
                            性别:
                            <asp:Label ID="性别Label" runat="server" Text='<%# Bind("性别") %>' />
                            <br />
                            职称:
                            <asp:Label ID="职称Label" runat="server" Text='<%# Bind("职称") %>' />
                            <br />
                            学历:
                            <asp:Label ID="学历Label" runat="server" Text='<%# Bind("学历") %>' />
                            <br />
                            备注:
                            <asp:Label ID="备注Label" runat="server" Text='<%# Bind("备注") %>' />
                            <br />
                            政治面貌:
                            <asp:Label ID="政治面貌Label" runat="server" Text='<%# Bind("政治面貌") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="删除" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新建" />
                        </ItemTemplate>
                    </asp:FormView>
    </div>
</asp:Content>

