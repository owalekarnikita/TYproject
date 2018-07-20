<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div><div class="container">
	<h2 class="sub-head">Login</h2>
    <hr style="height:1px; border:none; color:#000; background-color:#000; width:100%;  margin: 0 0 0 auto;">
		<div class="sub-main">	
			<form action="#" method="post">
    <table class="nav-justified">
        <tr>
            <td style="width: 162px">
                &nbsp;</td>
            <td style="width: 122px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 162px">
                &nbsp;</td>
            <td style="width: 122px">
                EMAIL ID:-</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Width="451px" TextMode="Email"></asp:TextBox>

            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 162px">
                &nbsp;</td>
            <td style="width: 122px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 162px">
                &nbsp;</td>
            <td style="width: 122px">
                PASSWORD:-</td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="451px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 162px">
                &nbsp;</td>
            <td style="width: 122px">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblmessage" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 162px">
                &nbsp;</td>
            <td style="width: 122px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="LOGIN" 
                    Width="112px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="SIGN UP" Width="112px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 162px">
                &nbsp;</td>
            <td style="width: 122px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 162px; height: 22px;">
                </td>
            <td style="width: 122px; height: 22px;">
                </td>
            <td style="height: 22px">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/fpassword.aspx"> Forgot Password  ???</asp:HyperLink>
            </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
        </tr>
        <tr>
            <td style="width: 162px">
                &nbsp;</td>
            <td style="width: 122px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 162px">
                &nbsp;</td>
            <td style="width: 122px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
		</div>
		<div class="clear"></div>
</div>
</div>
</asp:Content>

