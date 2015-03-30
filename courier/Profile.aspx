<%@ Page Title="" Language="C#" MasterPageFile="~/m_LoginMaster.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadSection" Runat="Server">
   <script src="../Scripts/jquery-1.10.2.js"></script>
    <script src="../Content/dist/js/material.js"></script>
    <script src="../Content/dist/js/material.min.js"></script>
    <script src="../Content/dist/js/ripples.js"></script>
    <script src="../Content/dist/js/ripples.min.js"></script>
    <link href="../Content/dist/css/material-fullpalette.css" rel="stylesheet" />
    <link href="../Content/dist/css/material-fullpalette.min.css" rel="stylesheet" />
    <link href="../Content/dist/css/material.css" rel="stylesheet" />
    <link href="../Content/dist/css/material.min.css" rel="stylesheet" />
    <link href="../Content/dist/css/ripples.css" rel="stylesheet" />
    <link href="../Content/dist/css/ripples.min.css" rel="stylesheet" />
    <link href="../Content/dist/css/roboto.css" rel="stylesheet" />
    <link href="../Content/dist/css/roboto.min.css" rel="stylesheet" />
    <link href="../Content/Site.css" rel="stylesheet" />
    <script src="../Scripts/gnmenu.js"></script>
    <script src="../Scripts/classie.js"></script>
    <script src="../Scripts/modernizr.custom.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptSection" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="StyleSection" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ControlsSection" Runat="Server">

  <div class="container"> <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <div class="row">
           <div class="jumbotron">
    <h1><asp:BoundField DataField="" HeaderText="Employee ID" ReadOnly="true"/>   </h1>
 <div class="btn-group">
  <a id="newBatch" class="btn btn-small btn-primary" href="#">Batch Management</a>
  <a id="newDoc" class="btn btn-small btn-primary" href="#" >Batch Approval</a>
  <a id="newManage" class="btn btn-small btn-primary" href="#">Recent Activty </a>
 </div>
</div>
<input id="OrderID" name="OrderID" value="{{: OrderID}}" disabled="disabled" hidden="hidden"
                        class="field inputtext valid disable" style="text-align: right; width: 116px; height: 28px" />

     <div id="success_origin">
            <div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Latest</h3>
    </div>
    <div class="panel-body">
       <div class="list-group">
    <div class="list-group-item">
        <div class="row-picture">
            <img class="circle" src="http://lorempixel.com/56/56/people/1" alt="icon">
        </div>
        <div class="row-content">
            <h4 class="list-group-item-heading">Tile with avatar</h4>
            <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus</p>
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
    </div>
    <div class="list-group-separator"></div>
    <div class="list-group-item">
        <div class="row-action-primary checkbox">
            <label><input type="checkbox"></label>
        </div>
        <div class="row-content">
            <h4 class="list-group-item-heading">Tile with a checkbox in it</h4>
            <p class="list-group-item-text">Donec id elit non mi risus varius blandit.</p>
        </div>
    </div>
    <div class="list-group-separator"></div>
</div>
    </div>
</div>

<div class="list-group">
    <div class="list-group-item">
        <div class="row-action-primary">
            <i class="mdi-file-folder"></i>
        </div>
        <div class="row-content">
            <div class="least-content">15m</div>
            <h4 class="list-group-item-heading">Tile with a label</h4>
            <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus.</p>
        </div>
    </div>
    <div class="list-group-separator"></div>
    <div class="list-group-item">
        <div class="row-action-primary">
            <i class="mdi-file-folder"></i>
        </div>
        <div class="row-content">
            <div class="least-content">10m</div>
            <h4 class="list-group-item-heading">Tile with a label</h4>
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
            <h4 class="list-group-item-heading">Tile with a label</h4>
            <p class="list-group-item-text">Maecenas sed diam eget risus varius blandit.</p>
        </div>
    </div>
    <div class="list-group-separator"></div>
</div>
                </div>
            </div>
      </div>
            <!-- test dropdown-->

            <style>
  #dropdown-menu h2 {
    padding: 14px;
    margin: 0;
    font-size: 16px;
    font-weight: 400;
  }
  #dropdown-menu .sample {
    width: 200px;
  }
  #dropdown-menu .form-group {
    margin: 30px 0;
  }
</style>

<style>
  #shadow h2 {
    padding: 14px;
    margin: 0;
    font-size: 16px;
    font-weight: 400;
  }
  #shadow .sample {
    width:  100px;
    height: 100px;
    margin: 16px;
    padding: 16px;
    display: inline-block;
  }
  #shadow-sample2 {
    display: inline-block;
    width:  100px;
    height: 100px;
    margin: 16px;
    padding: 16px;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    user-select: none;

  }
  #shadow-sample3 {
    display: inline-block;
    width:  100px;
    height: 100px;
    margin: 16px;
    padding: 16px;
    border-radius: 100px;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    user-select: none;
  }

    body {
      overflow: auto!important;
    }
</style>
        <script>
            new gnMenu(document.getElementById('gn-menu'));
		</script>
            <script>
                $("#newBatch").click(function () {
                    $("#success_origin").load("grid3.html", function (response, status, xhr) {
                        if (status == "error_origin") {
                            var msg = "Sorry but there was an error when loading the page's content: ";
                            $("#error_origin").html(msg + xhr.status + " " + xhr.statusText);
                        }
                    });
                });
                $("#newDoc").click(function () {
                    $("#success_origin").load("Doc.aspx", function (response, status, xhr) {
                        if (status == "error_origin") {
                            var msg = "Sorry but there was an error when loading the page's content: ";
                            $("#error_origin").html(msg + xhr.status + " " + xhr.statusText);
                        }
                    });
                });
                $("#newManage").click(function () {
                    $("#success_origin").load("Manage.aspx", function (response, status, xhr) {
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
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="PropertySection" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="EventSection" Runat="Server">
</asp:Content>

