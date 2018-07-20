<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PrintOrder.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <%= Session["username"]%>  Your Order Details are as follows: 
        
    <asp:GridView ID="grdCart" runat="server">
    </asp:GridView>

        Total :   <%=Session["Total"] %>


</asp:Content>

