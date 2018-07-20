<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
   <h2 class="sub-head">Category</h2>
    <hr style="height:1px; border:0; color:#000; background-color:#000; width:100%;  margin: 0 0 0 auto;">
	    <br />	
    <asp:DataList ID="DataList1" runat="server" DataKeyField="cid" 
        DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" border="2" RepeatColumns="2">
        <ItemTemplate>
            
            <asp:Label ID="cidLabel" runat="server" Text='<%# Eval("cid") %>' visible="false"/>
            <br />
            <h3><b>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="cnameLabel" runat="server" Text='<%# Eval("cname") %>' /></b></h3>
            
          
            <a href ="<%#String.Format("categoryproduct.aspx?cid={0}",Eval("cid")) %>">
            <asp:Image ID="cimageurlLabel" runat="server"  Height="300" Width="500" padding="50px"
             ImageURL='<%# Eval("cimageurl") %>' PostBackUrl='<%#Eval("cid", "Products.aspx?cid={0}") %>' />
              
             <br />
            </a>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:WebSiteCARConnectionString %>" 
        SelectCommand="SELECT * FROM [add_category1]"></asp:SqlDataSource>
</div></asp:Content>

