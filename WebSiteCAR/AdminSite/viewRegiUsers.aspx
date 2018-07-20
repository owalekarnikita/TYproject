<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite/MasterPage2.master" AutoEventWireup="true" CodeFile="viewRegiUsers.aspx.cs" Inherits="AdminSite_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="container"> 
  <p /><h2> Registered users</h2> <hr style="height:1px; border:none; color:#000; background-color:#000; width:100%;  margin: 0 0 0 auto;"><br /><br />

   <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:WebSiteCARConnectionString %>" 
        DeleteCommand="DELETE FROM [signup] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [signup] ([username], [email], [mobile], [pwd]) VALUES (@username, @email, @mobile, @pwd)" 
        SelectCommand="SELECT [id], [username], [email], [mobile], [pwd] FROM [signup]" 
        UpdateCommand="UPDATE [signup] SET [username] = @username, [email] = @email, [mobile] = @mobile, [pwd] = @pwd WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter Name="pwd" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter Name="pwd" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="username" HeaderText="username" 
                SortExpression="username" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" 
                SortExpression="mobile" />
            <asp:BoundField DataField="pwd" HeaderText="pwd" SortExpression="pwd" />
        </Columns>
    </asp:GridView>
</div>
<br />
</asp:Content>

