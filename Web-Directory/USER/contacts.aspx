<%@ Page Title="" Language="VB" MasterPageFile="~/USER/Design.master" AutoEventWireup="false" CodeFile="contacts.aspx.vb" Inherits="USER_contacts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container ">
        	<div class="row">
            	<div class="col-sm-12">
                <div class="contact-heading">
                    	<h1>Send us message</h1>
                </div>
     
     <div class="contact-form">
         <div class="col-sm-12">
                        	<div class="col-sm-3 nopadding-left">
                            	<div class="form-group">
                                     <asp:TextBox ID="txtname" runat="server" CssClass="form-control" placeholder="Full name"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="plz fill" ControlToValidate="txtname"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-sm-3 noresponsive-padding">
                            	<div class="form-group">
                                     <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter valid email" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="plz fill" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                                </div>
                             </div>
                             <div class="col-sm-6 nopadding-left">
                            	<div class="form-group">
                                     <asp:TextBox ID="txtsub" runat="server" CssClass="form-control" placeholder="Subject"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="plz fill" ControlToValidate="txtsub"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            
                             <div class="col-sm-12 nopadding-left">
                            	<div class="form-group">
                                     <asp:TextBox ID="txtadd" runat="server" CssClass="form-control" placeholder="Write your message here" TextMode="MultiLine" ></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="plz fill" ControlToValidate="txtadd"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                             
                            <div class="col-sm-6 nopadding-left">
                            	<div class="form-group">
                                      <asp:Button ID="btnsave" runat="server" Text="Submit"></asp:Button>
                                </div>
                            </div>
                            <div class="col-sm-6 noresponsive-padding">
                            	<div class="form-group">
                                      <asp:Button ID="btnreset" runat="server" Text="Reset"></asp:Button>
                                </div>
                   </div>          </div>
                   <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
             </div> 
            </div> 
           </div> 
          </div> 
      
         

</asp:Content>

