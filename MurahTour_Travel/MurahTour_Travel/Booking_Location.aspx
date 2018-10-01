<%@ Page Language="C#" MasterPageFile="~/TheMasterPage.master" AutoEventWireup="true" CodeFile="Booking_Location.aspx.cs" Inherits="Booking_Location" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td style="width: 386px">Hello
            <asp:Label ID="lblUsername" runat="server" Font-Bold="True" Font-Italic="True"></asp:Label>
            , please choose your desired travel destination:</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 386px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 386px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td colspan="3">
                                <table class="auto-style1">
                                    <tr>
                                        <td style="font-family: 'Arial Black';" colspan="2">
                                            Search for a Destination in:&nbsp;
                                            <asp:DropDownList ID="ddlState" runat="server" Font-Bold="True" 
                                                Font-Names="Arial Rounded MT Bold">
                                                <asp:ListItem>Johor</asp:ListItem>
                                                <asp:ListItem>Kedah</asp:ListItem>
                                                <asp:ListItem>Kelantan</asp:ListItem>
                                                <asp:ListItem>Kuala Lumpur</asp:ListItem>
                                                <asp:ListItem>Melaka</asp:ListItem>
                                                <asp:ListItem>Negeri Sembilan</asp:ListItem>
                                                <asp:ListItem>Pahang</asp:ListItem>
                                                <asp:ListItem>Perak</asp:ListItem>
                                                <asp:ListItem>Perlis</asp:ListItem>
                                                <asp:ListItem>Pulau Pinang</asp:ListItem>
                                                <asp:ListItem>Putrajaya</asp:ListItem>
                                                <asp:ListItem>Sabah</asp:ListItem>
                                                <asp:ListItem>Sarawak</asp:ListItem>
                                                <asp:ListItem>Selangor</asp:ListItem>
                                                <asp:ListItem>Terengganu</asp:ListItem>
                                            </asp:DropDownList>
                                            &nbsp;&nbsp;<asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" 
                                                Text="Search" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 403px; font-family: 'Arial Black';">
                                            &nbsp;</td>
                                        <td style="width: 597px">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                        <asp:Repeater ID="Repeater1" runat="server" onitemcommand="Repeater1_ItemCommand" >
                                        <ItemTemplate>
                                        <div>
                                        <table class="auto-style1">
                                                <tr>
                                                    <td rowspan="2" 
                                                        style="border-style: groove; border-width: medium; height: 23px; width: 403px; text-align: center;">
                                                        <asp:Image ID="imgDest01" runat="server" ImageUrl= '<%#Eval("LocImage")%>' style="text-align: center" />
                                                    </td>
                                                    <td style="border-style: groove; font-size: x-large; font-family: 'Arial Black'; width: 597px;">
                                                        <asp:Label ID="lblDest01Title" runat="server" Text='<%#Eval("LocTitle")%>'></asp:Label>
                                                        <asp:HiddenField ID="LocationID" runat="server" Value='<%# Eval("LocID") %>' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="border-style: groove; text-align: left; width: 597px;">
                                                        <strong>What you can do here:</strong><br />
                                                        <asp:Label ID="lblPlaceDetail1" runat="server" Text='<%#Eval("LocDetail")%>'></asp:Label>
                                                        <br />
                                                        <br />
                                                        <asp:LinkButton ID="lbtDest01" OnClick="lbtDest01_Click" CommandName = "click" CommandArgument='<%#Eval("LocID")%>' runat="server">Travel to this destination...</asp:LinkButton>
                                                    </td>
                                                </tr>
                                                </div>
                                                </ItemTemplate>
                                                
                                        </asp:Repeater>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td style="width: 189px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
    </tr>
    </table>
</asp:Content>
