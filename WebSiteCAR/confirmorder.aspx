<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="confirmorder.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
<h2 class="sub-head">Confirm order</h2>
    <hr style="height:1px; border:none; color:#000; background-color:#000; width:100%;  margin: 0 0 0 auto;"/>
		
        <p>
    
            <asp:Label ID="lbl" runat="server"></asp:Label>
        
        
    </p>
    <p>
        Please check your mail for details &nbsp; .
        </p>
    <p>
        <asp:Label ID="glbl" runat="server" Text="Label"></asp:Label>
        </p>
    <p>
      <a href="category.aspx">  Continue </a>
       
        </p>


</div>
</asp:Content>

