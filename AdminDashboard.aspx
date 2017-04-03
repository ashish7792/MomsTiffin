<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminDashboard.aspx.cs" Inherits="AdminDashboard" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" ng-app="myAppmaster">
<head id="Head1" runat="server">
  <title>Admin|Dashboard</title>
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
          </style>
 </head>

<body ng-controller="mainCtrl">
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
        <li><a href="index.aspx" class="giveSpace">Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
     <div id="Div1" runat="server">
      <div class="container">
          <h1 style="text-align:center;color:darkgray;font-family: -webkit-pictograph;">ADMIN DASHBOARD</h1>
           <br/>
           <br/>
          <div class="row">
               <div class="col-md-12">
                   <div class="table-responsive">
                   <table class="table">
                       <tr>
                           <th>Name</th>
                           <th>Mobile No</th>
                           <th>Address</th>
                           <th>Lunch/Dinner</th>
                           <th>Date</th>
                           <th>TimeDuration</th>
                           <th>Mealno</th>
                           <th>Mealname</th>
                           <th>MealItem</th>
                           <th>Quantity</th>
                           <th>Price(Rs)</th>
                       </tr>

                       <tr ng-repeat ="a in displayAdminDashboard">
                            <td>{{a.username}}</td>
                            <td>{{a.mobileno}}</td>
                            <td>{{a.addrs}}</td>
                            <td>{{a.lord}}</td>
                            <td>{{a.subdate}}</td>
                            <td>{{a.tmduration}}</td>
                            <td>{{a.mno}}</td>
                            <td>{{a.mealnm}}</td>
                            <td>{{a.mealitem}}</td>
                            <td>{{a.qty}}</td>
                            <td>{{a.price}}</td>
  
                       </tr>
                   </table>
                       

                   </div>
               </div>
              </div>
          </div>
         </div>




    
    </form>
</body>
</html>
