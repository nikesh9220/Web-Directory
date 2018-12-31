<%@ Page Title="" Language="VB" MasterPageFile="~/ADMIN/Design.master" AutoEventWireup="false" CodeFile="Addbusiness.aspx.vb" Inherits="ADMIN_Addbusiness" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <table class="nav-justified" border="2">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label7" runat="server" Text="Business Details"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label>
                :</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                SubCategory:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" style="height: 22px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                :</td>
            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Area:</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Height="29px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Pincode"></asp:Label>
                :</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Contact_No:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Email_id:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnsave" runat="server" Text="Save" Width="69px" />
 
                &nbsp;
                <asp:Button ID="btnview" runat="server" style="text-align: center" Text="View" 
                    Width="63px" />
                &nbsp;
                <asp:Button ID="btnreset" runat="server" Text="Reset" />
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 62px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    AllowPaging="True" PageIndex="3" PageSize="5" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" ForeColor="Black" GridLines="None">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="Business_id" HeaderText="bid" />
                        <asp:BoundField DataField="Title" HeaderText="Name" />
                        <asp:BoundField DataField="Sub_id" HeaderText="Sub Category" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />
                        <asp:BoundField DataField="Area_id" HeaderText="Area" />
                        <asp:BoundField DataField="Pincode" HeaderText="Pincode" />
                        <asp:BoundField DataField="Contact_No" HeaderText="Contact No" />
                        <asp:BoundField DataField="Email_id" HeaderText="Email" />
                        <asp:CommandField />
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

