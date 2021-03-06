﻿<%@ Page Title="" Language="VB" MasterPageFile="~/ADMIN/Design.master" AutoEventWireup="false" CodeFile="Category.aspx.vb" Inherits="ADMIN_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <table class="nav-justified" border="1">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Category Details"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Category Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtnm" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtnm" ErrorMessage="Plz Enter Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 28px; text-align: center">
                <asp:Button ID="btnsave" runat="server" Text="Save" />
&nbsp;&nbsp;
                <asp:Button ID="btnview" runat="server" Text="View" />
&nbsp;&nbsp;
                <asp:Button ID="btnreset" runat="server" Text="Reset" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="grdcat" runat="server" AutoGenerateColumns="False" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" ForeColor="Black" GridLines="None" AllowPaging="True" 
                    PageSize="4">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="Category_id" HeaderText="Cat_id" 
                            ReadOnly="True" />
                        <asp:BoundField DataField="Category_Name" HeaderText="Cat_Name" />
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
            </td>
        </tr>
    </table>
    </form>
</asp:Content>

