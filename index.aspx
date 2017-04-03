<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" ng-app="myAppmaster">
<head runat="server">
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
    <link rel="stylesheet" href="css/Cartreset.css" /> <!-- CSS reset -->
	<link rel="stylesheet" href="css/Cartstyler.css" /> 
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

        .givePaint {
            background: #424245;
            color: aliceblue;
            font-family: cursive;
        }
        .giveSpace {
            letter-spacing: 2px;
        }
      
     
        @media screen and (max-width: 767px) {
    .table-responsive {
        width: 237% !Important;
        margin-bottom: 15px;
        overflow-y: hidden;
        -ms-overflow-style: -ms-autohiding-scrollbar;
        border: 1px solid #ddd;
        margin-left: -120px !Important;
    }
}



    </style>
 
 


</head>

   <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50" ng-controller="mainCtrl">
   <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" ></asp:ScriptManager>
    <div>

       <!--Navbar-->
<nav class="navbar navbar-default navbar-fixed-top" style="background-color: rgba(0,0,0,.5);">
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
          <li><a href="#myPage" class="giveSpace">Home</a></li>
          <li><a href="#aboutus" class="giveSpace">Aboutus</a></li>
          <li><a href="#howitworks" class="giveSpace">How it works?</a></li>  
          <li><a href="#workFlow" class="giveSpace">Subscription</a></li>
          <li><a href="#Pricing" class="giveSpace">Order Food</a></li>
          <li><a href="#contact" class="giveSpace">Contactus</a></li>
         
        <li><a href="RegistrationForm.aspx"><span class="glyphicon glyphicon-shopping-cart"></span><b class="giveSpace">SignIn/SignUp</b></a></li>
      </ul>
    </div>
  </div>
</nav>
      <div class="container-fluid">
         <div class="row">
        <div class="col-lg-12" style="padding-left: 0px;padding-right: 0px;">
   <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="Images/b4.jpg" alt=""/>
         
        <div class="carousel-caption" style="padding-bottom: 295px;">
             <h2 style="font-family:-webkit-body;font-size: 35px;color:#f3cf14">𝓦𝓮𝓵𝓬𝓸𝓶𝓮</h2>
          <p>To Mom's Spoon</p>
        <button type="button" class="btn btn-warning" style="background: #f3cf14;width: 155px;border-radius: 10px;"><a href="#Pricing">OrderFood</a></button>
          <h3 style="color:white;">Special Offer</h3>
          <p>Balanced meals with adequate nutrition to keep you fit</p>
        </div>      
      </div>
     
         <div class="item">
        <img src="Images/b5_2.jpg" alt="Chicago"/>
        <div class="carousel-caption">
          <h3>Special Combos</h3>
          <p>Thank you, Chicago - A night we won't forget.</p>
        </div>  
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
</div>
    </div>
   </div>
   
<!-- Container (The Aboutus Section) -->
<div id="aboutus" class="container text-center">
  <h3>ABOUT US</h3>
  <p><strong style="color:black;">What is special about Mom'sSpoon?</strong></p>
  <p><span style="font-size: 10pt;">There are many reasons to subscribe to our meal plans, such as,</span></p>

  <br/>
  <div class="row">
    <div class="col-sm-12">


   <ul style="">

         <li style="font-family: cursive;"><span style="color:black;">Fine ingredients</span> - We use high quality ingredients to prepare meals. E.g. Whole wheat aata, blended oil and authentic spices. Fresh vegetables are hand-picked everyday.<br></li>
         <li style="font-family: cursive;"><span style="color:black;">Cooking style</span> - Absolutely home-styled. We do not use of any artificial additives to enhance the taste, look or smell of food.<br></li>
         <li style="font-family: cursive;"><span style="color:black;">Storage</span> - Fresh food is prepared for every meal and straightaway dispatched. Food is neither refrigerated nor re-heated.<br></li>
         <li style="font-family: cursive;"><span style="color:black;">Variety</span> - A weekly 'themed' menu ensures variety through the week.</li>
         <li style="font-family: cursive;"><span style="color:black;">Saturday Special Lunch</span> - Our Special Saturday Lunch gives a healthy start to your weekend.<br></li>
         <li style="font-family: cursive;"><span style="color:black;">Flexible Subscription</span> - Our subscription plans have flexible duration of 3 - 25 days. Trial subscription is also available.<br></li>
         <li style="font-family: cursive;"><span style="color:black;">Customer Service</span> - Quick and friendly customer service.<br></li>

     </ul>
    </div>
  </div>
 </div>



