<%@ Page Title="" Language="VB" MasterPageFile="~/USER/Design.master" AutoEventWireup="false" CodeFile="Forget.aspx.vb" Inherits="USER_Forget" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container ">
        	<div class="row">
            	<div class="col-sm-12">
                 <div class="contact-heading container">
                    	<h1>Forgot Password</h1>
                     </div><div id="contact-section">
                        <div class="contact-form">
                          <div class="col-sm-12">

                      <div class="form-group nopadding-right ">
                            <div class="col-sm-8">
                            <asp:TextBox ID="txtuname" runat="server" CssClass="form-control" placeholder="User Name"></asp:TextBox></div> 
                            <div class="col-sm-4"><asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="plz fill" ControlToValidate ="txtuname"></asp:RequiredFieldValidator></div>     
                            <div class="col-sm-8">
                            <asp:DropDownList ID="drpswcque" runat="server" CssClass="form-control"></asp:DropDownList></div>    
                            <div class="col-sm-4"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="plz fill" ControlToValidate ="drpswcque"></asp:RequiredFieldValidator></div>     
                            <div class="col-sm-8">
                            <asp:TextBox ID="txtsecans" runat="server" CssClass="form-control" placeholder="Security Answer"></asp:TextBox></div> 
                            <div class="col-sm-4"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="plz fill" ControlToValidate ="txtsecans"></asp:RequiredFieldValidator></div>      
                             <div class="col-sm-6 noresponsive-padding">
                                <center ><asp:Button ID="btnget" runat="server" Text="Get Password"></asp:Button></center>
                             </div>
                       </div>
                       </div></div>
</div></div></div>

                       </div> 
                
            

</asp:Content>

