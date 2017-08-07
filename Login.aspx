<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Relogin" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Mom'sSpoon|Login</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/reset.css"/>
    <link rel="stylesheet" href="css/styler.css"/>
    <link href="style/style.css" rel="stylesheet" type="text/css"/>
    <script src="Scripts/session.js"></script>


<style type="text/css">               
.checkout {
    list-style: none;
    margin: 0;
    padding: 0;
    display: table;
    table-layout: fixed;
    width: 100%;
    color: white;
}

.checkout > li.is-active:before {
    color: #FFF;
    background: #DFE3E4;
}
.checkout > li.is-active2:before {
    color: #FFF;
    background: #2ECC71;
}

.checkout > li {
    position: relative;
    display: table-cell;
    text-align: center;
     font-size: 0.9em;
}


.checkout > li:before {
    content: attr(data-step);
    display: block;
    margin: 0 auto;
    background: #DFE3E4;
    width: 2em;
    height: 2em;
    text-align: center;
    margin-bottom: 0.25em;
    line-height: 2em;
    border-radius: 100%;
    position: relative;
    z-index: 1000;
}

.checkout > li:after {
    content: '';
    position: absolute;
    display: block;
    background: #DFE3E4;
    width: 100%;
    height: 0.2em;
    top: 1em;
    left: -14%;
    margin-left: 1.5em;
}
</style>


</head>
<body style="background-image: url(Images/loginback.jpg);background-position: -800px -370px;">
 <div class="pen-title">
      <h3 style="color:white;">Please Login</h3>
</div>
    
          <div class="container checkout-bar" >		
	<ul class="checkout">
	  <li class="is-active" data-step="1" >
		Cart
	  </li>
	  <li class="is-active2" data-step="2">
		Login
	  </li>
	  <li data-step="3">
		Address
	  </li>
	  <li data-step="4" class="checkout__last">
		Payment
	  </li>
	</ul>
</div>
    <br>

     <form id="form2" runat="server">
           <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>

  

<asp:LinkButton ID="lnkFake" runat="server" />
<asp:ModalPopupExtender ID="mpeTimeout" BehaviorID ="mpeTimeout" runat="server" PopupControlID="pnlPopup" TargetControlID="lnkFake"
    OkControlID="btnYes" CancelControlID="btnNo" BackgroundCssClass="modalBackground" OnOkScript = "ResetSession()" >
</asp:ModalPopupExtender>
<asp:Panel ID="pnlPopup" runat="server" CssClass="modalPopup" style="background: azure;width: 270px;height: 118px;margin-top:50px;">
    <div class="header">
        Session Expiring!
    </div>
    <div class="body">
        Your Session will expire in&nbsp;<span id="seconds"></span>&nbsp;seconds.<br />
        Do you want to reset?
    </div>
    <div class="footer" align="right">
        <asp:Button ID="btnYes" runat="server" Text="Yes" CssClass="yes" />

        <asp:Button ID="btnNo" runat="server" Text="No" CssClass="no" />
    </div>
</asp:Panel>


         <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage" style="font-family: cursive;">Mom'sSpoon</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
           <!-- Register Navbar-->
        <li><a href="index.aspx" class="giveSpace" style="cursor:pointer;">Home</a></li>
      </ul>
    </div>
  </div>
</nav>
<!-- Form Module-->
         
<div class="module form-module" style="border-top: 5px solid #000000;">
    
     <div class="toggle">
         <div class="tooltip"></div>
  </div>

  <div class="form" style="background-color:white;padding: 25px;">

    <h2 style="color:#000000;">Login to your account</h2>
    <asp:Label ID="lblmsger" runat="server" Text=""></asp:Label>
    <form style="padding: 25px;">
          <asp:Label ID="lblemail" runat="server" Text="E-mail" style="color:black;"></asp:Label>

        
          <asp:TextBox ID="txtEmail" runat="server" Placeholder="enter email" TabIndex="1"  style="color:black;"></asp:TextBox>
   


           <asp:Label ID="lblpassId" runat="server" Text="Password" style="color:black;"></asp:Label>
            <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"  Placeholder="enter password" TabIndex="2"  style="color:black;"></asp:TextBox>

             </form>

      <asp:Button ID="loginBtn" runat="server" Text="Login"  TabIndex="3" style="background-color: #333334;color: White;cursor: pointer;height: 50px;" OnClick="loginBtn_Click" />
      
  </div>
     
     
    
  <div class="cta"><a href="#">Forgot your password?</a></div>
</div>

   </form>
    <script src="js/index.js"></script>
</body>
</html>
