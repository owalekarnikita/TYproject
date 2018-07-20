<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    <h2 class="sub-head">Gallery</h2>
    <hr style="height:1px; border:none; color:#000; background-color:#000; width:100%;  margin: 0 0 0 auto;">	
    <asp:DataList ID="DataList1" runat="server" 
            DataSourceID="SqlDataSource1" RepeatColumns="3" 
            onselectedindexchanged="DataList1_SelectedIndexChanged">
        <ItemTemplate>
            
            <asp:Label ID="gnameLabel" runat="server" Text='<%# Eval("gname") %>' />
            <br />
            
            <asp:Image ID="gimageurlLabel" runat="server" ImageUrl='<%# Eval("gimageurl") %>' Height="200" Width="300" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:WebSiteCARConnectionString %>" 
        SelectCommand="SELECT [gname], [gimageurl] FROM [gallery]">
    </asp:SqlDataSource>
    </div>
</asp:Content>

