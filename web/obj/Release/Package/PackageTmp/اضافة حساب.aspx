<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="اضافة حساب.aspx.cs" Inherits="project.اضافة_حساب" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> add admin </title>
    
    <link href="add_css/file.css" rel="stylesheet" />
    <script src="main/js/bootstrap.min.js"></script>
   <style>

        body {
    background-color: gray;
}
          .Delet-S {
    border-color: white;
   font-weight:bold;
    text-align: center;
   
    border-radius: 70px;
    width: 150px;
    height: 40px;
    background-color: burlywood;
    padding: 10px;
   
    cursor: pointer;
    opacity: 0.8;
   
}
        .borderST 
        {
         border-radius: 100px;
         margin-right: 450px;
         text-align: center;  
         padding-top: 60px;
         background-color:saddlebrown;
         border:solid 4px #808080;
         width: 400px;
        }
        
        .dis
        
       { 
            text-align: center;
         font-weight: bolder;
         
         color: black;
        
      }
        .form-control 
        {
             border-color: white;
             width: 150px;
             background-color: burlywood;
             border-radius: 500px;
             color:darkgreen;
             font-weight:bold;
             margin-right:120px;
  }
          .navv
        {
            height:40px;
            background-color:black;
            color:white;
            padding:10px;
            width:100%;
            text-align:center;
            position:relative;
           top:-6px
       
        }
       .ps2 {
           background-color: black;
           margin-left: 1100px;
           color: white;
           border: none 1px black;
           text-align: center;
           position: relative;
           cursor: pointer;
           font-size: 20px;
           font-weight: bold;
       }

       
    </style>
</head>
<body dir="rtl">
       
    <form id="form1"  runat="server">
        <div class="containt">
            <div class="navv">
                  <asp:Button ID="Button2" runat="server" class="ps2" Text="الصفحة الرئيسية" OnClick="Button2_Click"  />
                </div>
          <h1 class="sub">المعهد التقاني للحاسوب</h1>
        <h2 class="Add">اضافة حساب</h2>
            <div class="borderAdd">
     
        <div class="form-group">
              <label class="nameCount"> الاسم الاول</label><br />
        <asp:Label ID="first_n_lab" runat="server" Text="*" ForeColor="Red"></asp:Label>
            <input  type="text" id="FName" class="formControl" placeholder="First Name" runat="server" /><br /><br />
            </div>
                <label class="nameCount">
                الاسم الاخير</label><br />
                <asp:Label ID="last_n_lab" runat="server" Text="*" ForeColor="Red"></asp:Label>
        <input class="formControl" id="LName" type="text" placeholder="Last Name" runat="server" /><br /><br />
              <label class="nameCount">البريد الالكتروني</label><br />
                <asp:Label ID="email_lab" runat="server" Text="*" ForeColor="Red"></asp:Label>
        <input type="text" id="gmil" class="formControl" placeholder="Enter your Emil" runat="server" /> <br /> <br />
     
       
           <label class="nameCount">كلمة السر</label><br /> 
                <asp:Label ID="pass_lab" runat="server" Text="*" ForeColor="Red"></asp:Label>
        <input type="password" id="pass" class="formControl" placeholder="Enter your password" runat="server"/> 
                <br /><br />
     
        <asp:Button ID="Button1" class="Delet" runat="server" Text="ADD" OnClick="Button1_Click" />
        <br /><br />  
            
            </div>
            </div>
    </form>
    <br />
    <script src="css/project.js"></script>
</body>
</html>
