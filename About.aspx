<%@ Page Title="" Language="C#" MasterPageFile="~/m_LoginMaster.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadSection" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptSection" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="StyleSection" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ControlsSection" Runat="Server">
    <div class="container"> <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <div class="row">
            <div class="col-md-12">
                <h1></h1>
                <div class="page-header">
                  <h1 style="position: absolute; top: 85px;  cursor: default;  line-height: 85px;  text-align: center;  background: rgba(41, 166, 176, 0.31);  color: white;  font-size: 100px;  text-align: left;padding:45px">Welcome to the about us page <small style="color:black;font-size:29px;">Subtext for header</small></h1>
                </div>

            </div>
           </div>

    </div>
    
<section id="rotator">
  <div class="image"></div>
</section>
    <style>
        body {
  padding-top: 50px;
  padding-bottom: 20px;
  font-family: 'Roboto', sans-serif;
  font-weight: normal;
  overflow: auto!important;
 
}

       .container.body-content {

             position: absolute!important;
             border: none;
        }

    </style>
<section id="portfolio" style="background: white;  box-shadow: 1px 1px 1px 1px rgba(0, 0, 0, 0.2);  padding: 5px;">
  <h3>Design Portfolio</h3>
  <a href="#top">Back to top</a>
   <p>Maecenas vulputate lacus quam, id posuere nisl varius vel. Suspendisse libero dui, bibendum ac consequat nec, euismod eget diam. Etiam pellentesque tincidunt ipsum, eu imperdiet metus posuere consequat. Ut malesuada sem ac purus feugiat imperdiet. In ultrices odio non eros fermentum tempor. Aenean iaculis dapibus feugiat. Sed sit amet dapibus quam, et commodo urna. Fusce id tristique risus. Aenean elementum ligula vitae pellentesque facilisis. Vivamus lobortis enim eu purus ultrices fermentum. Suspendisse in auctor quam. Praesent pharetra, arcu id lacinia euismod, nunc felis molestie enim, eu luctus odio lacus id nunc.</p>
   <p>Suspendisse lobortis pulvinar erat, a tincidunt nulla porta eget. Pellentesque congue libero lacus, eget egestas dolor tempor ut. Pellentesque interdum turpis ut tincidunt congue. Vestibulum gravida tortor quis turpis porta pretium. Morbi gravida nulla in tellus fermentum interdum. Aliquam fermentum lectus vitae turpis facilisis dapibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In sit amet mollis lacus. Integer at justo vitae lacus elementum lacinia. Maecenas cursus nisi id sagittis malesuada. Phasellus euismod non mauris pretium dictum. Proin sit amet posuere felis. Maecenas dictum risus dapibus risus adipiscing, luctus fermentum augue pretium. Nulla a est et magna ornare mattis vel eget nulla. Pellentesque fringilla ipsum a tellus placerat rutrum. Pellentesque elit nisl, congue sed purus ac, elementum mattis sem.</p>
</section>

<section id="samples" style="background: white;  box-shadow: 1px 1px 1px 1px rgba(0, 0, 0, 0.2);  padding: 5px;">
  <h3>Work Samples</h3>
  <a href="#top">Back to top</a>
   <p>Maecenas vulputate lacus quam, id posuere nisl varius vel. Suspendisse libero dui, bibendum ac consequat nec, euismod eget diam. Etiam pellentesque tincidunt ipsum, eu imperdiet metus posuere consequat. Ut malesuada sem ac purus feugiat imperdiet. In ultrices odio non eros fermentum tempor. Aenean iaculis dapibus feugiat. Sed sit amet dapibus quam, et commodo urna. Fusce id tristique risus. Aenean elementum ligula vitae pellentesque facilisis. Vivamus lobortis enim eu purus ultrices fermentum. Suspendisse in auctor quam. Praesent pharetra, arcu id lacinia euismod, nunc felis molestie enim, eu luctus odio lacus id nunc.</p>
   <p>Suspendisse lobortis pulvinar erat, a tincidunt nulla porta eget. Pellentesque congue libero lacus, eget egestas dolor tempor ut. Pellentesque interdum turpis ut tincidunt congue. Vestibulum gravida tortor quis turpis porta pretium. Morbi gravida nulla in tellus fermentum interdum. Aliquam fermentum lectus vitae turpis facilisis dapibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In sit amet mollis lacus. Integer at justo vitae lacus elementum lacinia. Maecenas cursus nisi id sagittis malesuada. Phasellus euismod non mauris pretium dictum. Proin sit amet posuere felis. Maecenas dictum risus dapibus risus adipiscing, luctus fermentum augue pretium. Nulla a est et magna ornare mattis vel eget nulla. Pellentesque fringilla ipsum a tellus placerat rutrum. Pellentesque elit nisl, congue sed purus ac, elementum mattis sem.</p>