<!-- Container (How we Works Section) -->
<div id="howitworks" class="bg-1">
  <div class="container">
    <h3 class="text-center">How We Work</h3>
    
   <!--  <ul class="list-group">
      <li class="list-group-item">September <span class="label label-danger">Sold Out!</span></li>
      <li class="list-group-item">October <span class="label label-danger">Sold Out!</span></li> 
      <li class="list-group-item">November <span class="badge">3</span></li> 
    </ul>-->
    
    <div class="row text-center">
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="Images/b1.png"  alt="" width="400" height="300"/>
            <br/>
            <br/>
            <br/>
            <a href="#Pricing">Choose a Combo</a>
            <p>Select a North or South Combo</p>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img  src="Images/dish1.JPG"  alt="" width="400" height="300"/>
             <br/>
           <br/>
          <a href="#Pricing">Choose a Combo</a>

             <p>Subscribe and Pay</p>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="Images/bikedeli.jpg" alt="San Francisco" width="400" height="300"/>
             <br/>
            <br/>
          <a href="#Pricing">Choose a Combo</a>
          <p>Set up your table. Resubscribe.</p>
        </div>
      </div>
    </div>
  </div>
</div>
       

        <!--Subscription to Moms Spoon-->

        <div id="workFlow" style="background: #d9edf7;">
        <div class="container">
       <h2 style="text-align:center;">Subscribing to Mom'sSpoon</h2>
            <div class="row">
                <div class="col-md-6">
                    <p>You can subscribe to our plan<a href="#">&nbsp;&nbsp;www.Mom'sSpoon.com</a></p>
                    <h3>How it works ?</h3>
                    <ul>
                        <li>Select a meal plan from North Indian and South Indian meal plans.</li>
                        <li> Select a subscription duration. It ranges from 3 - 25 days.</li>
                        <li>Pay Online</li>    
                    </ul>
                    <p>Our service is from Mon-Sat</p>
                     <h3>Can I try the food? </h3>
                    <ul>
                        <li>Try out our yummy food first with a 5 days trial subscription.</li>
                        <li style="font:bold;"> My office is from Mon-Fri. I don't want food on Saturday. Is that fine?</li>
                        <li>After subscribing, drop us an email at care@mom'sSpoon.com. Meals on Saturdays will be cancelled.</li>    
                    </ul>

                     <h3>What if I want to skip a meal? </h3>
                    <ul>
                        <li>Sure, just drop us an email at care@mom'sSpoon.com a day in advance.</li>
                    </ul>

                    <h3>Delivery Timing</h3>
                    <ul>
                        <li>We try our best to deliver lunch and dinner between 11-1:30 pm and 7-9:30 pm respectively. We however do not provide any time guarantee.</li>
                    </ul>
                </div>
                <div class="col-md-6">
                  <img src="Images/workflow.png" alt="workflow" class="img-responsive" />
                </div>
            </div>
      </div>
      </div>


       
         <!-- Modal -->
 <div class="container">
  <!-- Trigger the modal with a button -->
   <!--<button type="button" class="btn btn-default btn-lg" id="myBtn">Login</button> -->
     
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
    
      <!-- Modal content-->
        <asp:UpdatePanel ID="upModal" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
            <ContentTemplate>
      <div class="modal-content" >
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span>Login</h4>
            <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
        </div>
        <div class="modal-body" style="padding:40px 50px;">

              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Email</label>
                <asp:TextBox ID="txtEmailer" runat="server"  TabIndex="1"   Placeholder="enter email"> </asp:TextBox>
    
    
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
                 <asp:TextBox ID="txtPwd"  TextMode ="Password" runat ="server"  Placeholder="enter password" TabIndex="2"></asp:TextBox>


               <asp:Button ID="loginBtn" runat="server" Text="Login"  TabIndex="3" style="background-color:#33b5e5; color:White;cursor:pointer; height: 40px;" OnClick="loginBtn_Click"/>
                </ContentTemplate>
        </asp:UpdatePanel>

        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          <p>Not a member? <a href="#">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>
        </div>
      </div>
      
    </div>
  </div> 
</div>
 


