<%@ Page Title="" Language="VB" MasterPageFile="~/USER/Design.master" AutoEventWireup="false" CodeFile="Advertise.aspx.vb" Inherits="USER_Advertise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container ">
        	<div class="row">
            	<div class="col-sm-12">
                <div class="contact-heading">
                    	<h1>Submit your advertisement details</h1>
                </div>
     
     <div class="contact-form">
         <div class="col-sm-12">
                        	<div class="col-sm-6 nopadding-left">
                            	<div class="form-group">
                                <div class="col-sm-10"><asp:TextBox ID="txttitle" runat="server" CssClass="form-control" placeholder="Title of your Advertisement"></asp:TextBox></div> 
                                <div class="col-sm-2"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Plz fill" ControlToValidate ="txttitle"></asp:RequiredFieldValidator></div> 
                                </div>
                            </div>
                            <div class="col-sm-6 noresponsive-padding">
                            	<div class="form-group">
                                <div class="col-sm-8"><asp:TextBox ID="txtheader" runat="server" CssClass="form-control" placeholder="Header of your Advertisement"></asp:TextBox></div> 
                                <div class="col-sm-2"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Plz fill" ControlToValidate ="txtheader"></asp:RequiredFieldValidator></div> 
                             </div>
                             </div>
                             <div class="col-sm-6 nopadding-left">
                            	<div class="form-group">
                                <div class="col-sm-10"><asp:TextBox ID="txtperson" runat="server" CssClass="form-control" placeholder="Person to contact"></asp:TextBox></div> 
                                <div class="col-sm-2"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Plz fill" ControlToValidate ="txtperson"></asp:RequiredFieldValidator></div> 
                                </div>
                            </div>
                            <div class="col-sm-6 noresponsive-padding">
                            	<div class="form-group">
                                <div class="col-sm-8"><asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox></div> 
                                <div class="col-sm-2"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Plz fill" ControlToValidate ="txtemail"></asp:RequiredFieldValidator></div> 
                                <div class="col-sm-2">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                        ErrorMessage="Plz enter valid email" ControlToValidate ="txtemail" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator></div> 
                                </div>
                             </div>
                              <div class="col-sm-6 nopadding-left">
                            	<div class="form-group">
                                <div class="col-sm-10"><asp:TextBox ID="txturl" runat="server" CssClass="form-control" placeholder="Website details"></asp:TextBox></div> 
                                <div class="col-sm-2"><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Plz fill" ControlToValidate ="txturl"></asp:RequiredFieldValidator></div> 
                                </div>
                            </div>
                            <div class="col-sm-6 noresponsive-padding">
                            	<div class="form-group">
                                <div class="col-sm-8"><asp:TextBox ID="txtno" runat="server" CssClass="form-control" placeholder="Contact Number"></asp:TextBox></div> 
                                <div class="col-sm-2"><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Plz fill" ControlToValidate ="txtno"></asp:RequiredFieldValidator></div> 
                                <div class="col-sm-2"><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Plz fill" ControlToValidate ="txtno"></asp:RequiredFieldValidator></div> 
                                    
                                </div>
                             </div>
                             <div class="col-sm-12 nopadding-left">
                            	<div class="form-group">
                                <div class="col-sm-10"><asp:TextBox ID="txtadd" runat="server" CssClass="form-control" placeholder="Address" TextMode="MultiLine" ></asp:TextBox></div> 
                                <div class="col-sm-2"><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Plz fill" ControlToValidate ="txtadd"></asp:RequiredFieldValidator></div> 
                                </div>
                            </div>
                             <div class="col-sm-6 nopadding-left">
                            	<div class="form-group">
                                <div class="col-sm-10"><asp:DropDownList ID="drparea" runat="server" CssClass="form-control"></asp:DropDownList></div> 
                                </div>
                            </div>
                            <div class="col-sm-6 noresponsive-padding">
                            	<div class="form-group">
                                <div class="col-sm-8"><asp:DropDownList ID="drpsub" runat="server" CssClass ="form-control"></asp:DropDownList></div>
                                    </div> 
                                </div>
                             </div>
                              <div class="col-sm-6 nopadding-left">
                            	<div class="form-group">
                                <div class="col-sm-10"><asp:FileUpload ID="upldimg" runat="server" CssClass="form-control"></asp:FileUpload></div> 
                                </div>
                            </div>
                            <div class="col-sm-6 noresponsive-padding">
                            	<div class="form-group">
                                <div class="col-sm-6"><asp:DropDownList ID="drpscheme" runat="server" CssClass="form-control" AutoPostBack ="true" ></asp:DropDownList></div> 
                                <div class="col-sm-2"><asp:Label ID="lblday" runat="server" CssClass="form-control"></asp:Label></div> 
                                <div class="col-sm-2"><asp:Label ID="lblrate" runat="server" CssClass="form-control"></asp:Label></div> 
                                </div>
                             </div>
                             <div class="col-sm-12 nopadding-left">
                            	<div class="form-group">
                                <div class="col-sm-10"><asp:TextBox ID="txtshort" runat="server" CssClass="form-control" placeholder="Short description" TextMode="MultiLine" ></asp:TextBox></div> 
                                <div class="col-sm-2"><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Plz fill" ControlToValidate ="txtshort"></asp:RequiredFieldValidator></div> 
                                </div>
                            </div>
                            <div class="col-sm-3 ">
                            	<div class="form-group ">
                                      <center ><asp:Button ID="btnsave" runat="server" Text="Submit" CssClass ="form-control search-button button fa fa-search "></asp:Button></center>
                                </div>
                            </div>
                            <div class="col-sm-3 ">
                            	<div class="form-group">
                                      <asp:Button ID="btnreset" runat="server" Text="Reset" CssClass ="form-control search-button button fa fa-search "></asp:Button>
                                </div>
                   </div>          </div>
             </div> 
            </div> 
           </div> 
          </div> 
        </div>
         
</asp:Content>