</section>

   <style>
       @import url(http://fonts.googleapis.com/css?family=Open+Sans);

body {
  color: #aaaaaa;
  height: 100%;
  font-family: 'Open Sans', sans-serif;
}
form#ctl01 {
  padding: 0px!important;
  background: rgba(255, 255, 255, 0)!important ;
  margin: 0px!important;
  box-shadow: 0px 0px 0px 0px rgba(0, 0, 0, 0.23)!important;
}
header { 
  text-align: left;
  padding: 30px 3.2%;
}

header img {
  width: 150px;
  float: right;
  margin: -100px 1.3% 0 0;
  opacity: 0.8;
}

h1 {
    color: #00A99D;
  text-transform: uppercase;
  font-size: 2em;
  font-weight: 300;
  line-height: 0.5em;
  margin-bottom: .1em;
  letter-spacing: -1px;
  text-indent: -2px;
}

h2 {
  font-size: 0.9em;
  font-weight: 300;
  text-transform: uppercase;
  letter-spacing: 0.5px;
  text-indent: 0;
}

h3 {
  color: white;
  background: #00A99D;
  padding: 10px 1.4%;
  font-size: 0.9em;
  font-weight: 300;
  text-transform: uppercase;
  letter-spacing: 1px;
  margin-bottom: 1em;
  border-top: 1px solid #00A99D;
}

h1, h2, h3, p {
  cursor: default;
}

p {
  color: #a0a0a0;
  font-size: 14px;
  line-height: 1.4em;
  letter-spacing: 0.8px;
  text-align: left;
  margin: 2px 0 10px 0;
  text-shadow: 0 1px white;
  padding-right: 10px;
}


nav a {
  font-size: 0.9em;
  color: #aaaaaa;
  text-decoration: none;
  text-transform: uppercase;
  letter-spacing: 1px;
  padding: 10px 1.4%;
  transition: background .5s;
  
}

nav a:hover {
  color: white;
  background: #0077bb;
  border-bottom: 1px solid #e6e6e6;
  border: 1px solid #0077bb;
  transition: border .5s;
}

section {
  width: 44.7%;
  margin: 10px 0 40px 3.2%;
  float: left;
}

section#rotator {
  width: 92.5%;
  height: 350px;
  background: url('http://srwallpapers.com/wp-content/uploads/2015/03/Material-Design-27.jpg');
  border-top: 1px solid #999999;
  border-bottom: 1px solid #999999;
  margin-bottom: 20px;
  background-size: contain;
}

section a, footer a {
  float: right;
  margin: -42px 1.4% 0 0;
  color: #8fcfff;
  text-transform: uppercase;
  font-size: .7em;
  font-weight: 300;
  letter-spacing: 1px;
  text-decoration: none;
}

section a:hover, footer a:hover {
  color: white;
}

section a.textlink, section a.textlink:hover {
  float: none;
  margin: 0;
  text-transform: none;
  color: #0077bb;
  font-size: 14px;
}

footer {
  clear: both;
  padding: 0 0 50px 3.2%;
  width: 92.5%;
}

footer #contactform {
  padding-top: 10px;
}

footer img {
  display: none;
}



