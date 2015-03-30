<%@ Page Title="" Language="C#" MasterPageFile="~/m_LoginMaster.master" AutoEventWireup="true" CodeFile="Support.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadSection" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptSection" Runat="Server">
    <script src="../Scripts/jquery-1.10.2.js"></script>
    <link href="../Content/Site.css" rel="stylesheet" />
    <link href="../Content/Site.css" rel="stylesheet" />
    <link href="../Content/dist/css/material-fullpalette.css" rel="stylesheet" />
    <link href="../Content/dist/css/material-fullpalette.min.css" rel="stylesheet" />
    <link href="../Content/dist/css/material.css" rel="stylesheet" />
    <link href="../Content/dist/css/material.min.css" rel="stylesheet" />
    <link href="../Content/dist/css/ripples.css" rel="stylesheet" />
    <link href="../Content/dist/css/ripples.min.css" rel="stylesheet" />
    <link href="../Content/dist/css/roboto.css" rel="stylesheet" />
    <link href="../Content/dist/css/roboto.min.css" rel="stylesheet" />
    <script src="../Content/dist/js/material.min.js"></script>
    <script src="../Content/dist/js/material.js"></script>
    <script src="../Content/dist/js/ripples.js"></script>
    <script src="../Scripts/menu.js"></script>
    <script src="../Scripts/modernizr.custom.js"></script>
    <script src="../Scripts/global.js"></script>
    <script src="../Scripts/classie.js"></script>
    <script src="../Scripts/gnmenu.js"></script>
    <script src="../Content/dist/js/ripples.min.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="StyleSection" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ControlsSection" Runat="Server">
    <div class="container-fluid">
        <blockquote>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
    <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
</blockquote>
      <table class="table table-striped table-hover ">
    <thead>
        <tr>
            <th>#</th>
            <th><i class="mdi-communication-call"></i></th>
            <th>Name</th>
            <th>Department</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
        </tr>
        <tr class="info">
            <td>3</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
        </tr>
        <tr class="success">
            <td>4</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
        </tr>
        <tr class="danger">
            <td>5</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
        </tr>
        <tr class="warning">
            <td>6</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
        </tr>
        <tr class="active">
            <td>7</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
        </tr>
    </tbody>
</table>

           </div>

     <script>
            new gnMenu(document.getElementById('gn-menu'));
		</script>
        <script>
        $(document).ready(function() {
            $('li i').addClass('moveAway');

        });
       </script>
        <script>
            $(document).ready(function() {
                $('#manageProfile').click(function() {
                    $('#manageProfile li').attr('href', 'ClientProfile.aspx');
                });
            });

        </script>

        <script>
            $(document).ready(function () {
                $('ul.gn-submenu li a').addClass('navMove');
            });
        </script>
   
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="PropertySection" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="EventSection" Runat="Server">
</asp:Content>

