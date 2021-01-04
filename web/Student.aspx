<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="Project_Alaa.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>المعهدالتقاني للحاسوب</title>
    <link rel="stylesheet" href="Main/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="style.css"/>   
    <script src="Main/js/jquery.js"></script>
    <script src="Main/js/bootstrap.min.js"></script>
    <script src="javascript.js"></script>
    </head>
<body id="TCC">
    <form id="form1" runat="server">
        <div>
             
          <nav class="navbar navbar-default navbar-fixed-top" data-spy="affix" data-offset-top="300" >
            <a href="#TCC" class="navbar-brand">TCC</a>
            <div class="container" id="navigation">
                <div class="navbar-header">            
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar">                
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">         
                      <li><a href="#" data-toggle="modal" data-target="#signOut">تسجيل الخروج  <i class="glyphicon glyphicon-log-out"></i></a></li>
                      <li><a href="#">المنشورات    <i class="glyphicon glyphicon-globe"></i></a></li>                                 
                        <li ><a href="#TCC">الصفحة الرئيسية   <i class="glyphicon glyphicon-home"></i></a></li>
                       
                    </ul>
                    <ul class="nav navbar-nav">                
                        <li><a href="#program">البرمجيات</a></li>
                        <li><a href="#network">الشبكات</a></li>
                        <li><a href="#computer">الحواسيب</a></li>
                    </ul>
                </div>
                </div>
          </nav>

          <!-- تسجيل الخروج-->
          <div class="modal fade" id="signOut" role="dialog">
            <div class="modal-dialog">
            
              <!-- Modal content-->
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Sign out </h4>
                </div>
                <div class="modal-body">
                  <p style="font-size: 30px;color:white; text-align: right;">هل تريد تسجيل الخروج ؟</p>
                </div>
                <div class="modal-footer">
                <asp:Button ID="btn_yes" runat="server" Text="Yes" class="btn btn-default" OnClick="btn_yes_Click" />
                  
                  <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
                </div>
              </div>              
            </div>
          </div>



      <div class="jumbotron text-center" id="main">
        <h1>معهد التقاني للحاسوب</h1>
      
      <div class="container">
      <div id="myCarousel" class="carousel slide" data-ride="carousel" style="border:2px solid rgb(255, 255, 255); margin-top: 25px;">
        <!-- Indicators -->

        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
    
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
          <div class="item active">
            <img src="Main/programmer.jpg" style="width:100%;"/>
            <div class="carousel-caption">
                <div class="container" style="text-align: left;">
                <h1 id="names">Programmer</h1>
            </div>
              </div> 
          </div>
    
          <div class="item">
            <img src="Main/networking.jpg" style="width:100%;"/>
            <div class="carousel-caption">
                <div class="container" style="text-align: right;">
                <h1 id="names">Networking</h1>
            </div>
              </div> 
          </div>
        
          <div class="item">
            <img src="Main/computers.jpeg"  style="width:100%;"/>
            <div class="carousel-caption">
                <div class="container" style="text-align: right;">
                <h1 id="names">Computers</h1>
            </div>
              </div> 
          </div>
        </div>
    
        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
          <span class="sr-only">Next</span>
        </a>
    </div>
  </div>
</div>





    <br  id="program" />
      <br/>
    <div class="container-fluid">
      <div id="program" runat="server">
       <h2 class="Title">Programming Specialization</h2>
      
        <div class="jumbotron" >
          
            <div class="row" >
              <div class="container" style="width:35%">

                  <asp:GridView ID="gridprograme" style="text-align:center" runat="server" Font-Bold="True" Width="357px" ForeColor="Blue">

                  </asp:GridView>

                  <br />
                  <br />
            </div>                      
              </div>
            
         </div>
        </div>

        <div id="network" runat="server">
         <br  id="network" />
         <br/>
         
         <h2 class="Title">Networking Specialization</h2>
        <div class="jumbotron">
            <div class="row">
              
              <div class="container" style="width:35%">
                  <asp:GridView ID="gridnetworke" style="text-align:center" runat="server" Font-Bold="True" Width="357px" ForeColor="Blue">

                  </asp:GridView>
            </div>
              
              </div>
        </div>
      </div>

      <div id="computer" runat="server">
        <br  id="computer" />
        <br/>
        <h2 class="Title">Computering Specialization</h2>
       <div class="jumbotron">
           <div class="row" >
             
            <div class="container" style="width:35%">
                <asp:GridView ID="gridcomputer" style="text-align:center" runat="server" Font-Bold="True" Width="357px" ForeColor="Blue"></asp:GridView>
          </div>
             
             </div>
       </div>
        </div>

      </div>
     <br/>
     <br/>
     <footer id="End" class="container-fluid bg-4 text-center">
      <h1 id="welcome">Welcome You :)</h1> 

        </div>
    </form>
</body>
</html>
