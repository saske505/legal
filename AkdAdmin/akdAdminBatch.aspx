<%@ Page Language="C#" AutoEventWireup="true" CodeFile="akdAdminBatch.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
    <div class="list-group">
    <div class="list-group-item">
        <div class="row-action-primary">
            <i class="mdi-file-folder"></i>
        </div>
        <div class="row-content">
            <div class="action-secondary"><i class="mdi-material-info"></i></div>
            <h4 class="list-group-item-heading">Batch Name</h4>
            <p class="list-group-item-text">Batch Contains <span class="badge">3</span> Files | Status <span class="label label-default">Draft</span></p>
        </div>
    </div>
    <div class="list-group-separator"></div>
    <div class="list-group-item">
        <div class="row-action-primary">
            <i class="mdi-file-folder"></i>
        </div>
        <div class="row-content">
            <div class="action-secondary"><i class="mdi-material-info"></i></div>
            <h4 class="list-group-item-heading">Batch Name</h4>
            <p class="list-group-item-text">Batch Contains <span class="badge">102</span> Files | Status <span class="label label-primary">Received by Courier</span></p>
        </div>
    </div>
    <div class="list-group-separator"></div>
    <div class="list-group-item">
        <div class="row-action-primary">
            <i class="mdi-file-folder"></i>
        </div>
        <div class="row-content">
            <div class="action-secondary"><i class="mdi-material-info"></i></div>
            <h4 class="list-group-item-heading">Batch Name</h4>
            <p class="list-group-item-text">Batch Contains <span class="badge">133</span> Files | Status <span class="label label-danger">Returned : Missing Documents</span></p>
        </div>
    </div>
    <div class="list-group-separator"></div>
</div>
        <script>
            $("#createBatchButton").click(function () {
                $("#success_origin").load("p_batches.aspx", function (response, status, xhr) {
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
