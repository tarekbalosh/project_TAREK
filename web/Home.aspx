<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Project_Alaa.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en" style="width: 100%;">

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
                <div id="navbar" class="navbar-collapse collapse" runat="server">
                    <ul class="nav navbar-nav navbar-right">                    
                        <li id="signin" ><a href="#" data-toggle="modal" data-target="#myModal"><i class="glyphicon glyphicon-user"></i>  تسجيل الدخول</a></li>                
                        <li id="signin"><a href="#TCC"><i class="glyphicon glyphicon-home"></i> الصفحة الرئيسية</a></li>
                    </ul>
                    <ul class="nav navbar-nav">                
                        <li><a href="#program">البرمجيات</a></li>
                        <li><a href="#network">الشبكات</a></li>
                        <li><a href="#computer">الحواسيب</a></li>
                    </ul>
                </div>
                </div>
          </nav>
      <div class="jumbotron text-center" id="main">
        <h1>المعهد التقاني للحاسوب</h1>
      
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


<div class="modal fade" id="myModal" role="dialog">
   <div class="modal-dialog">
   
     <!-- تسجيل الدخول-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h2 class="modal-title">Login</h2>
       </div>
       <div class="modal-body">
          
               <div class="form-group" id="user">
                 <label for="usr1" >Email :</label>
                 <input type="email" placeholder="@ .com" class="form-control" id="usr1" runat="server"/>
               </div>
               <div class="form-group" id="password">
                 <label for="pwd1" runat="server" >Password :</label>
                  <input type="password" placeholder="password" class="form-control" id="pwd1" runat="server"/>
               </div>                                
       </div>
       <div class="modal-footer">                            
         <button type="button" class="btn btn-default" data-dismiss="modal" runat="server">Close</button>
         <button type="reset"  class="btn btn-default" runat="server">Reset</button>
         <button type="submit" class="btn btn-default" runat="server" onserverclick="Submit_Click">Submit</button>        
      </div>
           
               
    </div>
  </div>
</div><br/>

<div  class="container">

      <label for="" id="year">Academic year<br />
      <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="770px">
          <asp:ListItem Selected="True"></asp:ListItem>
          <asp:ListItem Value="1">السنة الأولى</asp:ListItem>
          <asp:ListItem Value="2">السنة الثانية</asp:ListItem>
      </asp:DropDownList>
      </label>
&nbsp;</div>
    <br  id="program" />
      <br/>
    <div class="container-fluid">
       <h2 class="Title">Programming Specialization</h2>
      
        <div class="jumbotron" style="text-align:center" >
          
            <div class="row"  dir="rtl" style="text-align:center">
                <div class="container" style="width:35%">
              
                <asp:GridView ID="programmer2" style="text-align:center " runat="server" Font-Bold="True" Width="357px" ForeColor="Blue" >
                </asp:GridView>
              </div>
              </div>
            
         </div>

         <br  id="network" />
         <br/>
         <h2 class="Title">Networking Specialization</h2>
        <div class="jumbotron">
            <div class="row" id="pro" dir="rtl">
               <div class="container" style="width:35%">
              
                <asp:GridView ID="networkes2" style="text-align:center" runat="server" Font-Bold="True" Width="357px" ForeColor="Blue">
                </asp:GridView>
              </div>
              
              </div>
        </div>

        <br  id="computer" />
        <br/>
        <h2 class="Title">Computering Specialization</h2>
       <div class="jumbotron">
           <div class="row" id="pro" dir="rtl">
              <div class="container" style="width:35%">

               <asp:GridView ID="computers2" style="text-align:center" runat="server" Font-Bold="True" Width="357px" ForeColor="Blue">
               </asp:GridView>
             </div>
             </div>
       </div>
        </div>
     <br/>
     <br/>
     <footer id="End" class="container-fluid bg-4 text-center">
      <h1 id="welcome">Welcome You :)</h1> 
    </footer>
    </div>
  </form>
</body>
</html>
