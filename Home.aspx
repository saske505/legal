<%@ Page Title="" Language="C#" MasterPageFile="~/m_LoginMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadSection" Runat="Server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptSection" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="StyleSection" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ControlsSection" Runat="Server">
 
<div class="row">

       <div class="col-md-4">
        </div>

    <div class="col-md-4">
      <div id="loginScreen" class="card">
         <h2 class="transition btn btn-primary">Welcome please<br>
            <a href="#">Login</a></h2>                    
                          <div class="cta-container transition">
                              <a id="clicker" href="#" class="btn btn-small btn-primary">Or click here to register</a>
                          </div>
                          <div class="card_circle transition">                     
                      </div>
                        </div>
                 </div>
             <div class="col-md-4">
               </div>
  
            </div>  
            
          
    
        <style>


body {
    overflow: auto!important;
    
            }
.gn-menu-main {
  width: 100%;
  font-size: 13px;
  box-shadow: 0px 0px 6px 2px rgba(0, 0, 0, 0.12)!important;
  display: none!important;
}
            
.navbar-custom-menu {
  display: none!important;}
 @import url(http://fonts.googleapis.com/css?family=Noto+Sans:400,700,400italic,700italic);

/*html {
  background-image: url(http://cdn.backgroundhost.com/backgrounds/subtlepatterns/arches.png);
}
*/

.transition {
 
}

.card:hover {
  box-shadow: 0px 0px 60px 10px rgba(0,0,0,0.2);
 
}


.card_circle {
  height: 400px;
  width: 450px;
  background-color: #016B61;
  position: absolute;
  border-radius: 50%;
  
  margin-top: -270px;
}

.card:hover  {
  border-radius: 0;
 
}

h2 {
  text-align: center;
  margin-top: 190px;
  position: absolute;
  z-index: 9999;
  font-size: 26px;
  color: #545454;
  width: 100%;
  font-family: helvetica;
}
h2 small {
  font-weight: normal;
  font-size: 65%;
  color: rgba(0,0,0,0.5);
}

.card:hover h2 {
 
 
}

.card:hover h2 small {
  
}

.cta-container {
  text-align: center;
  margin-top: 290px;
  position: absolute;
  z-index: 9999;
  width: 100%;
  font-family: 'Noto Sans', serif;
}

.cta {
  color: #3487f7;
  border: 2px solid #3487f7;
  padding: 10px 25px;
  border-radius: 50px;
  font-size: 17px;
  text-decoration: none;
  font-weight: bold;
}

.card:hover .cta-container {
 

}
 </style>
      
   
 
   
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="PropertySection" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="EventSection" Runat="Server">
</asp:Content>

