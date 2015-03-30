<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Batch.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div id="editControlsMaterial">
                <div class="btn-group">
                     <button class="btn btn-fab btn-raised btn-primary"><i class="mdi-content-add-circle"></i></button>
                    <button class="btn btn-fab btn-raised btn-primary"><i class="mdi-image-edit"></i></button>
                    <button class="btn btn-fab btn-raised btn-primary"><i class=" mdi-content-remove-circle"></i></button>                
                </div>
            
            </div>
        <div class="row">
<div class="col-md-3">
<div class="alert alert-dismissable alert-info">
    <button type="button" class="close" data-dismiss="alert">×</button>
    <strong>Heads up!</strong> This <a href="javascript:void(0)" class="alert-link">alert will indicate that a document or batch needs</a>attention | Some kick ass features are
    on it's way.
</div>
</div>
<div class="col-md-3">
<div class="alert alert-dismissable alert-success">
    <button type="button" class="close" data-dismiss="alert">×</button>
    <strong>Heads up!</strong> This <a href="javascript:void(0)" class="alert-link">alert needs your attention</a>, but it's not super important.
</div>
</div>
<div class="col-md-3">
<div class="alert alert-dismissable alert-warning">
    <button type="button" class="close" data-dismiss="alert">×</button>
    <strong>Heads up!</strong> This <a href="javascript:void(0)" class="alert-link">alert needs your attention</a>, but it's not super important.
</div>
</div>
<div class="col-md-3">
<div class="alert alert-dismissable alert-danger">
    <button type="button" class="close" data-dismiss="alert">×</button>
    <strong>Heads up!</strong> This <a href="javascript:void(0)" class="alert-link">alert needs your attention</a>, but it's not super important.
</div>
</div>
</div>
        <div class="progress">
    <div class="progress-bar progress-bar-info" style="width: 20%"></div>
</div>

<div class="progress">
    <div class="progress-bar progress-bar-success" style="width: 40%"></div>
</div>

<div class="progress">
    <div class="progress-bar progress-bar-warning" style="width: 60%"></div>
</div>

<div class="progress">
    <div class="progress-bar progress-bar-danger" style="width: 80%"></div>
</div>
    <div class="list-group">
    <div class="list-group-item">
        <div class="row-action-primary">
            <i class="mdi-file-folder"></i>
        </div>
        <div class="row-content">
            <div class="action-secondary"><i class="mdi-material-info"></i></div>
             <h4 class="list-group-item-heading"><a id="openBatch" href="#">Batch 1 | Client : Client 34</a> </h4>
            <p class="list-group-item-text">Batch Contains <span class="badge">3</span> Files | Status <span class="label label-default">Review</span></p>
        </div>
    </div>
    <div class="list-group-separator"></div>
    <div class="list-group-item">
        <div class="row-action-primary">
            <i class="mdi-file-folder"></i>
        </div>
        <div class="row-content">
            <div class="action-secondary"><i class="mdi-material-info"></i></div>
            <h4 class="list-group-item-heading"><a id="openBatchTwo" href="#">Batch 2 | Client : Client 1</a> </h4>
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
    </form>
    <script>
        $("#openBatch").click(function () {
            $("#success_origin").load("BatchDocView.aspx", function (response, status, xhr) {
                if (status == "error_origin") {
                    var msg = "Sorry but there was an error when loading the page's content: ";
                    $("#error_origin").html(msg + xhr.status + " " + xhr.statusText);
                }
            });
        });
        $("#openBatchTwo").click(function () {
            $("#success_origin").load("BatchDocViewTwo.aspx", function (response, status, xhr) {
                if (status == "error_origin") {
                    var msg = "Sorry but there was an error when loading the page's content: ";
                    $("#error_origin").html(msg + xhr.status + " " + xhr.statusText);
                }
            });
        });
    </script>
</body>
</html>
