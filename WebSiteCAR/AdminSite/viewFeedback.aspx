    <%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite/MasterPage2.master" AutoEventWireup="true" CodeFile="viewFeedback.aspx.cs" Inherits="AdminSite_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="container">
   <p /><h2> Feedback</h2> <hr style="height:1px; border:none; color:#000; background-color:#000; width:100%;  margin: 0 0 0 auto;"><br /><br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:WebSiteCARConnectionString %>" 
        DeleteCommand="DELETE FROM [tbl_feedback] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [tbl_feedback] ([name], [contact], [email], [feedback]) VALUES (@name, @contact, @email, @feedback)" 
        SelectCommand="SELECT [id], [name], [contact], [email], [feedback] FROM [tbl_feedback]" 
        UpdateCommand="UPDATE [tbl_feedback] SET [name] = @name, [contact] = @contact, [email] = @email, [feedback] = @feedback WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="contact" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="feedback" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="contact" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="feedback" Type="String" />
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
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="contact" HeaderText="contact" 
                SortExpression="contact" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="feedback" HeaderText="feedback" 
                SortExpression="feedback" />
        </Columns>
    </asp:GridView>
    <br />
   
</div></asp:Content>

