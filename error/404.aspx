<%@ Page Title="" Language="C#" MasterPageFile="~/m_LoginMaster.master" AutoEventWireup="true" CodeFile="404.aspx.cs" Inherits="Home" %>

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

