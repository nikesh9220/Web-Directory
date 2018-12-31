<%@ Page Title="" Language="VB" MasterPageFile="~/USER/Design.master" AutoEventWireup="false" CodeFile="Submitlisting.aspx.vb" Inherits="USER_Submitlisting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="container ">
        	<div class="row">
            	<div class="col-sm-12">
                <div class="contact-heading">
                    	<h1>Submit your business details here</h1>
                </div>
     
     <div class="contact-form">
         <div class="col-sm-12">
             <div class="form-group nopadding-right ">
              <div class="col-sm-10">
            <asp:TextBox ID="txttitle" runat="server" CssClass="form-control" placeholder="Title of your business"></asp:TextBox></div> 
             <div class="col-sm-2"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Plz fill" ControlToValidate="txttitle"></asp:RequiredFieldValidator></div> 
             <div class="col-sm-10">
              <asp:TextBox ID="txturl" runat="server" CssClass="form-control" placeholder="Enter Your Website"></asp:TextBox></div> 
               <div class="col-sm-2"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"   ErrorMessage="Plz fill" ControlToValidate="txturl"></asp:RequiredFieldValidator></div> 
            <div class="col-sm-10">
             <asp:DropDownList ID="drpsub" AppendDataBoundItems ="true" runat="server" CssClass="form-control" ></asp:DropDownList></div> 
            <div class="col-sm-2"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="btnsave" runat="server" ErrorMessage="Plz select" ControlToValidate="drpsub" InitialValue ="Select SubCategory" ></asp:RequiredFieldValidator></div> 
             <div class="col-sm-10">
             <asp:TextBox ID="txtadd" runat="server" CssClass="form-control" placeholder="Address of you site" TextMode="MultiLine" ></asp:TextBox></div> 
               <div class="col-sm-2"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Plz fill" ControlToValidate="txtadd"></asp:RequiredFieldValidator></div> 
               <div class="col-sm-10">
              <asp:DropDownList ID="drparea" runat="server" CssClass="form-control"></asp:DropDownList></div> 
               <div class="col-sm-2"><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Plz fill" ControlToValidate="drparea" InitialValue ="Select Area" ValidationGroup ="drparea"></asp:RequiredFieldValidator></div> 
             <div class="col-sm-10">
             <asp:TextBox ID="txtpin" runat="server" CssClass="form-control" placeholder="Pincode" ></asp:TextBox></div> 
             <div class="col-sm-2"><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Plz fill" ControlToValidate="txtpin"></asp:RequiredFieldValidator></div> 
              <div class="col-sm-10">
             <asp:TextBox ID="txtno" runat="server" CssClass="form-control" placeholder="Contact Number"></asp:TextBox>
            <div class="col-sm-2">
                
             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Plz fill" ControlToValidate="txtno"></asp:RequiredFieldValidator></div> 
             <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="Email-id"></asp:TextBox> 
              
              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Plz enter valid email id" ControlToValidate ="txtemail" 
             ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             
                    
                    <div class="col-sm-10">
            <asp:TextBox ID="txtshort" runat="server" CssClass="form-control" placeholder="Short Description" TextMode="MultiLine" ></asp:TextBox></div> 
               <div class="col-sm-2"><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Plz fill" ControlToValidate="txtshort"></asp:RequiredFieldValidator></div> 
              <!--start gallery images-->
                    <div id="gallery-images">
                    	<h1>gallery images</h1>
                        <hr/>
                        <div id="add-images">
                               <div class="col-sm-6 col-md-4 nopadding text-center">
                            <asp:FileUpload ID="upldimg" runat="server" CssClass="file"></asp:FileUpload>
                               </div> 
                             </div>
                    </div>
           
            <hr />
            
            <div class="col-sm-3 ">
                <asp:Button ID="btnsave" runat="server" Text="Submit" CssClass ="form-control search-button button fa fa-search "></asp:Button>
               </div>
               <div class="col-sm-3 ">
                <asp:Button ID="btnreset" runat="server" Text="Reset" CssClass ="form-control search-button button fa fa-search "></asp:Button></div> 
                </div>
            </div> 
             </div> 
             </div> 
            </div> 
           </div> 
          </div> 
         
</div>
 
</asp:Content>

