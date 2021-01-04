<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete post.aspx.cs" Inherits="project.delete_post" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>add post</title>
    <link href="add_css/file.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
   
     <style>
        body
        {
             background-color: gray;
        }
        .comment
        {
            text-indent:20px;
            font-size:20px;
            text-align:left;
           position:relative;
           top:-5px;
       
        }
        .linee
        {
            height:2px;
            background-color:darkslategrey;
            width:600px;
            text-align:center;
            
        }
        .borderComment
        {
            border:solid 2px white;
            width:700px;
            height:55%;
            text-align:center;
            margin:auto;
            background-color:darkslategrey;
        }
        .leave
        {
            background-color:#eee;
             width:696px;
             font-weight:bold;
          
             height:25px;
            
        }
        .form-control
        {
             width:400px;
             height:200px;
             position:relative;
            
             margin:auto;
        }


         .btn-info
        {
            position:relative;
           


        }
         .Add
        {
           color:darkred;
        }
          .navv
        {
            height:60px;
            background-color:black;
            color:white;
            padding:10px;
            width:100%;
            text-align:center;
            position:relative;
          
       
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
         <h1 class="sub">المعهد التقاني للحاسوب</h1><br />
         <h2 class="Add">حذف منشور</h2><br />
           <hr class="linee" />
        <div class="borderComment">    
            <div class="leave">
        </div>
            <br />
           
            <asp:Label ID="Label1" runat="server" Text="title"></asp:Label>
            <br /><br />
           
            <asp:DropDownList ID="ddl_t_delet" runat="server"></asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="btn_delet_post" runat="server" Text="delete"  class="btn btn-info" OnClick="btn_delet_post_Click" /><br />
           </div>
           </div>
        </div>
    </form>
</body>
</html>
