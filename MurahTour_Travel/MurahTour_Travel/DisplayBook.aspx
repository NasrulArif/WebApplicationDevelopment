<%@ Page Title="" Language="C#" MasterPageFile="~/TheMasterPage.master" AutoEventWireup="true" CodeFile="DisplayBook.aspx.cs" Inherits="DisplayBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td colspan="3" style="height: 21px">
            Thank you for using our service, here&#39;s is your booking detail:</td>
    </tr>
    <tr>
        <td style="height: 18px; width: 240px">
        </td>
        <td style="height: 18px; width: 40px">
        </td>
        <td style="height: 18px">
        </td>
    </tr>
    <tr>
        <td style="width: 240px; font-family: 'Arial Black';">
            Username</td>
        <td style="width: 40px; text-align: center">
            :</td>
        <td>
            <asp:Label ID="lblName" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 240px; font-family: 'Arial Black';">
            &nbsp;</td>
        <td style="width: 40px; text-align: center">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 240px; font-family: 'Arial Black';">
            Destination</td>
        <td style="width: 40px; text-align: center">
            :</td>
        <td>
            <asp:Label ID="lblDest" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 240px; font-family: 'Arial Black';">
            &nbsp;</td>
        <td style="width: 40px; text-align: center">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 240px; font-family: 'Arial Black';">
            Number of person</td>
        <td style="width: 40px; text-align: center">
            :</td>
        <td>
            <asp:Label ID="lblNPer" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 240px; font-family: 'Arial Black';">
            &nbsp;</td>
        <td style="width: 40px; text-align: center">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 240px; font-family: 'Arial Black';">
            Date of Arrival</td>
        <td style="width: 40px; text-align: center">
            :</td>
        <td>
            <asp:Label ID="lblDAr" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 240px; font-family: 'Arial Black';">
            &nbsp;</td>
        <td style="width: 40px; text-align: center">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 240px; font-family: 'Arial Black';">
            Date of Return</td>
        <td style="width: 40px; text-align: center">
            :</td>
        <td>
            <asp:Label ID="lblDRe" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 240px; font-family: 'Arial Black';">
            &nbsp;</td>
        <td style="width: 40px; text-align: center">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 240px; font-family: 'Arial Black';">
            Number of Nights</td>
        <td style="width: 40px; text-align: center">
            :</td>
        <td>
            <asp:Label ID="lblNight" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 240px; font-family: 'Arial Black';">
            &nbsp;</td>
        <td style="width: 40px; text-align: center">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 240px; font-family: 'Arial Black';">
            Type of Package</td>
        <td style="width: 40px; text-align: center">
            :</td>
        <td>
            <asp:Label ID="lblPack" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 240px; font-family: 'Arial Black';">
            &nbsp;</td>
        <td style="width: 40px; text-align: center">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 240px; font-family: 'Arial Black';">
            Type of Payment</td>
        <td style="width: 40px; text-align: center">
            :</td>
        <td>
            <asp:Label ID="lblPay" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 240px; font-family: 'Arial Black';">
            &nbsp;</td>
        <td style="width: 40px; text-align: center">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 240px; font-family: 'Arial Black';">
            Vehicle Rental Status</td>
        <td style="width: 40px; text-align: center">
            :</td>
        <td>
            <asp:Label ID="lblVRent" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 240px; font-family: 'Arial Black';">
            &nbsp;</td>
        <td style="width: 40px; text-align: center">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 240px; font-family: 'Arial Black';">
            &nbsp;</td>
        <td style="width: 40px; text-align: center">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 240px; font-family: 'Arial Black';">
            TOTAL PRICE</td>
        <td style="width: 40px; text-align: center">
            :</td>
        <td>
            <asp:Label ID="lblPrice" runat="server"></asp:Label>
        </td>
    </tr>
</table>
    <br />
<br />
</asp:Content>

