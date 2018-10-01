<%@ Page Language="C#" MasterPageFile="~/TheMasterPage.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style type="text/css">


        .auto-style1 {
            width: 100%;
        }
        .auto-style6 {
            height: 30px;
        }
        .style1
        {
            width: 117px;
        }
        .style2
        {
            height: 30px;
            width: 117px;
        }
        .style3
        {
            color: #333333;
        }
        </style>
</head>
<body>
    <form id="form1">
    <div>
    
        <table class="auto-style1">
        <tr>
            <td colspan="2" style="font-family: Arial, Helvetica, sans-serif; font-size: 50px; color: #00FFFF">Create the Account </td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td style="width: 499px">&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label1" runat="server" Text="Full Name :"></asp:Label>
            </td>
            <td style="width: 499px">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="* Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td style="width: 499px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label2" runat="server" Text="Username :"></asp:Label>
            </td>
            <td style="width: 499px">
                <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="* Required" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td style="width: 499px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label3" runat="server" Text="Email :"></asp:Label>
            </td>
            <td style="width: 499px">
                <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ErrorMessage="Must put Email account!" Font-Bold="True" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox3"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="* Required" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td style="width: 499px" class="style3">
                e.g: murah@mail.com</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td style="width: 499px" class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label4" runat="server" Text="Password :"></asp:Label>
            </td>
            <td style="width: 499px">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="198px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="* Required" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td style="width: 499px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label5" runat="server" Text="Re Enter Password :"></asp:Label>
            </td>
            <td style="width: 499px; height: 30px">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" Width="198px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox4" ControlToValidate="TextBox5" Display="Dynamic" 
                    ErrorMessage="Password is not same!" Font-Bold="True" ForeColor="#CC0000"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="* Required" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td style="width: 499px">&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td style="width: 499px">
                <asp:Button ID="Button1" runat="server" Height="37px" OnClick="Button1_Click" Text="Create Account" Width="110px" />
            </td>
        </tr>
    </table>
    
    </div>
    </form>
</body>
</html>
</asp:Content>
