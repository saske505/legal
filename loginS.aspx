<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginS.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
 
      <asp:Login ID="Login1" runat="server" Height="217px" OnAuthenticate="Login1_Authenticate" Width="415px">
    </asp:Login>
    </form>
    
</body>
</html>
