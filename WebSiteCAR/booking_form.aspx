<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="booking_form.aspx.cs" Inherits="Default2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
   

<div class="container">
   <h3 class="sub-head">Booking Details</h3>
    <hr style="height:1px; border:none; color:#000; background-color:#000; width:100%;  margin: 0 0 0 auto;"/>
	
    <table style="width: 100%">
        <tr>
            <td style="width: 143px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 173px">
                &nbsp;</td>
            <td style="width: 200px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 147px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 143px">
               
                &nbsp;</td>
            <td class="modal-sm" style="width: 173px">
                Pick-up Date:</td>
            <td style="width: 200px">    
                <asp:TextBox ID="pdate" runat="server" TextMode="Date"></asp:TextBox> 
                 <asp:RequiredFieldValidator runat="server" id="reqName1" controltovalidate="pdate" errormessage="Please enter pick-up date!" />
            </td>
            <td class="modal-sm" style="width: 147px">
                &nbsp;Pick-up time:</td>
            <td>
                <asp:TextBox ID="ptime" runat="server" TextMode="Time"></asp:TextBox>

                <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="ptime" errormessage="Please enter pick-up time!" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 143px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 173px">
               <!-- <asp:Button ID="txtcal" runat="server" Text="Cal" />-->
            </td>
            <td style="width: 200px">
               <!-- <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>-->
            </td>
            <td class="modal-sm" style="width: 147px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 143px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 173px">
                Drop-off Date:</td>
            <td style="width: 200px">
                    <asp:TextBox ID="ddate" runat="server" TextMode="Date"></asp:TextBox>  
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" controltovalidate="ddate" errormessage="Please enter drop-up date!" />
            </td>
            <td class="modal-sm" style="width: 147px; text-align: left;">
                Drop-off Time: </td>
            <td>
                <asp:TextBox ID="dtime" runat="server" TextMode="Time"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" controltovalidate="dtime" errormessage="Please enter drop-up time !" />
               </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 143px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 173px">
                &nbsp;</td>
            <td style="width: 200px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 147px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 143px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 173px">
                Pick-up Location:</td>
            <td style="width: 200px">
                <asp:DropDownList ID="ploc" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Mumbai</asp:ListItem>
                    <asp:ListItem>Pune</asp:ListItem>
                    <asp:ListItem>Kolkata</asp:ListItem>
                    <asp:ListItem>Bengaluru</asp:ListItem>
                    <asp:ListItem>Jaipur</asp:ListItem>
                    <asp:ListItem>Chennai</asp:ListItem>
                    <asp:ListItem>Hyderabad</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" controltovalidate="ploc" errormessage="Please enter pick-up location !" />
            </td>
            <td class="modal-sm" style="width: 147px">
                Drop-off Location:</td>
            <td>
                <asp:DropDownList ID="dloc" runat="server">
                 <asp:ListItem></asp:ListItem>
                 <asp:ListItem>Mumbai</asp:ListItem>
                    <asp:ListItem>Pune</asp:ListItem>
                    <asp:ListItem>Kolkata</asp:ListItem>
                    <asp:ListItem>Bengaluru</asp:ListItem>
                    <asp:ListItem>Jaipur</asp:ListItem>
                    <asp:ListItem>Chennai</asp:ListItem>
                    <asp:ListItem>Hyderabad</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                </asp:DropDownList>
               <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator4" controltovalidate="dloc" errormessage="Please enter drop-off location!" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 143px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 173px">
                &nbsp;</td>
            <td style="width: 200px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 147px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 143px; height: 24px;">
                </td>
            <td class="modal-sm" style="width: 173px; height: 24px;">
                No. of Passangers:</td>
            <td style="width: 200px; height: 24px;">
                <asp:DropDownList ID="nop" runat="server">
                     <asp:ListItem></asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator5" controltovalidate="nop" errormessage="Please enter No. of passengers !" />
            </td>
            <td class="modal-sm" style="width: 147px; height: 24px;">&nbsp;Direction:<td style="height: 24px">
                <asp:DropDownList ID="dir" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Only one Way</asp:ListItem>
                    <asp:ListItem>Return</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator6" controltovalidate="dir" errormessage="Please enter Direction!" />
            </td>
            <td style="height: 24px">
                </td>
        </tr>
        <tr>
            <td style="width: 143px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 173px">
                &nbsp;</td>
            <td style="width: 200px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 147px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 143px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 173px">
                Additional accessories:</td>
            <td style="width: 200px">
                <asp:DropDownList ID="acc" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Baby Seat</asp:ListItem>
                    <asp:ListItem>Travelling kit</asp:ListItem>
                    <asp:ListItem>Both</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator7" controltovalidate="acc" errormessage="Please enter accesories!" />
            </td>
            <td class="modal-sm" style="width: 147px">
               
         
            <td>
                     <asp:CompareValidator ID="CompareValidator1" runat="server"
            ControlToCompare="pdate" ControlToValidate="ddate"
            ErrorMessage="Drop-off date must be greater than Pick-up date" Operator="GreaterThan" Type="Date" SetFocusOnError="True" Display="Dynamic" BorderStyle="Double"></asp:CompareValidator>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 143px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 173px">
                &nbsp;</td>
            <td style="width: 200px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 147px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
	
    </div>
    <div class="container">
        <table style="width: 100%">
            <tr>
                <td style="width: 144px">
                    &nbsp;</td>
                <td class="modal-sm" style="width: 342px">
                    <asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" />
                </td>
                <td style="width: 251px">
                   <button type="reset" onclick="this.form.reset();return false">Reset</button>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 144px">
                    &nbsp;</td>
                <td class="modal-sm" style="width: 342px">
                    &nbsp;</td>
                <td style="width: 251px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 144px">
                    &nbsp;</td>
                <td class="modal-sm" style="width: 342px">
                    &nbsp;</td>
                <td style="width: 251px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 144px">
                    &nbsp;</td>
                <td class="modal-sm" style="width: 342px">
                    &nbsp;</td>
                <td style="width: 251px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
	
    </div>
    </div>
    </div>
</div>
    </div>
</asp:Content>

