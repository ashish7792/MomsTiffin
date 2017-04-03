<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistrationForm.aspx.cs" Inherits="login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <style>
        .form-group {
            margin-bottom: -15px !Important;
        }
    </style>
</head>
<body style="background-image: url(/Images/loginback.jpg);background-position: -800px -370px;">
 <div class="pen-title" style="padding:0px;">
      <h3 style="color:white;">Please Register for Further Process</h3>
       
</div>
     <form id="form1" runat="server">
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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
          <!--<li><a href="#myPage" class="giveSpace">Home</a></li>
          <li><a href="#aboutus" class="giveSpace">Aboutus</a></li>
          <li><a href="#howitworks" class="giveSpace">How it works?</a></li>  
          <li><a href="#workFlow" class="giveSpace">Subscription</a></li>
          <li><a href="#Pricing" class="giveSpace">Order Food</a></li>
          <li><a href="#contact" class="giveSpace">Contactus</a></li>-->


           <!-- Register Navbar-->
        <li><a href="index.aspx" class="giveSpace" style="cursor:pointer;">Home</a></li>
      </ul>
    </div>
  </div>
</nav>
<!-- Form Module-->
 

<div class="module form-module" style="border-top: 5px solid #000000;">
        <div class="container" style="padding:15px 30px !Important;">

            <div id="">
   

    	 <div class="row">
							<div class="col-md-12">
                                <h3><a href="Login.aspx">Already a User Sign In?</a></h3>
								<p>Register</p>
                                <asp:Label ID="lblRegmsg" runat="server" Text="" style="letter-spacing: normal;font-family: inherit;"></asp:Label>
								<!--<div class="social-buttons">
									<a href="www.facebook.com" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
									<a href="#" class="btn btn-tw"><i class="fa fa-envelope"></i>Gmail</a>
								</div>-->
       
								 <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">

										<div class="form-group">
											<asp:Label ID="Label1" runat="server" Text="Name:" style="letter-spacing: normal;font-family: inherit;"></asp:Label>
                                            <br/>
                                            
                                              <asp:TextBox ID="txtName" runat="server" placeholder="Enter name" style="width:345px;height: 40px;border:2px solid;color:black;"></asp:TextBox>
                                             <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="txtName" errormessage="Please enter your name!" />

										</div>
										<div class="form-group">
											 <asp:Label ID="Label2" runat="server" Text="Email:" style="letter-spacing: normal;font-family: inherit;"></asp:Label>
                                             <br/>
											 <asp:TextBox ID="txtRegEmail" runat="server" TextMode="Email"  placeholder="Enter email" style="width:345px;height: 40px;border:2px solid;color:black;"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtRegEmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
										</div>
                                        
										<!--<div class="form-group">
											<asp:Label ID="Label3" runat="server" Text="Address:" style="letter-spacing: normal;font-family: inherit;"></asp:Label>
                                            <br/>
                                            
                                              <asp:TextBox ID="txtAddress" runat="server" placeholder="Enter Address" style="width:345px;height: 40px;border:2px solid;color:black;" ></asp:TextBox>
                                             <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" controltovalidate="txtAddress" errormessage="Please enter your Address!" />

										</div>-->


                                        <div class="form-group">
											 <asp:Label ID="Label4" runat="server" Text="Mobile:" style="letter-spacing: normal;font-family: inherit;"></asp:Label>
                                             <br/>
											 <asp:TextBox ID="txtMobile" runat="server" placeholder="Enter mobile" style="width:345px;height: 40px;border:2px solid;color:black;" ></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMobile" ErrorMessage="Enter a valid Mobile Number"  ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                             
										</div>

                                       <div class="form-group">
											 <asp:Label ID="Label5" runat="server" Text="Password:" style="letter-spacing: normal;font-family: inherit;"></asp:Label>
                                            <br/>
											 <asp:TextBox ID="txtPasser" runat="server" TextMode="Password" placeholder="Enter pass" style="width:345px;height: 40px;border:2px solid;color:black;" ></asp:TextBox>
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPasser"  ValidationGroup="RegisterCheck" ></asp:RequiredFieldValidator>
                                            
										</div>


										<div class="form-group">
											 
                                              <asp:Button ID="Button1" runat="server" Text="Sign in"  style="border: 1px solid #333;background-color: #33b5e5;color: #f5f5f5;width:345px;height: 40px;padding: 0px;" OnClick="Button1_Click"  />

										</div>
			
								 </form>
							</div>						
					 </div>
   </div>
            </div>
    






</div>

   </form>
    <script src="js/index.js"></script>
</body>
</html>
