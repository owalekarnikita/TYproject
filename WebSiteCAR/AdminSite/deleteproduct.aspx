<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite/MasterPage2.master" AutoEventWireup="true" CodeFile="deleteproduct.aspx.cs" Inherits="AdminSite_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
                    <h2>Edit Products</h2>
                    <hr style="height:1px; border:none; color:#000; background-color:#000; width:100%;  margin: 0 0 0 auto;"/>
                    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="pid" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="pid" HeaderText="pid" InsertVisible="False" 
                ReadOnly="True" SortExpression="pid" />
            <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
            <asp:BoundField DataField="pimage" HeaderText="pimage" 
                SortExpression="pimage" />
            <asp:BoundField DataField="pprice" HeaderText="pprice" 
                SortExpression="pprice" />
            <asp:BoundField DataField="pdesc" HeaderText="pdesc" SortExpression="pdesc" />
            <asp:BoundField DataField="cid" HeaderText="cid" SortExpression="cid" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:WebSiteCARConnectionString %>" 
        DeleteCommand="DELETE FROM [products] WHERE [pid] = @pid" 
        InsertCommand="INSERT INTO [products] ([pname], [pimage], [pprice], [pdesc], [cid]) VALUES (@pname, @pimage, @pprice, @pdesc, @cid)" 
        SelectCommand="SELECT [pid], [pname], [pimage], [pprice], [pdesc], [cid] FROM [products]" 
        UpdateCommand="UPDATE [products] SET [pname] = @pname, [pimage] = @pimage, [pprice] = @pprice, [pdesc] = @pdesc, [cid] = @cid WHERE [pid] = @pid">
        <DeleteParameters>
            <asp:Parameter Name="pid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="pname" Type="String" />
            <asp:Parameter Name="pimage" Type="String" />
            <asp:Parameter Name="pprice" Type="String" />
            <asp:Parameter Name="pdesc" Type="String" />
            <asp:Parameter Name="cid" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="pname" Type="String" />
            <asp:Parameter Name="pimage" Type="String" />
            <asp:Parameter Name="pprice" Type="String" />
            <asp:Parameter Name="pdesc" Type="String" />
            <asp:Parameter Name="cid" Type="Int32" />
            <asp:Parameter Name="pid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
    <br />
</asp:Content>

