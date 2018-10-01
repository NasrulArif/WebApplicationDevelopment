<%@ Page Language="C#" MasterPageFile="~/TheMasterPage.master" AutoEventWireup="true" CodeFile="Package.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<br />
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <table class="auto-style1">
            <tr>
                <td>
                    <head>
                    <title></title>
                    <style type="text/css">

        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 253px;
        }
    </style>
                    <link href="PAckage.css" rel="stylesheet" type="text/css" />
                    </head>
                    <body>
                    <form ID="form2">
                    <div>
                        <table class="style1">
                            <tr>
                                <td colspan="3" style="font-family: 'Arial Black'; font-size: x-large">
                                    Package</td>
                            </tr>
                            <tr>
                                <td colspan="3" style="font-family: 'Arial Black'; font-size: x-large">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    Destination</td>
                                <td class="style5">
                                    :</td>
                                <td>
                                    <asp:TextBox ID="Tdestination" runat="server" 
                                        ontextchanged="Tdestination_TextChanged" ReadOnly="True" 
                                        style="margin-left: 0px; text-align: left;" Width="287px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    &nbsp;</td>
                                <td class="style5">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    Number of people
                                </td>
                                <td class="style5">
                                    :</td>
                                <td>
                                    <asp:TextBox ID="Tpeople" runat="server" TextMode="Number" Width="81px">0</asp:TextBox>
                                    &nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="Tpeople" ErrorMessage="Please enter number of people." 
                                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    <asp:RangeValidator ID="rv1" runat="server" ControlToValidate="Tpeople" 
                                        ErrorMessage="Please enter value more than 0." ForeColor="#CC0000" 
                                        MaximumValue="50" MinimumValue="1"></asp:RangeValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    &nbsp;</td>
                                <td class="style5">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    Date Arrival
                                    <br />
                                    <asp:TextBox ID="tbda" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="rfvarr" runat="server" ControlToValidate="tbda" 
                                        ErrorMessage="RequiredFieldValidator" ForeColor="Red">Required</asp:RequiredFieldValidator>
                                </td>
                                <td class="style5">
                                    :</td>
                                <td>
                                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                                        BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                                        ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" 
                                        onselectionchanged="Calendar1_SelectionChanged" Width="350px">
                                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                                            VerticalAlign="Bottom" />
                                        <OtherMonthDayStyle ForeColor="#999999" />
                                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                                            Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                        <TodayDayStyle BackColor="#CCCCCC" />
                                    </asp:Calendar>
                                </td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    Date Return
                                    <br />
                                    <asp:TextBox ID="tdbr" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="rfvarr0" runat="server" 
                                        ControlToValidate="tdbr" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Required</asp:RequiredFieldValidator>
                                </td>
                                <td class="style5">
                                    :</td>
                                <td>
                                    <asp:Calendar ID="Calendar2" runat="server" BackColor="White" 
                                        BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                                        ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" 
                                        onselectionchanged="Calendar2_SelectionChanged" Width="350px">
                                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                                            VerticalAlign="Bottom" />
                                        <OtherMonthDayStyle ForeColor="#999999" />
                                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                                            Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                        <TodayDayStyle BackColor="#CCCCCC" />
                                    </asp:Calendar>
                                    <br />
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                        ControlToCompare="tdbr" ControlToValidate="tbda" 
                                        ErrorMessage="You cannot have arrival date greater than returning date." 
                                        ForeColor="#CC0000" Operator="LessThanEqual"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    &nbsp;</td>
                                <td class="style5">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style5" rowspan="3">
                                    Type Package&nbsp;
                                </td>
                                <td class="style5" rowspan="3">
                                    :</td>
                                <td class="style3">
                                    <asp:RadioButton ID="Radeco" runat="server" Checked="True" GroupName="Type" 
                                        oncheckedchanged="Radeco_CheckedChanged" Text="Economy" />
                                    &nbsp;(RM150/night)</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RadioButton ID="Radsta" runat="server" GroupName="Type" 
                                        oncheckedchanged="Radsta_CheckedChanged" Text="Standard" />
                                    &nbsp;(RM250/night)</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RadioButton ID="Radvip" runat="server" GroupName="Type" 
                                        oncheckedchanged="Radvip_CheckedChanged" Text="VIP" />
                                    &nbsp;(RM500/night)</td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    &nbsp;</td>
                                <td class="style5">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    Type of payment
                                </td>
                                <td class="style5">
                                    :</td>
                                <td>
                                    <asp:DropDownList ID="ddlPayment" runat="server" AutoPostBack="True" 
                                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                        <asp:ListItem>Debit Card</asp:ListItem>
                                        <asp:ListItem>Cash</asp:ListItem>
                                        <asp:ListItem>Credit Card</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    &nbsp;</td>
                                <td class="style5">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    Rent Vehicle
                                </td>
                                <td class="style5">
                                    :</td>
                                <td>
                                    <asp:RadioButton ID="radYes" runat="server" Checked="True" GroupName="Rent" 
                                        oncheckedchanged="Yes_CheckedChanged" Text="Yes " />
                                    <asp:RadioButton ID="radNo" runat="server" GroupName="Rent" 
                                        oncheckedchanged="No_CheckedChanged" Text="No" />
                                    &nbsp; (+RM80/night)</td>
                            </tr>
                            <tr>
                                <td class="style5" colspan="3">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    &nbsp;</td>
                                <td class="style5">
                                    &nbsp;</td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Font-Size="15pt" 
                                        onclick="Button1_Click" Text="Next" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    &nbsp;</td>
                                <td class="style5">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    &nbsp;</td>
                                <td class="style5">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    </form>
                    </body>
                </td>
            </tr>
        </table>
    </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>