/* Contact Form */
#contact {
  overflow: auto;
  color: #999999;
  width: 405px;
  margin: 30px auto 0 auto;
}
#contact #form {
  width: 405px;
  float: left;
}
#contact #form h2 {
  font: 40px 'Open Sans', Arial, Helvetica, sans-serif;
}
#contact #form span {
  display: block;
  float: left;
  width: 100px;
  padding-top: 5px;
  font: 14px 'Open Sans', Arial, Helvetica, sans-serif;
}
#contact #form input {
  float: left;
  width: 250px;
  border: 0px;
  color: #666666;
  padding: 8px 10px 10px 30px;
  font: 12px 'Open Sans', Arial, Helvetica, sans-serif;
  margin-bottom: 10px;
  border: 1px solid #dddddd;
}
#contact #form textarea {
  float: left;
  border: 0px;
  width: 250px;
  height: 140px;
  padding: 6px 10px 10px 30px;
  font: 12px 'Open Sans', Arial, Helvetica, sans-serif;
  color: #666666;
  border: 1px solid #dddddd;
  resize: none;
}
#contact #form input.name {
  background: url(http://img7.uploadhouse.com/fileuploads/17737/177370145f09fe433945815665aa214f80dbc6af.png) no-repeat 10px 8px;
}
#contact #form input.email {
  background: url(http://img6.uploadhouse.com/fileuploads/17737/177370138cc63992182149e9befabff3eafa6d23.png) no-repeat 10px 9px;
}
#contact #form input.captcha {
  background: url(http://img3.uploadhouse.com/fileuploads/17737/17737011310213e71805ecf2292144cbbecf42ad.png) no-repeat 10px 9px;
}
#contact #form textarea.message {
  background: url(http://img3.uploadhouse.com/fileuploads/17737/1773701229ed8c2f465a8274623ca8976adaf196.png) no-repeat 10px 8px;
}
#contact #form input.submit {
  cursor: pointer;
  width: 100px;
  height: 30px;
  line-height: 30px;
  float: right;
  padding: 0;
  margin: 10px 15px 0px 0px;
  background: #0077bb;
  color: white;
  font: 11px 'Open Sans', Arial, Helvetica, sans-serif;
  text-transform: uppercase;
  letter-spacing: 0.5px;
}
#contact #captcha span {
  width: 44px;
}
#contact #captcha input {
  background: url(http://img3.uploadhouse.com/fileuploads/17737/17737011310213e71805ecf2292144cbbecf42ad.png) no-repeat scroll 0 0 transparent;
  margin: 5px 0 0;
  padding: 0;
  border: medium none;
  cursor: pointer;
  width: 15px;
}




@media all and (min-width: 1281px) {
  nav a, h3 {
    padding: 10px 15px;
  }
  section a, footer a {
    margin-right: 15px;
  }
}


@media all and (max-width: 1280px) {
  header {
    padding: 25px 3.2%;
  }
  header img {
    margin-top: -93px;
  }
  nav a {
    padding: 10px 1%;
  }
  h3 {
    padding: 10px 2%;
  }
}


@media all and (min-width: 769px) and (max-width: 1024px) {
  header {
    padding: 5px 3.2%;
  }
  header img {
    width: 100px;
    margin-top: -65px;
  }
  nav a {
    padding: 10px 1%;
    font-size: .7em;
    letter-spacing: 0.5px;
  }
  h3 {
    padding: 10px 2%;
    font-size: .8em;
  }
  h3#contact {
    padding: 10px;
  }
  section a, footer a {
    margin: -40px 10px 0 0;
  }
  p {
    font-size: .8em;
  }
}


@media all and (min-width: 767px) and (max-width: 768px) {
  header {
    padding: 5px 3.2%;
  }
  header img {
  display: none;
  }
  nav {
    width: 92.5%;
    margin: 0 0 0 3.2%;
    padding: 0;
  }
  nav a {
    text-align: center;
    width: 19%;
    margin-left: .25%;
    display: inline-block;
    font-size: 0.7em;
    letter-spacing: 0.5px;
    padding: 10px 0;
  }
  nav a:first-child {
    margin-left: 0;
  }
  h3 {
    padding: 10px 2%;
    font-size: .7em;
  }
  h3#contact {
    padding: 10px;
  }
  section a, footer a {
    margin: -37px 7px 0 0;
  }
  p {
    font-size: .8em;
  }
}


@media all and (max-width: 766px) {
  header {
    padding: 0;
    margin: 0 0 15px 3.2%;
    border-bottom: 1px solid #e0e0e0;
    width: 92.5%;
  }
  h1 {
    line-height: .2em;
    font-size: 170%;
  }
  h2 {
    font-size: 70%;
  }
  header img, nav {
    display: none;
  }
  section {
    margin-bottom: 0;
    width: 92.5%;
  }
  section#rotator {
    margin: 0 3.2%;
  }
  footer {
    padding-bottom: 20px;
  }
  footer img {
    display: block;
    width: 100%;
  }
}

@media all and (max-width: 320px) {
  h3 {
    padding: 10px;
    font-size: .7em;
  }
  section a, footer a {
    margin: -37px 10px 0 0;
  }
  #contact {
    margin: 0 0 20px 0;
    width: 100%;
  }
  #contact #form {
    width: 100%;
  }
  #contact #form input, #contact #form textarea {
    width: 224px;
  }
  #contact #captcha {
    width: 100px;
  }
  #contact #captcha span {
    float: left;
    padding: 0 5px;
    width: auto;
    color: #0077bb;
    font-weight: bold;
  }
  #contact #captcha input {
    width: 20px;
    margin: 2px 0 0 3px;
  }
  #contact #form input.submit {
    margin-right: 0;
  }
}

   </style>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="PropertySection" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="EventSection" Runat="Server">
</asp:Content>

