<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Subscription.aspx.cs" Inherits="Subscription" EnableEventValidation="true" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

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
  <link href="style/style.css" rel="stylesheet" type="text/css"/>

   <style type="text/css">
     table, th, td {
            border: 0px solid grey !Important;
            border-collapse: collapse;
            padding: 5px;
           }
            table tr:nth-child(odd) {
                background-color: #f1f1f1;
            }
            table tr:nth-child(even) {
                background-color: #ffffff;
            }

            
.checkout {
    list-style: none;
    margin: 0;
    padding: 0;
    display: table;
    table-layout: fixed;
    width: 70%;
    color: black;
}

.checkout > li.is-active:before {
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

       #footer 
       {
          background: white;
          padding: 10px;
      
       }
 </style>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#btnPrcodr").click(function () {
               
                alert("Please register or login to proceed further");
            });
        });
    </script>


</head>
<body ng-controller="mainCtrl" style="background: rgba(51, 122, 183, 0.77);">
      
    <form id="form1" runat="server">
       
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
          <li><a href="index.aspx" class="giveSpace">Home</a></li>
      </ul>
    </div>
  </div>
</nav>

    <div runat="server">
      <div class="container">
          <h1 style="text-align:center;color:aliceblue;font-family: -webkit-pictograph;">Subscription Order</h1>
           <br/>
          

          <div class="container checkout-bar" style="padding: 0px 120px !Important;">		
	<ul class="checkout">
	  <li class="is-active" data-step="1">
		Cart
	  </li>
	  <li data-step="2">
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
          
           <br/>
          <div class="row">
              <div class="col-md-4">
                  <table class="table table-bordered" style="box-shadow: 12px 18px 48px black;">
                      <tr>
                        <th>I need a combo for</th>
                      </tr>
                      <tr>
                          <td>
                              <asp:Label ID="lblLunch" runat="server" Text="Lunch"></asp:Label>

                              <asp:CheckBox ID="chklunch" runat="server" OnCheckedChanged="chklunch_CheckedChanged" /> 
                          
                             <asp:Label ID="lblDinner" runat="server" Text="Dinner"></asp:Label>

                              <asp:CheckBox ID="chkdinner" runat="server" OnCheckedChanged="chkdinner_CheckedChanged" /></td>

                         
                        </tr>
                      <tr>
                          <td>
                              <p>Lunch is delivered between 11:30 AM to 2 PM. Dinner is delivered between 7 to 9:30 PM.

We try our best to meet your delivery expectation, however we can’t guarantee the same due to logistics constraint. Any delay in delivery will be communicated to you by our customer support team.

</p>
                          </td>
                      </tr>

                      <tr>
                          <td>&nbsp;</td> 
                         
                      </tr>
                        </table>
                   
                      
                              
                     
              </div>
                 <div class="col-sm-4">

                       <table class="table" style="box-shadow: 12px 18px 48px black;">
                      <tr>
                        <th>Subscription Start Date</th>
                      </tr>
                      <tr><td>Note:-<asp:label ID="lblSubs" runat="server" text="Subscription Plan is for 3 months, 6 months, and 12 months"></asp:label></td></tr>
                      <tr>
                          <td>
                              <asp:label ID="lblPickDt" runat="server" text="From date"></asp:label>                            
                              <asp:TextBox ID="txtCalender" runat="server" OnTextChanged="txtCalender_TextChanged"></asp:TextBox>
                               <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                              <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtCalender"></asp:CalendarExtender>
                              </td>
                          </tr>
                           <tr>
                          <td>
                              <asp:label ID="Label2" runat="server" text="To  date"></asp:label>                            
                              <asp:TextBox ID="txtCalendertoDate" runat="server" style="margin-left:20px;" ></asp:TextBox>
                              <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtCalendertoDate"></asp:CalendarExtender>
                              </td>

                               </tr>
                             <tr>
                               <td>
                              <asp:Button ID="btnCalDate" runat="server" Text="Submit" OnClick="btnCalDate_Click" style="background: dimgray;color: aliceblue;border-radius: 8px;" />
                              
                                 <asp:label ID="lblDateMsger" runat="server" text=""></asp:label>                            
                              </td>                         
                             </tr>
                          
                                               
                   
                      
                        <tr>
                            <td>
                                <p>Our service is from Monday to Saturday
                                 Email us at care@momspoon.com for cancellation.</p><p>
                                 The cut-off time for cancellation is 7.00 am and 1.00 pm for Lunch and Dinner respectively.Service Numbers - 0879541236</p>
                            </td>
                        </tr>
                          </table>
                    
                 </div>
                 <div class="col-sm-4">
                      <table  class="table" style="box-shadow: 12px 18px 48px black;">
                      <tr>
                        <th style="text-align:center!Important;">Estimated Price Per Combo </th>
                      </tr>
                           </table>
                      
                     <table class="table" style="box-shadow: 12px 18px 48px black;">
                         

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
                                     <asp:DropDownList ID="dpdQuantity" runat="server" 
                                       AutoPostBack="True"  onselectedindexchanged="dpdQuantity_SelectedIndexChanged">
                                     <asp:ListItem Value="1">1</asp:ListItem>
                                     <asp:ListItem Value="2">2</asp:ListItem>
                                     <asp:ListItem Value="3">3</asp:ListItem>
                                     <asp:ListItem Value="4">4</asp:ListItem>
                                     </asp:DropDownList>
                                 </td>
                                  <td>
                                     <asp:Label ID="lblprice" runat="server" Text=""></asp:Label>
                                 </td>
                                 </tr>
                               
                                 <tr>
                                 <td><asp:Label ID="lbltotal" runat="server" Text="Total" style="color:red;font:bold;"></asp:Label></td>
                                 <td>&nbsp;</td>
                                 <td>&nbsp;</td>
                                 <td>&nbsp;</td>
                                 <td>
                                   <i class="fa fa-inr"></i><asp:Label ID="lbltamt" runat="server" Text=""></asp:Label>
                                 </td>
                                 </tr>
                                 <tr>
                                     <td>&nbsp;</td>
                                     <td>&nbsp;</td>
                                     <td>&nbsp;</td>
                                      <td>&nbsp;</td>
                                     <td>
                                     <asp:Button ID="btnPrcodr" runat="server" Text="Proceed" class="pull-right" OnClick="btnPrcodr_Click" style="background: #00ba8c;color: aliceblue;box-shadow: 5px 7px black;font-family: inherit;height: 45px;"/>
                                    </td>
                                 </tr>
                              
                      </table>
        
                 </div>
                
          </div>
             <ul class="pager">
    <li class="previous"><a href="index.aspx">Back</a></li>
    <li class="next"><a href="#">Next</a></li>
  </ul>
          <br/>
         

          
      </div>
              
       


    </div>
        <div id="footer">
           <p style="text-align:center;"><a href="#" data-toggle="tooltip" title="Visit Mom'sSpoon" style="text-align:center;">www.Mom'sSpoon.com</a></p> 
        </div>


    </form>
</body>
</html>
