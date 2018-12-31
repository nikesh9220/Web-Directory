<%@ Page Language="VB" MasterPageFile="~/USER/Design.master"  AutoEventWireup="false" CodeFile="Payment.aspx.vb" Inherits="Account_Payment" title="Untitled Page" EnableEventValidation="false" %>


    

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style8" colspan="2">
                Payment Details</td>
        </tr>
        <tr>
            <td class="style2">
                User Name:</td>
            <td class="style7">
                <asp:Label ID="lbluname" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Address:</td>
            <td class="style7">
                <asp:Label ID="lbladd" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                City Name:</td>
            <td class="style7">
                <asp:Label ID="lblcity" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Pincode:</td>
            <td class="style7">
                <asp:Label ID="lblpincode" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Advertisement</td>
            <td class="style7">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Credit Card Type:</td>
                                                                                <td class="style7">
                                                                                    <asp:DropDownList ID="drpcct" runat="server">
                                                                                        <asp:ListItem>Visa Card</asp:ListItem>
                                                                                        <asp:ListItem>visa extress</asp:ListItem>
                                                                                    </asp:DropDownList>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="style2">
                                                                                    Credit Card No:</td>
            <td class="style7">
                <asp:TextBox ID="txtccn" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Date:</td>
            <td class="style6">
                <asp:DropDownList ID="drpdate" runat="server">
                </asp:DropDownList>
                <asp:DropDownList ID="drpmonth" runat="server">
                </asp:DropDownList>
                <asp:DropDownList ID="drpyear" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Security Code:</td>
            <td class="style7">
                <asp:TextBox ID="txtsecode" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Amount:</td>
              <td class="style7">
                                     <asp:Label ID="lblamount" runat="server"  Text="Label"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="style2">
                                                                                    Card Holder Name</td>                                
            <td class="style7">
                <asp:TextBox ID="txtphno" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8" colspan="2">
                <asp:Button ID="btnpayment" runat="server" Font-Size="12pt" Text="Payment" />
            </td>
        </tr>
    </table>
</asp:Content>

