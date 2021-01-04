<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_post.aspx.cs" Inherits="project.add_post" %>

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
         <h2 class="Add">اضافة منشور</h2><br />
         
        <div class="borderComment">    
            <div class="leave">
        </div>
            <br />
            <input class="formControl" id="post_tit" type="text" placeholder=" title" runat="server" />
            <asp:Label ID="title_lab" runat="server" Text="*" ForeColor="Red"></asp:Label>
            <br /><br />
                
             <label class="nameCount">
                الاختصاص</label><br />
            <asp:DropDownList ID="ddl_dept" runat="server"></asp:DropDownList>
            <br /><br />
            <label class="nameCount">
                post contain<asp:Label ID="post_lab" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </label><br />
            <textarea class="form-control" cols="20" rows="4" id="post" runat="server"></textarea><br />
             
             <asp:Button ID="btn_add_post" runat="server" class="btn btn-info" Text="ADD" OnClick="btn_add_post_Click" /><br /><br />
            
           </div>
           </div>

        </div>
    </form>
</body>
</html>
