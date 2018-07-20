<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container"><p>
    </p> <h2>Feedback</h2>    <hr style="height:1px; border:none; color:#000; background-color:#000; width:100%;  margin: 0 0 0 auto;">

        <form action="#" method="post">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</form>
        <table class="nav-justified">
            <tr>
                <td>
                    &nbsp;</td>
                <td style="width: 114px">
                    &nbsp;</td>
                <td style="width: 206px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="width: 114px">
                    Name:</td>
                <td style="width: 206px">
                   <asp:Label ID="txtusername" runat="server" Height="30" Width="300"><%=Session["username"]%></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="width: 114px">
                    &nbsp;</td>
                <td style="width: 206px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="width: 114px">
                    contact:</td>
                <td style="width: 206px">
                    <asp:TextBox ID="txtmobileno" runat="server" TextBoxMode="Number" Height="29px" 
                        Width="300px" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" CssClass="requiredFieldValidateStyle"
                  ForeColor="Red"  ControlToValidate="txtmobileno" ErrorMessage="Please Enter 10 digit number"  
                    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="width: 114px">
                    &nbsp;</td>
                <td style="width: 206px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="width: 114px">
                    Email id:</td>
                <td style="width: 206px">
                    <asp:Label ID="txtemailid" runat="server" Height="30" Width="300" TextMode="Email"><%=Session["email"]%></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="width: 114px">
                    &nbsp;</td>
                <td style="width: 206px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="width: 114px">
                    feedback:</td>
                <td style="width: 206px">
                    <asp:TextBox ID="txtfeedback" runat="server" Height="30" Width="300" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="width: 114px">
                    &nbsp;</td>
                <td style="width: 206px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="width: 114px">
                    &nbsp;</td>
                <td style="width: 206px">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="SUBMIT" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="width: 114px">
                    &nbsp;</td>
                <td style="width: 206px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
</div>
</asp:Content>

