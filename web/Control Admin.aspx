<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Control Admin.aspx.cs" Inherits="project.Control_Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title >Control Admin </title>
    
    <link href="add_css/file.css" rel="stylesheet" />
    
    <link href="main/css/bootstrap.min.css" rel="stylesheet" />
    <script src="css/jquery.js"></script>  
    <script src="css/bootstrap.min.js"></script>
    <script src="javascript.js"></script>
     <style>
        input{
            cursor:pointer;
        }
        .navv
        {
            height:40px;
            background-color:black;
            color:white;
            padding:10px;
            text-align:center;
            position:relative;
            top:10px;
       
        }
     .ps2
     {
         background-color:black;
         margin-left:1100px;
         color:white;
         border:none 1px black;
         text-align:center;
        position:relative;
       top:-4px;
         cursor:pointer;
         font-size:20px;
         font-weight:bold;

     }
  
    </style>
</head>
<body>
    <form id="form1" runat="server">
      

        <div class="containt">
            <div class="navv">
                  <asp:Button ID="Button12" runat="server" class="ps2" Text="تسجيل خروج" OnClick="Button1_Click" />
                </div>
             <h1 class="sub">المعهد التقاني للحاسوب</h1>
             <h2 class="delet">لوحة التحكم</h2>
            <div class="borderST">
                     
                </div><br /><br />

                 <div class="">
           
                     <asp:Button ID="add_stu" runat="server" Text="اضافة طالب " class="Mbtn" OnClick="add_stu_Click" />
                     <asp:Button ID="del_stu" runat="server" Text="حذف طالب" class="Mbtn" OnClick="del_stu_Click" />
                     <asp:Button ID="des_stu" runat="server" Text="ادارة الطلاب" class="Mbtn" OnClick="des_stu_Click" />
                     <br />
                     <br />
                     <br />

                     <asp:Button ID="sub_add" runat="server" Text="اضافة مادة"  class="Mbtn" OnClick="sub_add_Click"/>
                     <asp:Button ID="sub_edite" runat="server" Text="حذف وتعديل مادة"  class="Mbtn" OnClick="sub_edite_Click"/>
                     <asp:Button ID="sub_dis" runat="server" Text="استعراض المواد"  class="Mbtn" OnClick="sub_dis_Click" />
                </div><br /><br />

                <div class="">

                    <asp:Button ID="post_add" runat="server" Text="اضافة منشور"   class="Mbtn" OnClick="post_add_Click"/>
                    <asp:Button ID="post_del" runat="server" Text="حذف منشور"   class="Mbtn" OnClick="post_del_Click"/>
                    <asp:Button ID="post_dis" runat="server" Text="استعراض المنشورات"  class="Mbtn" OnClick="post_dis_Click" />

                </div><br /><br />

                 <div class="">

                     <asp:Button ID="ac_add" runat="server" Text="اضافة حساب ادمن"   class="Mbtn" OnClick="ac_add_Click"/>
                     <asp:Button ID="ac_del" runat="server" Text="حذف حساب ادمن"  class="Mbtn" OnClick="ac_del_Click" />
                     <asp:Button ID="ac_dis" runat="server" Text="استعراض حساب ادمن"  class="Mbtn" OnClick="ac_dis_Click"/>


                </div><br />
        </div>
            
    </form>
</body>
</html>
