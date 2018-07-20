<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite/MasterPage2.master" AutoEventWireup="true" CodeFile="addProduct.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container"> 
    <h2>Add New Product</h2>
                    <hr style="height:1px; border:none; color:#000; background-color:#000; width:100%;  margin: 0 0 0 auto;"/>
                    <br />
    
    <table class="style1">


    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 197px;
        }
        .style3
        {
            width: 197px;
            height: 26px;
        }
        .style4
        {
            height: 26px;
        }
    .style5
    {
        width: 197px;
        height: 24px;
    }
    .style6
    {
        height: 24px;
    }
    </style>




        <tr>
            <td class="style2">
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
            <td class="style2">
                Car Name</td>
            <td>
                <asp:TextBox ID="txtPname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2"  ForeColor="Red" controltovalidate="txtPname" errormessage="Please enter Car Name !" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Car Image</td>
            <td>
                <asp:FileUpload ID="pimage" runat="server" />
                <!--<asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1"  ForeColor="Red" controltovalidate="pimage" errormessage="Please enter Image Path !" />
            --></td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Car price</td>
            <td class="style4">
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3"  ForeColor="Red" controltovalidate="txtPrice" errormessage="Please enter Rent Price of a car per day !" />
            </td>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style5">
                Fuel Type</td>
            <td class="style6">
                <asp:TextBox ID="txtdesc" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator4"  ForeColor="Red" controltovalidate="txtdesc" errormessage="Please enter Fuel Type !" />
            </td>
            <td class="style6">
                </td>
            <td class="style6">
                </td>
            <td class="style6">
                </td>
        </tr>
        <tr>
            <td class="style5">
                Gear type</td>
            <td class="style6">
                <asp:TextBox ID="txtdesc1" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator5"  ForeColor="Red" controltovalidate="txtdesc1" errormessage="Please enter Gear Type !" />
            </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                No of Seats</td>
            <td class="style6">
                <asp:TextBox ID="txtdesc2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator6"  ForeColor="Red" controltovalidate="txtdesc2" errormessage="Please enter No. of Seats in that car !" />
            </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                category id</td>
            <td class="style4">
                <asp:DropDownList ID="ddlcid" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="cname" DataValueField="cid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:WebSiteCARConnectionString %>" 
                    SelectCommand="SELECT [cid], [cname] FROM [add_category1]">
                </asp:SqlDataSource>
            </td>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style2">
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
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="ADD" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Edit" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblStatus" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</div></asp:Content>

