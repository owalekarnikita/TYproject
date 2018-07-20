<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite/MasterPage2.master" AutoEventWireup="true" CodeFile="deletecategory.aspx.cs" Inherits="AdminSite_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
                    <h2> Edit Category</h2>
                    <hr style="height:1px; border:none; color:#000; background-color:#000; width:100%;  margin: 0 0 0 auto;"/>
                    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="cid" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="cid" HeaderText="cid" InsertVisible="False" 
                ReadOnly="True" SortExpression="cid" />
            <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
            <asp:BoundField DataField="cimageurl" HeaderText="cimageurl" 
                SortExpression="cimageurl" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:WebSiteCARConnectionString %>" 
        DeleteCommand="DELETE FROM [add_category1] WHERE [cid] = @cid" 
        InsertCommand="INSERT INTO [add_category1] ([cname], [cimageurl]) VALUES (@cname, @cimageurl)" 
        SelectCommand="SELECT [cid], [cname], [cimageurl] FROM [add_category1]" 
        UpdateCommand="UPDATE [add_category1] SET [cname] = @cname, [cimageurl] = @cimageurl WHERE [cid] = @cid">
        <DeleteParameters>
            <asp:Parameter Name="cid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="cname" Type="String" />
            <asp:Parameter Name="cimageurl" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="cname" Type="String" />
            <asp:Parameter Name="cimageurl" Type="String" />
            <asp:Parameter Name="cid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    </div>
</asp:Content>

