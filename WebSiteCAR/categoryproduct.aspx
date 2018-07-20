<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="categoryproduct.aspx.cs" Inherits="AdminSite_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
<h2 class="sub-head">category products</h2>
    <hr style="height:1px; border:none; color:#000; background-color:#000; width:100%;  margin: 0 0 0 auto;"/>
	
    
    <asp:DataList ID="DataList1" runat="server" DataKeyField="pid" 
        DataSourceID="SqlDataSource1" Width="340px" RepeatColumns="2" 
        RepeatDirection="Horizontal">
        <ItemTemplate>
           <br />
            
           <h3> <b><asp:Label ID="pnameLabel" runat="server" Text='<%# Eval("pname") %>' /></b></h3>
           
            
            <asp:Image ID="pimageLabel" runat="server" ImageUrl='<%# Eval("pimage") %>' Height="250" Width="500"/>
            <br />
            <h4> <b> price:
            <asp:Label ID="ppriceLabel" runat="server" Text='<%# Eval("pprice") %>'  /></b></h4>
            <h4> <b>Fuel type:
            <asp:Label ID="pdescLabel" runat="server" Text='<%# Eval("pdesc") %>' /></b></h4>
         
          <h4><b> No.of Seatres:
            <asp:Label ID="pdesc1Label" runat="server" Text='<%# Eval("pdesc1") %>' /></b></h4>

            <h4><b> Gear Type:
            <asp:Label ID="pdesc2Label" runat="server" Text='<%# Eval("pdesc2") %>' /></b></h4>
            <br />
         
            
              <a href="<%# String.Format("AddtoCart.aspx?pid={0} ",Eval("pid"))%>"> Book A Ride</a>
<br />
        </ItemTemplate>
    </asp:DataList>	
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:WebSiteCARConnectionString %>" 
        SelectCommand="SELECT * FROM [products] WHERE ([cid] = @cid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="cid" QueryStringField="cid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>














</div>
 <br /><br /><br /><br /><br /><br />   
</asp:Content>

