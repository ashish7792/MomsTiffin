<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FinalAmtandAddr.aspx.cs" Inherits="FinalAmtandAddr" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" ng-app="myAppmaster">
<head id="Head1" runat="server">
    <title>Mom'sSpoon</title>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css"/>
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"/>

  <script src="Scripts/apper.js"></script>
  <script src="Scripts/session.js"></script>
  <link href="style/style.css" rel="stylesheet" type="text/css"/>

    
<style type="text/css">               
.checkout {
    list-style: none;
    margin: 0;
    padding: 0;
    display: table;
    table-layout: fixed;
    width: 80%;
    color: white;
}

.checkout > li.is-active:before {
    color: #FFF;
    background: #DFE3E4;
}
.checkout > li.is-active2:before {
    color: #FFF;
    background: #DFE3E4;
}

.checkout > li.is-active3:before {
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

<body ng-controller="mainCtrl" style="background-color:rgba(0, 0, 0, 0.68);">
    <form id="form1" runat="server">
    <div>
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
        <li><a href="index.aspx" class="giveSpace">Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
  <div id="Div1" runat="server">
      <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>

      <div class="container">
          <h1 style="text-align:center;color:aliceblue;font-family: -webkit-pictograph;">Order Confirmation</h1>
          <!--<h3 style="color:aliceblue;">Session Expires in:&nbsp;<span id="secondsIdle"></span>&nbsp;seconds.</h3>-->
           <br/>
          <div class="container checkout-bar" style="padding: 0px 120px !Important;">		
	<ul class="checkout">
	  <li class="is-active" data-step="1" >
		Cart
	  </li>
	  <li class="is-active2" data-step="2">
		Login
	  </li>
	  <li class="is-active3" data-step="3">
		Address
	  </li>
	  <li data-step="4" class="checkout__last">
		Payment
	  </li>
	</ul>
</div>

           <br/>
          <div class="row">
              <div class="col-lg-6">
                  <table  class="table" style="box-shadow: 12px 18px 48px black;">
                      <tr>
                        <th style="text-align:center!Important;">Final Order Summary</th>
                         
                      </tr>
                           </table>
                      
                     <table class="table" style="box-shadow: 12px 18px 48px black;" >
                         

                        <tr>
                                 <th>Mealno</th>
                                 <th>Mealname</th>
                                 <th>Item</th>
                                 <th>Quantity</th>
                                 <th>Price</th>

                          </tr>
                             <tr>
                                 <td>
                                     <asp:Label ID="lbmealno" runat="server" Text=""></asp:Label>
                                 </td>
                                 <td>
                                     <asp:Label ID="lbmealnm" runat="server" Text=""></asp:Label>
                                 </td>
                                  <td>
                                     <asp:Label ID="lblitm" runat="server" Text=""></asp:Label>
                                    
                                 </td>                                 
                              
                                 <td>
                                     <asp:Label ID="lblqty" runat="server" Text=""></asp:Label>
                                 </td>
                                  <td>
                                     <asp:Label ID="lblprice" runat="server" Text=""></asp:Label>
                                 </td>
                                 </tr>
                               
                                 <tr>
                                 <td><asp:Label ID="lbltotal" runat="server" Text="Sub Total" style="color:red"></asp:Label></td>
                                 <td>&nbsp;</td>
                                 <td>&nbsp;</td>
                                  <td> 
                                    &nbsp;
                                 </td>
                                 <td>
                                   <i class="fa fa-inr"></i><asp:Label ID="lbltamt" runat="server" Text=""></asp:Label>
                                 </td>
                                 </tr>
                              
                      </table>
          
                  </div>
                  <div class="col-lg-6">
                          <table  class="table" style="box-shadow: 12px 18px 48px black;">
                            <tr>
                              <th style="text-align:center!Important;">Final Delivery Address
                                   <br/> 
                              </th>
                           </tr>
                           </table>
                            <form method="post" >
                           <table class="table" style="box-shadow: 12px 18px 48px black;text-align: center;" >
                             
                                  
                                  <tr>   
                                   <td>
                                         <span style="color:red;font-size: 11px;">Below all fields are mandatory *</span>
                                    <asp:TextBox ID="txtFName" runat="server" placeholder="Enter full name" style="width: 275px;border: 2px solid;height: 35px;"></asp:TextBox>
                                   
                                       </td>
                                      <td>
                                       <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="txtFName" errormessage="Please enter your full name!" />
                                      </td>
                                      </tr>
                                    <tr>
                                    <td>
                                    <asp:TextBox ID="txtAdd1" runat="server" placeholder="Enter houseno,Apartment name" style="width: 275px;border: 2px solid;height: 35px;"></asp:TextBox>
                                        </td>
                                        <td>
                                         <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" controltovalidate="txtAdd1" errormessage="Please enter houseno,Apartment name!" />
                                         </td>
                                        </tr>
                                   <tr>
                                     <td>
                                        <asp:TextBox ID="txtAdd2" runat="server" placeholder="Enter street,MainCross" style="width: 275px;border: 2px solid;height: 35px;"></asp:TextBox>
                                         
                                     </td>
                                       <td>
                                      <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" controltovalidate="txtAdd2" errormessage="Please enter Address street,MainCross!" />
                                       </td>
                                   </tr>
                                   <tr>
                                     <td>
                                    <asp:TextBox ID="txtAdd3" runat="server" placeholder="Enter Area Name,Cityname" style="width: 275px;border: 2px solid;height: 35px;"></asp:TextBox>
                                    </td>
                                       <td>
                                       <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" controltovalidate="txtAdd3" errormessage="Please enter Address Area Name,Cityname!" />
                                       </td>
                                   </tr>
                                   <tr>
                                     <td>
                                    <asp:TextBox ID="txtPincode" runat="server" placeholder="Enter Pincode" style="width: 275px;border: 2px solid;height: 35px;"></asp:TextBox>
                                        
                                    </td>
                                       <td>
                                        <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator4" controltovalidate="txtPincode" errormessage="Please enter Pincode!" />
                                       </td>
                                   </tr>
                               <tr>
                                   <td><asp:TextBox ID="txtMjld" runat="server" placeholder="Enter Major Landmark" style="width: 275px;border: 2px solid;height: 35px;"></asp:TextBox></td>
                               <td>
                               <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator5" controltovalidate="txtMjld" errormessage="Please enter Major Landmark!" />
                                 </td>
                                   </tr>
                           </table>
                        </form>
                      
           <asp:Button ID="DelvBtn" runat="server" Text="Checkout" class="glyphicon glyphicon-flash"  TabIndex="3" style="background-color: #39a969;color: White;cursor: pointer;height: 45px;width: 140px;font-size: 20px;" OnClick="DelvBtn_Click" />

                      <asp:ImageButton ID="CheckoutImageBtn" runat="server" 
                      ImageUrl="https://www.paypal.com/en_US/i/btn/btn_xpressCheckout.gif" 
                      Width="145" AlternateText="Check out with PayPal" 
                      OnClick="CheckoutBtn_Click" 
                      BackColor="Transparent" BorderWidth="0" />

                  </div>
           </div>
        </div>
    </div>
    </form>
</body>
</html>
