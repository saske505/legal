<%@ Page Language="C#" AutoEventWireup="true" CodeFile="akdAdminUser.aspx.cs" Inherits="Default3" %>

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
             <fieldset>
                  <div class="form-group">
            <div class="togglebutton">
                    <label>
                        <input type="checkbox" checked=""> Read Documents 
                    </label>
                </div>
            <div class="togglebutton">
                    <label>
                        <input type="checkbox" checked=""> Write Documents
                    </label>
                </div>
            <div class="togglebutton">
                    <label>
                        <input type="checkbox" checked=""> Edit Documents
                    </label>
                </div>
                      </div>
                 </fieldset>

        </div>
    </div>
           </div>
        <div class="panel panel-default">
            <div class="panel-body">
        <h1>Matt's Permissions</h1>
        <h4>Batch Permissions</h4>
                <ul style="list-style:none;">
                    <li><i class="mdi-action-visibility"></i>Read  | <span class="label label-success">Yes</span></li>
                    <li><i class="mdi-content-gesture"></i>Write | <span class="label label-success">Yes</span></li>
                    <li><i class="mdi-content-create"></i>Edit  | <span class="label label-success">Yes</span></li>
                </ul>
        <h4>Document Permissions</h4>
                  <ul style="list-style:none;">
                    <li><i class="mdi-action-visibility"></i>Read  | <span class="label label-success">Yes</span></li>
                    <li><i class="mdi-content-gesture"></i>Write | <span class="label label-warning">No</span></li>
                    <li><i class="mdi-content-create"></i>Edit  | <span class="label label-success">Yes</span></li>
                </ul>
         </div>
</div>
        <style>
            
.iconMove {
  padding: 5px;
  padding-top: 5px;
  margin-top: 0px;
  position: relative;
  top: 5px;
  margin-right: 5px;


}


        </style>
       <script>
           $(document).ready(function () {
               $('ul li i').addClass('iconnMove');
           });

       </script>
    </form>
    
</body>
</html>
