<%@ Page Title="" Language="C#" MasterPageFile="~/m_LoginMaster.master" AutoEventWireup="true" CodeFile="ClientProfile.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadSection" Runat="Server">
    <script src="Content/dist/js/material.js"></script>
    <script src="Content/dist/js/material.min.js"></script>
    <script src="Content/dist/js/ripples.js"></script>
    <script src="Content/dist/js/ripples.min.js"></script>
    <link href="Content/dist/css/material-fullpalette.css" rel="stylesheet" />
    <link href="Content/dist/css/material-fullpalette.min.css" rel="stylesheet" />
    <link href="Content/dist/css/material.css" rel="stylesheet" />
    <link href="Content/dist/css/material.min.css" rel="stylesheet" />
    <link href="Content/dist/css/ripples.css" rel="stylesheet" />
    <link href="Content/dist/css/ripples.min.css" rel="stylesheet" />
    <link href="Content/dist/css/roboto.css" rel="stylesheet" />
    <link href="Content/dist/css/roboto.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptSection" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="StyleSection" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ControlsSection" Runat="Server">

  <div class="container"> <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <div class="row">
           <div class="jumbotron">
    <h1>Client Name</h1>
    <p>Information about the client</p>
    <ul class="nav nav-pills">
    <li class="active"><a href="javascript:void(0)">Home <span class="badge">42</span></a></li>
    <li><a href="javascript:void(0)">Profile <span class="badge"></span></a></li>
    <li><a href="javascript:void(0)">Updates <span class="badge">3</span></a></li>
</ul>
</div>

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
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="PropertySection" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="EventSection" Runat="Server">
</asp:Content>

