<%@ Page Title="" Language="VB" MasterPageFile="~/ADMIN/Design.master" AutoEventWireup="false" CodeFile="Addscheme.aspx.vb" Inherits="ADMIN_Addscheme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <table class="nav-justified" border="1">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Schemes Details"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Scheme Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Plz Enter Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 20px">
                <asp:Label ID="Label3" runat="server" Text="Scheme Days"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Plz Enter Field"></asp:RequiredFieldValidator>
            </td>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Scheme Rate"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Plz Enter Field"></asp:RequiredFieldValidator>
            </td>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnsave" runat="server" Text="Save" />
                <asp:Button ID="btnview" runat="server" Text="View" />
                <asp:Button ID="btnreset" runat="server" Text="Reset" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" ForeColor="Black" GridLines="None">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="Scheme_id" HeaderText="Scheme_id" ReadOnly="True" />
                        <asp:BoundField DataField="Scheme_Name" HeaderText="Scheme_Name" 
                            ReadOnly="True" />
                        <asp:BoundField DataField="Scheme_Days" HeaderText="Scheme_Days" 
                            ReadOnly="True" />
                        <asp:BoundField DataField="Scheme_Rate" HeaderText="Scheme_Rate" 
                            ReadOnly="True" />
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

