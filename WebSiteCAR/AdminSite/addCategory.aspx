<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite/MasterPage2.master" AutoEventWireup="true" CodeFile="addCategory.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
                    <h2> Add New Category</h2>
                    <hr style="height:1px; border:none; color:#000; background-color:#000; width:100%;  margin: 0 0 0 auto;"/>
                    <br />
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        height: 30px;
    }
        .style3
        {
            height: 26px;
        }
    </style>


    <table class="style1">
    <tr>
        <td>
            category id:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2"  ForeColor="Red" controltovalidate="TextBox1" errormessage="Please enter Category ID !" />
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            category name :-</td>
        <td class="style3">
            <asp:TextBox ID="txtCname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1"  ForeColor="Red" controltovalidate="txtCname" errormessage="Please enter Category Name !" />
        </td>
        <td class="style3">
            </td>
        <td class="style3">
            </td>
        <td class="style3">
            </td>
    </tr>
    <tr>
        <td class="style2">
            category image:-</td>
        <td class="style2">
            <asp:FileUpload ID="catimage" runat="server" />
            <!-- <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3"  ForeColor="Red" controltovalidate="catimage" errormessage="Please enter Category Image !" /> -->
            <br />
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="ADD" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="EDIT" />
        </td>
        <td class="style2">
            </td>
        <td class="style2">
            </td>
        <td class="style2">
            </td>
    </tr>
    <tr>
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
        <td>
            &nbsp;</td>
        <td>
            <asp:Label ID="lblStatus" runat="server" EnableTheming="True"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table></div>
</asp:Content>

