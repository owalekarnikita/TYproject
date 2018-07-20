<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite/MasterPage2.master" AutoEventWireup="true" CodeFile="deletegallery.aspx.cs" Inherits="AdminSite_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
                    <h2> Delete Gallery</h2>
                    <hr style="height:1px; border:none; color:#000; background-color:#000; width:100%;  margin: 0 0 0 auto;"/>
                    <br />
    
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="gname" HeaderText="gname" SortExpression="gname" />
            <asp:BoundField DataField="gimageurl" HeaderText="gimageurl" 
                SortExpression="gimageurl" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:WebSiteCARConnectionString %>" 
        DeleteCommand="DELETE FROM [gallery] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [gallery] ([gname], [gimageurl]) VALUES (@gname, @gimageurl)" 
        SelectCommand="SELECT * FROM [gallery]" 
        UpdateCommand="UPDATE [gallery] SET [gname] = @gname, [gimageurl] = @gimageurl WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="gname" Type="String" />
            <asp:Parameter Name="gimageurl" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="gname" Type="String" />
            <asp:Parameter Name="gimageurl" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>

