<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="حذف حسابات.aspx.cs" Inherits="project.حذف_حسابات" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> delet profile</title>
    
    <link href="add_css/file.css" rel="stylesheet" />
   
    <style>
      
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
    <form id="form1" runat="server">
        <div class="containt">
             <div class="navv">
                  <asp:Button ID="Button2" runat="server" class="ps2" Text="الصفحة الرئيسية" OnClick="Button2_Click" />
                </div>
         <h1 class="sub">المعهد التقاني للحاسوب</h1>
        <h2 class="delet">حذف حساب</h2>
            <div class="border">
            <p class="login">DELET</p>
           <label class="nameCount">اسم الحساب</label><br /><br />
                <asp:DropDownList ID="ddl_email" runat="server"  class="formControl"></asp:DropDownList>
                <br /><br />      
                <asp:Button ID="btn_del" runat="server" Text="Delete" class="Delet" OnClick="btn_del_Click" />
            <br />
            <br />
        </div>
            </div>
    </form>
   
   <!-- <script src="css/project.js"></script> -->
</body>
</html>
