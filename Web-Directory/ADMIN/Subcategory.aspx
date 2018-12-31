<%@ Page Title="" Language="VB" MasterPageFile="~/ADMIN/Design.master" AutoEventWireup="false" CodeFile="Subcategory.aspx.vb" Inherits="ADMIN_Subcategory" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <table border="1" class="nav-justified">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Subcategory Details"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 23px">
                <asp:Label ID="Label2" runat="server" Text="Category Name"></asp:Label>
            </td>
            <td style="height: 23px">
                <asp:DropDownList ID="drpsub" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="drpsub" ErrorMessage="Plz Enter field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="SubCategory Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtnm" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtnm" ErrorMessage="Plz Enter field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnsave" runat="server" Text="Save" />
&nbsp;&nbsp;
                <asp:Button ID="btnview" runat="server" style="text-align: center" 
                    Text="View" />
            &nbsp;
                <asp:Button ID="btnreset" runat="server" Text="Reset" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="grdsub" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                    BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" 
                    PageSize="4" Width="417px">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="SubCategory_id" HeaderText="Subcat_id" />
                        <asp:BoundField DataField="Category_id" HeaderText="Cat_id" />
                        <asp:BoundField DataField="SubCategory_Name" HeaderText="Subcat_Name" />
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

