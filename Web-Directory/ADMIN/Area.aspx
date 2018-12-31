<%@ Page Title="" Language="VB" MasterPageFile="~/ADMIN/Design.master" AutoEventWireup="false" CodeFile="Area.aspx.vb" Inherits="ADMIN_Area" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <table class="nav-justified" border="1" width="100px">
        <tr>
            <td colspan="2">
                <center><asp:Label ID="Label1" runat="server" Text="Area Details"></asp:Label></center>
            </td>
        </tr>
        <tr>
            <td>
                <center><asp:Label ID="Label2" runat="server" Text="Area Name" align="center"></asp:Label></center>
            </td>
            <td align="center">
               <asp:TextBox ID="txtnm" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtnm" ErrorMessage="Plz Enter Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
               <center> <asp:Button ID="btnsave" runat="server" Text="Save" />
                &nbsp;&nbsp;
                <asp:Button ID="btnview" runat="server" Text="View" />
                &nbsp;&nbsp;
                <asp:Button ID="btnreset" runat="server" Text="Reset" /></center>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <table border="2" class="style1">
                    <tr>
                        <td class="style2" colspan="2">
                            <asp:GridView ID="grdarea" runat="server" AutoGenerateColumns="False" 
                                BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                                CellPadding="2" ForeColor="Black" GridLines="None" Width="304px">
                                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                <Columns>
                                    <asp:BoundField DataField="Area_id" HeaderText="Area Id" ReadOnly="True" />
                                    <asp:BoundField DataField="Area_Name" HeaderText="Area Name" />
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
            </td>
        </tr>
    </table>
    </form>
</asp:Content>

