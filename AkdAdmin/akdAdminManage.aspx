<%@ Page Language="C#" AutoEventWireup="true" CodeFile="akdAdminManage.aspx.cs" Inherits="AkdAdmin_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
 
   <div class="list-group">
    <div class="list-group-item">
        <div class="row-picture">
            <img class="circle" src="http://lorempixel.com/56/56/people/1" alt="icon">
        </div>
        <div class="row-content">
            <h4 class="list-group-item-heading"><a id="UserProfile" href="#">Matt Grey</a></h4>
            <p class="list-group-item-text">
                <span class="label label-default">Draft | 0</span>
                <span class="label label-primary">Complete | 12</span>
                <span class="label label-success">Submitted to Courier | 55</span>
                <span class="label label-warning">Need Attention | 2</span>
                <span class="label label-danger">Returned | 1</span>
                <span class="label label-info">Info Needed | 3</span>

            </p>
           
        </div>
    </div>
    <div class="list-group-separator"></div>
    <div class="list-group-item">
        <div class="row-picture">
            <img class="circle" src="http://lorempixel.com/56/56/people/6" alt="icon">
        </div>
        <div class="row-content">
            <h4 class="list-group-item-heading">Tile with another avatar</h4>
            <p class="list-group-item-text">Maecenas sed diam eget risus varius blandit.</p>
          
    </div>
    <div class="list-group-separator"></div>
    <div class="list-group-item">
        <div class="row-picture">
            <img class="circle" src="http://lorempixel.com/56/56/people/6" alt="icon">
        </div>
        <div class="row-content">
            <h4 class="list-group-item-heading">Tile with another avatar</h4>
            <p class="list-group-item-text">Maecenas sed diam eget risus varius blandit.</p>
          
        </div>
    </div>
    <div class="list-group-separator"></div>
</div>
    </div>
        <script>
            $("#UserProfile").click(function () {
         $("#success_origin").load("akdAdminUser.aspx", function(response, status, xhr) {
              if (status == "error_origin") {
                  var msg = "Sorry but there was an error when loading the page's content: ";
                  $("#error_origin").html(msg + xhr.status + " " + xhr.statusText);
              }
          });
         });
            </script>
    </form>
</body>
</html>