<!-- Container (Contact feedback Section) -->
<div id="contact" class="container" style="background: #222279;color:aliceblue;">
  <h3 class="text-center" style="font-size: 30px;color:aliceblue;">Contact Us</h3>
  <p>Give us your Feedback</p>
  <p class="text-center" style="color:aliceblue;">Welcome to Mom'sSpoon:{{name}}</p>
  <p class="text-center" style="color:aliceblue;">Email:{{email}}</p>
    
  <div class="row">
    <div class="col-md-4">
      <p>Vashi, India</p>
      <p>Phone: 987654321</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email: care@mom'sSpoon.com</p>
    </div>
    <div class="col-md-8">
    
      <div class="row">
        <div class="col-sm-6">
         
          <asp:TextBox ID="txtusername" runat="server"  Width="255px"  placeholder="Name"  ng-model="name"  style="border:2px solid #d8874c ;color:black;"></asp:TextBox>
           
        </div>
        
        <div class="col-sm-6 ">
            <asp:TextBox ID="txtuseremail"  runat="server" Width="255px"  placeholder="Email"  ng-model="email" style="border:2px solid #d8874c;color:black;"></asp:TextBox>
             
           
        </div>
      </div>
       <br/> 

         <asp:TextBox ID="txtCommentDetails" runat="server"  placeholder="Comment" style="border:2px solid #d8874c;color:black;"  TextMode="MultiLine" Height="80px" Width="65%" MaxLength="400" ></asp:TextBox>
        

      <br>
      <div class="row">
        <div class="col-md-12 ">

            <asp:Button ID="btnSend" runat="server" Text="Send"  style="border: 1px solid #333;background-color: #fff;color: #f5f5f5;background: #d8874c;width: 35%;height: 40px;" OnClick="btnSend_Click1" />
        </div>
      </div>
         
    </div>
      
  </div>
  <br>
  <h3 class="text-center" style="color:aliceblue;">From The Kitchen</h3>  
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Nikhil</a></li>
    <li><a data-toggle="tab" href="#menu1">Pratibha</a></li>
    <li><a data-toggle="tab" href="#menu2">Ashish</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h2>Nikhil ,Manager</h2>
      <p>food details and about info</p>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h2>Pratibha, Chef</h2>
      <p>Always a pleasure people! Hope you enjoyed it as much as I did. Could I BE.. any more pleased?</p>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h2>Ashish,Co-ordinater</h2>
      <p>I mean, sometimes I enjoy to code, but other times I enjoy other things.</p>
    </div>
  </div>
</div>
        <!--Order food section-->
        <div id="Pricing">
                <div class="container">
                    <div class="row">
                          <h3 style="text-align:center;">ORDER FOOD</h3>   
                          
                      <div class="sumtotal"></div>

                    <div class="col-sm-6">
                       
                        <p><img src="Images/vegicon.png" width="50" height="50"/><strong>Veg-Menu</strong></p>
                        
                        <br/>
                        <div class="table-responsive">

                          <table class="col-sm-12 table-bordered table-striped table-condensed cf">
                            

                             <tr>
                                 <th width="10" class="givePaint">No</th>
                                 <th class="givePaint">MealName</th>
                                 <th class="givePaint">Items(Veg)</th>
                                 <th class="givePaint">Price(Rs)</th>
                                 <th class="givePaint">Order</th>
                           </tr>
                            

                             <tr ng-repeat="x in foodDetails">
                                 <td >{{x.mealno}}</td>
                                 <td>{{x.mealname}}</td>
                                 <td>{{x.items}}</td>
                                 <td>{{x.price}}</td>
                                 <td><a href="Subscription.aspx?mealno={{x.mealno}}" class="btn btn-success vegbtn">Add to Cart</a></td>    
                             </tr>
                               
                         </table>
                           
  
                       </div>
                       </div>
                        <div class="col-sm-6">         
                        <p><img src="Images/nonvegicon.png" width="40" height="40"/><strong>Non-Veg Menu</strong></p>
                            <br/>
                          <div class="table-responsive">
                          <table class="col-sm-12 table-bordered table-striped table-condensed cf" style="margin-top: 10px;">
                             <tr>
                                 <th width="10" class="givePaint">No</th>
                                 <th class="givePaint">MealName</th>
                                 <th class="givePaint">Items(Veg)</th>
                                 <th class="givePaint">Price(Rs)</th>
                                 <th class="givePaint">Order</th>
                           </tr>

                             <tr ng-repeat="y in nonvegfoodDetails">
                                 <td>{{y.mealno}}</td>
                                 <td>{{y.mealname}}</td>
                                 <td>{{y.items}}</td>
                                 <td>{{y.price}}</td>
                                  <td><a href="Subscription.aspx?mealno={{y.mealno}}" class="btn btn-success">Add to Cart</a></td>
                             </tr>
                             
                         </table>
                      
                        </div>
                     </div>
                    </div>
                </div>
            </div>
             

<div id="googleMap"></div>
<!-- Add Google Maps -->
        <script src="https://maps.googleapis.com/maps/api/js"></script>
<script>
    var myCenter = new google.maps.LatLng(19.077065, 72.998993  );

    function initialize() {
        var mapProp = {
            center: myCenter,
            zoom: 12,
            scrollwheel: false,
            draggable: false,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };

        var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);

        var marker = new google.maps.Marker({
            position: myCenter,
        });

        marker.setMap(map);
    }

    google.maps.event.addDomListener(window, 'load', initialize);
</script>

<!-- Footer -->
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br/><br/>
  <p><a href="#" data-toggle="tooltip" title="Visit Mom'sSpoon">www.Mom'sSpoon.com</a></p> 
</footer>

<script src="Scripts/scroller.js"></script>
<script src="Scripts/main.js"></script> 

    </form>

</body>
</html>
