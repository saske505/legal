<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BatchDocView.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="batchOne">
         <div class="list-group">
    <div class="list-group-item">
        <div class="row-action-primary">
            <i class="mdi-file-folder"></i>
        </div>
        <div class="row-content">
            <div class="action-secondary"><i class="mdi-material-info"></i></div>
            <h4 class="list-group-item-heading"><a href="#">Batch Name</a> </h4>
            <p class="list-group-item-text">Batch Contains <span class="badge">102</span> Files | Status <span class="label label-primary">Received by Courier</span></p>
        </div>
    </div>
             <div id="loadGrid"></div>
             <script>
      
                </script>
    </div>
    </div>
        
        </div>
    </form>
</body>
</html>
