<%@ Page Language="C#" MasterPageFile="~/TheMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {}
        .style1
        {
            width: 422px;
        }
    </style>
</head>
<body>
    <form id="form1">
        <table class="auto-style1">
            <tr>
                <td colspan="3" style="text-align: center"><strong style="color: #FF3399; font-size: xx-large">LOGIN INTO YOUR ACCOUNT</strong></td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td colspan="2" style="text-align: center">
                    <asp:Login ID="Login1" runat="server" BackColor="#FFFBD6" BorderColor="#FFDFAD" 
                        BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
                        CreateUserText="Does not have account ? Create a account.." 
                        CreateUserUrl="Register.aspx" Font-Names="Verdana" Font-Size="10pt" 
                        ForeColor="#333333" Height="207px" OnAuthenticate="Login1_Authenticate" 
                        PasswordRecoveryText="Forget Password ?" PasswordRecoveryUrl="Default4.aspx" 
                        TextLayout="TextOnTop" Width="468px" style="text-align: center">
                        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                        <LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="Medium" ForeColor="#990000" Height="50px" />
                        <TextBoxStyle Font-Size="0.8em" />
                        <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                    </asp:Login>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
</asp:Content>
