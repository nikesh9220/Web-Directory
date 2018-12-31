<%@ Page Title="" Language="VB" MasterPageFile="~/USER/Design.master" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="USER_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="Div1">
    	<div class="container ">
        	<div class="row">
            	<div class="col-sm-12">
                <div class="contact-heading">
                    	<h1>Registration Here</h1>
                       
                    </div>
     <div id="contact-section">
     <div class="contact-form">
         <div class="col-sm-12">
             <div class="form-group nopadding-right ">
             <div class="col-sm-8">
             <asp:TextBox ID="txtfname" runat="server" CssClass="form-control" placeholder="First Name"></asp:TextBox></div> 
             <div class="col-sm-4"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="plz fill" ControlToValidate ="txtfname"></asp:RequiredFieldValidator></div> 
             <div class="col-sm-8">
             <asp:TextBox ID="txtlname" runat="server" CssClass="form-control" placeholder="Last Name"></asp:TextBox></div> 
             <div class="col-sm-4"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="plz fill" ControlToValidate ="txtlname"></asp:RequiredFieldValidator></div> 
             <div class="col-sm-8">
             <asp:TextBox ID="txtadd" runat="server" CssClass="form-control" placeholder="Address" TextMode="MultiLine" ></asp:TextBox></div> 
             <div class="col-sm-4"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="plz fill" ControlToValidate ="txtadd"></asp:RequiredFieldValidator></div> 
             <div class="col-sm-8">
             <asp:DropDownList ID="drparea" runat="server" CssClass="form-control"></asp:DropDownList></div> 
             <div class="col-sm-4"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="plz fill" ControlToValidate ="drparea"></asp:RequiredFieldValidator></div> 
             <div class="col-sm-8">
             <asp:TextBox ID="txtpincode" runat="server" CssClass="form-control" placeholder="Pincode" ></asp:TextBox> </div>    
             <div class="col-sm-4"><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="plz fill" ControlToValidate ="txtpincode"></asp:RequiredFieldValidator></div> 
             <div class="col-sm-8">
             <asp:DropDownList ID="drpgender" runat="server" CssClass="form-control">
              <asp:ListItem>Select Gender</asp:ListItem>
              <asp:ListItem>Male</asp:ListItem>
              <asp:ListItem>Female</asp:ListItem>
              </asp:DropDownList></div> 
             <div class="col-sm-4"><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="plz fill" ControlToValidate ="drpgender"></asp:RequiredFieldValidator></div> 
             <div class="col-sm-8">
             <asp:TextBox ID="txtphno" runat="server" CssClass="form-control" placeholder="Landline-No" ></asp:TextBox></div> 
             <div class="col-sm-2"><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Plz enter valid number" ControlToValidate ="txtphno" ValidationExpression ="^\d{1,10}"></asp:RegularExpressionValidator></div>
             <div class="col-sm-2"><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="plz fill" ControlToValidate ="txtphno"></asp:RequiredFieldValidator></div>
             <div class="col-sm-8">
             <asp:TextBox ID="txtmobno" runat="server" CssClass="form-control" placeholder="Mobile-No" ></asp:TextBox></div>
             <div class="col-sm-2"><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Plz enter valid number" ControlToValidate ="txtmobno" ValidationExpression ="^\d{1,10}"></asp:RegularExpressionValidator></div>
             <div class="col-sm-2"><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="plz fill" ControlToValidate ="txtmobno"></asp:RequiredFieldValidator></div> 
             <div class="col-sm-8">
             <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="Email-id" ></asp:TextBox></div> 
             <div class="col-sm-2"><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Plz enter valid number" ControlToValidate ="txtemail" ValidationExpression ="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></div>
             <div class="col-sm-2"><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="plz fill" ControlToValidate ="txtemail"></asp:RequiredFieldValidator></div>    
             <div class="col-sm-8">
             <asp:TextBox ID="txtusername" runat="server" CssClass="form-control" placeholder="User-id" ></asp:TextBox></div>    
             <div class="col-sm-4"><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="plz fill" ControlToValidate ="txtusername"></asp:RequiredFieldValidator></div>    
             <div class="col-sm-8">
             <asp:TextBox ID="txtpass" runat="server" CssClass="form-control" placeholder="Password" ></asp:TextBox></div> 
             <div class="col-sm-4"><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="plz fill" ControlToValidate ="txtpass"></asp:RequiredFieldValidator></div>    
             <div class="col-sm-8">
             <asp:TextBox ID="txtconpass" runat="server" CssClass="form-control" placeholder=" Confirm Password" ></asp:TextBox></div> 
             <div class="col-sm-2"><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="plz fill" ControlToValidate ="txtconpass"></asp:RequiredFieldValidator></div>       
             <div class="col-sm-2"><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password doesnt match" ValueToCompare ="txtpass" ControlToCompare ="txtconpass" ControlToValidate ="txtpass"></asp:CompareValidator></div> 
             <div class="col-sm-8">
             <asp:DropDownList ID="drpsecurity" runat="server" CssClass="form-control"></asp:DropDownList>  </div>  
             <div class="col-sm-4"><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="plz fill" ControlToValidate ="drpsecurity"></asp:RequiredFieldValidator></div>    
             <div class="col-sm-8">
             <asp:TextBox ID="txtans" runat="server" CssClass="form-control" placeholder="Security Answer" ></asp:TextBox></div> 
             <div class="col-sm-4"><asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="plz fill" ControlToValidate ="txtans"></asp:RequiredFieldValidator></div>    
                <div class="col-sm-5 noresponsive-padding">
                <asp:Button ID="Button1" runat="server" Text="Submit"></asp:Button>
               </div>
                <div class="col-sm-4"><asp:Button ID="Button2" runat="server" Text="Cancel"></asp:Button></div> 
                </div>
             </div>  
          </div>          
     </div>
     </div>
     </div>
</div></div>
     </div>
      

</asp:Content>

