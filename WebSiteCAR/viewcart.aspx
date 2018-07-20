<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewcart.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
 <h3 class="sub-head">View Cart Details</h3>
    <hr style="height:1px; border:none; color:#000; background-color:#000; width:100%;  margin: 0 0 0 auto;"/>
	
<h2><b>Dear <% =Session["username"]  %></b></h2>
   <br>   Your order is as follows :
   <br><br>
     <asp:GridView ID="grdCart" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" OnRowCancelingEdit="grdCart_RowCancelingEdit" OnRowDeleting="grdCart_RowDeleting" OnRowEditing="grdCart_RowEditing" OnRowUpdating="grdCart_RowUpdating">
    <Columns>


        <asp:TemplateField>
            <ItemTemplate>
                  <%--<asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("ImageUrl","thumb_{0}")%>'/>--%>
                  <img id="Img1" runat="server" src='<%#Eval("ImageUrl")%>' style="width:50px;height:50px"/>
            </ItemTemplate>
        </asp:TemplateField>
        <%--<asp:BoundField DataField="ImageUrl" HeaderText="ImageUrl" ReadOnly="True" />--%>
        <asp:BoundField DataField="ProductName" HeaderText="Product" ReadOnly="True" />
        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
        <asp:BoundField DataField="Price" DataFormatString="{0:c}" HeaderText="Price" ReadOnly="True" />
        <asp:BoundField DataField="SubTotal" DataFormatString="{0:c}" HeaderText="Total"
            ReadOnly="True" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />

    </Columns>
        <EmptyDataTemplate>
        Your Shopping Cart is empty, add items  <br/><br />
        <a href="category.aspx">Continue Shopping </a>
    </EmptyDataTemplate>
    
    </asp:GridView>
    
    <asp:Label ID="TotalLabel" runat="server"> </asp:Label>
    <br />
    <asp:Label ID="lbl" runat="server" Text="Label"></asp:Label>


    <asp:Label ID="lblday" runat="server"></asp:Label>

        <br />
    <asp:Label ID="glbl" runat="server" Text="Label"></asp:Label>
    <br />


        <asp:Button ID="Btnorder" runat="server" Text="Place Order" onclick="Btnorder_Click" />
       
       </div>

</asp:Content>

