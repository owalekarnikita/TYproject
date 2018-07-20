<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
<div class="container">
	<h2 class="sub-head">Sign Up</h2>
    <hr style="height:1px; border:none; color:#000; background-color:#000; width:100%;  margin: 0 0 0 auto;">
		<div class="sub-main">	
			<form action="#" method="post">
    <table class="nav-justified">
        <tr>
            <td style="width: 162px">
                &nbsp;</td>
            <td style="width: 153px">
                &nbsp;</td>
            <td>
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
            <td style="height: 22px; width: 162px;">
                </td>
            <td style="width: 153px; height: 22px;">
                Name:-</td>
            <td style="height: 22px">
                <asp:TextBox ID="username" runat="server"  
                    Width="451px"></asp:TextBox>
               
                <asp:RegularExpressionValidator ID="regName" runat="server" 
                    ControlToValidate="username" CssClass="requiredFieldValidateStyle"
                    ForeColor="Red"
                    ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                    Text="Enter a valid name" />
            </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
        </tr>
        <tr>
            <td style="height: 22px; width: 162px;">
                </td>
            <td style="width: 153px; height: 22px;">
                </td>
            <td style="height: 22px">
            </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
        </tr>
        <tr>
            <td style="height: 23px; width: 162px;">
                </td>
            <td style="width: 153px; height: 23px;">
                Email id:-</td>
            <td style="height: 23px">
                <asp:TextBox ID="email" Width="451px" runat="server"></asp:TextBox>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator5"
              runat="server" ErrorMessage="Please Enter Valid Email ID"
                  ValidationGroup="vgSubmit" ControlToValidate="email"
                  CssClass="requiredFieldValidateStyle"
                  ForeColor="Red"
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                  </asp:RegularExpressionValidator>

            </td>
            <td style="height: 23px">
                </td>
            <td style="height: 23px">
                </td>
            <td style="height: 23px">
                </td>
            <td style="height: 23px">
                </td>
        </tr>
        <tr>
            <td style="height: 22px; width: 162px;">
                </td>
            <td style="width: 153px; height: 22px;">
                </td>
            <td style="height: 22px">
            </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
        </tr>
        <tr>
            <td style="height: 22px; width: 162px;">
                </td>
            <td style="width: 153px; height: 22px;">
                Mobile no:-</td>
            <td style="height: 22px">
                <asp:TextBox ID="mobile" Width="451px" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" CssClass="requiredFieldValidateStyle"
                  ForeColor="Red"  ControlToValidate="mobile" ErrorMessage="Please Enter 10 digit number"  
                    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
        </tr>
        <tr>
            <td style="height: 22px; width: 162px;">
                </td>
            <td style="width: 153px; height: 22px;">
                </td>
            <td style="height: 22px">
            </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
        </tr>
        <tr>
            <td style="height: 22px; width: 162px;">
                </td>
            <td style="width: 153px; height: 22px;">
                Password:-</td>
            <td style="height: 22px">
                <asp:TextBox ID="pwd" Width="451px" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat=server display=dynamic
                    ControlToValidate="pwd" CssClass="requiredFieldValidateStyle" ForeColor="Red"
                    ErrorMessage="Password must contain one of @#$%^&*/."
                    ValidationExpression=".*[@#$%^&*/].*" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat=server display=dynamic
                    ControlToValidate="pwd" CssClass="requiredFieldValidateStyle" ForeColor="Red"
                    ErrorMessage="Password must be 4-12 nonblank characters." 
                    ValidationExpression="[^\s]{4,12}" />

            </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
        </tr>
        <tr>
            <td style="height: 22px; width: 162px;">
                </td>
            <td style="width: 153px; height: 22px;">
                </td>
            <td style="height: 22px">
            </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
        </tr>
        <tr>
            <td style="height: 22px; width: 162px;">
                </td>
            <td style="width: 153px; height: 22px;">
                Confirm Password:-</td>
            <td style="height: 22px">
                <asp:TextBox ID="pwd1" Width="451px" runat="server"></asp:TextBox>
                 <asp:CompareValidator ID="CompareValidator1" runat="server"
                    controltovalidate="pwd1"
                    controltocompare="pwd"
                     Forecolor="Red" CssClass="requiredFieldValidateStyle"
                    errormessage="Passwords do not match." />
            </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
        </tr>
        <tr>
            <td style="height: 22px; width: 162px;">
                </td>
            <td style="width: 153px; height: 22px;">
                </td>
            <td style="height: 22px">
            </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
        </tr>
        <tr>
            <td style="height: 43px; width: 162px;">
                </td>
            <td style="width: 153px; height: 43px;">
                <asp:Label ID="lbl" runat="server"></asp:Label>
                </td>
            <td style="height: 43px">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Sign up" 
                    Width="112px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Login" 
                    PostBackUrl="~/login.aspx" Width="112px" />
            &nbsp;&nbsp;
                </td>
            <td style="height: 43px">
                </td>
            <td style="height: 43px">
                </td>
            <td style="height: 43px">
                </td>
            <td style="height: 43px">
                </td>
        </tr>
    </table>
    </form>
		</div>
		<div class="clear"></div>
</div>
    </div>





</asp:Content>

