<%@ Page Title="" Language="C#" MasterPageFile="~/m_LoginMaster.master" AutoEventWireup="true" CodeFile="p_LoginPage.aspx.cs" Inherits="LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadSection" runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptSection" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="StyleSection" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ControlsSection" runat="Server">
    <asp:Login ID="Login1" runat="server" Height="217px" OnAuthenticate="Login1_Authenticate" Width="415px">
    </asp:Login>
    <div class="container" style="  text-align: center;  top: 20px;  position: relative;">
        <h6>Not a client? Click here to <a href="#">register</a></h6></div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="PropertySection" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="EventSection" runat="Server">
</asp:Content>

