<%@ Page Language="VB"  AutoEventWireup="false" CodeFile="login1.aspx.vb"  Inherits="USER_login1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <link rel="stylesheet" type="text/css" href="material-design-login-form/css/StyleSheet.css">
 <script type="text/javascript" language="javascript" src="../App_Themes/Theme1/lytebox.js"></script>
<link rel="stylesheet" href="../App_Themes/Theme1/lytebox.css" type="text/css" media="screen" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="login-card">
    <h1>Log-in</h1><br>
  <form>
   <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="User Name"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Plz fill" ControlToValidate ="TextBox1"></asp:RequiredFieldValidator>
   <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Plz fill" ControlToValidate ="TextBox2"></asp:RequiredFieldValidator>
   <asp:Button ID="Button1" runat="server" Text="Sign In" CssClass="login-submit"></asp:Button>
  </form>
    
  <div class="login-help">
    <a href="register.aspx">Register</a> • <a href="Forget.aspx">Forgot Password</a>
  </div>
</div>

<!-- <div id="error"><img src="https://dl.dropboxusercontent.com/u/23299152/Delete-icon.png" /> Your caps-lock is on.</div> -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>



    </div>
    </form>
</body>
</html>
