<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delet_student.aspx.cs" Inherits="project.delet_student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

      <title> Delet Student</title>
    <link href="add_css/file.css" rel="stylesheet" />
   
    <style>
        body
{
 background-color:gray;
 
}
        .delet {
    text-align: center;
    color: darkred;
    word-spacing: 5px;
    font-weight:bold;
}
        .borderDelet {
    border-radius: 100px;
    margin-left: 450px;
    text-align: center;
    background-color: darkslategrey;
    border: solid 4px #808080;
    padding-top: 60px;
    width: 400px;
}
      
        .D{
    color: darkred;
    letter-spacing: 4px;
    font-weight: bold;
    opacity: 0.7;
  
    font-size:25px;
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
<body>
    <form id="form1" runat="server">
        <div>
               <div class="containt">
                     <div class="navv">
                  <asp:Button ID="Button2" runat="server" class="ps2" Text="الصفحة الرئيسية" OnClick="Button2_Click" />
                </div>
         <h1 class="sub">المعهد التقاني للحاسوب</h1>
         <h2 class="delet">حذف طالب</h2>
            <div class="borderDelet">
            <p class="D">DELET</p>
               
                 <label class="nameCount">البريد</label><br />
            
                <asp:DropDownList ID="ddl_admin" runat="server" class="formControl"></asp:DropDownList>

                <br />
            
                <asp:Button ID="btn_delet" runat="server" Text="delete"  class="Delet" OnClick="btn_delet_Click"/><br />\
                 
          </div>
            </div>
        </div>
    </form>
     
    
</body>
</html>
