<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Reset Your Password "></asp:Label>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>
                    <asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" ChangePasswordButtonText="Reset Password" Font-Names="Verdana" Font-Size="0.8em" Height="248px" NewPasswordRegularExpression="^(?=.*\d)(?=.*[A-Z]).{8,20}$" OnChangedPassword="ChangePassword1_ChangedPassword" style="margin-bottom: 0px" Width="649px">
                        <CancelButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="2em" ForeColor="#990000" />
                        <ChangePasswordButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="2em" ForeColor="#990000" Width="250px" />
                        <ContinueButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
                        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                        <PasswordHintStyle Font-Italic="True" ForeColor="#888888" />
                        <TextBoxStyle Font-Size="2em" />
                        <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Names="Reset your password" Font-Size="2em" ForeColor="White" />
                    </asp:ChangePassword>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
