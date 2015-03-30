<%@ Page Language="C#" AutoEventWireup="true" CodeFile="akdAdminDoc.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   <div class="list-group">
    <div class="list-group-item">
        <div class="row-action-primary">
            <i class="mdi-file-folder"></i>
        </div>
        <div class="row-content">
            <div class="least-content">15m</div>
            <h4 class="list-group-item-heading"><a id="viewDoc" href="#">Download Sample Templates</a></h4>
            <p class="list-group-item-text">All Document Templates for Batch Uploading Documents Can Be Found Here</p>
        </div>
    </div>
    <div class="list-group-separator"></div>
    <div class="list-group-item">
        <div class="row-action-primary">
            <i class="mdi-file-folder"></i>
        </div>
        <div class="row-content">
            <div class="least-content">10m</div>
            <h4 class="list-group-item-heading">Coming Soon!</h4>
            <p class="list-group-item-text">Maecenas sed diam eget risus varius blandit.</p>
        </div>
    </div>
    <div class="list-group-separator"></div>
    <div class="list-group-item">
        <div class="row-action-primary">
            <i class="mdi-file-folder"></i>
        </div>
        <div class="row-content">
            <div class="least-content">8m</div>
            <h4 class="list-group-item-heading">Coming Soon!</h4>
            <p class="list-group-item-text">Maecenas sed diam eget risus varius blandit.</p>
        </div>
    </div>
    <div class="list-group-separator"></div>
</div>
    </div>
        <script>
            $("#viewDoc").click(function () {
                $("#success_origin").load("akdAdminDocView.aspx", function (response, status, xhr) {
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
