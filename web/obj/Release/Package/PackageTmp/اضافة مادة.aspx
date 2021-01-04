<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="اضافة مادة.aspx.cs" Inherits="project.اضافة_مادة" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> add meteria</title>
    <link href="add_css/file.css" rel="stylesheet" />
    <style>
        select
       {
            border-color: white;
            width:150px;
            border-radius:500px;
           background-color:burlywood
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
<body dir="rtl" runat="server" onmouseup="bod()">
     <form id="form1" runat="server">

         <div class="containt">
              <div class="navv">
                  <asp:Button ID="Button2" runat="server" class="ps2" Text="الصفحة الرئيسية" OnClick="Button2_Click" />
                </div>


         <h1 class="sub">المعهد التقاني للحاسوب</h1>
         <h2 class="Add">اضافة مادة</h2>

        <div class="borderMeta">    
            
            <label class="nameCount">اسم المادة</label> <br />
            <asp:Label ID="sub_n_lab" runat="server" ForeColor="Red" Text="*"></asp:Label>
            <input class="formControl" type="text" id="n_subject" placeholder="Meteria Nmme" runat="server" onclick=" N_M()"/><br /><br />
             <label class="nameCount">اسم المدرس</label> <br />
            <asp:Label ID="techer_n_lab" runat="server" ForeColor="Red" Text="*"></asp:Label>
            <input class="formControl" type="text" id="n_techer" placeholder="Techer Name" runat="server" onclick="T_M()"/><br /><br />
            
           
            <label class="nameCount">الاختصاص</label> <br />
            <select id="select_dept" class="Sel" runat="server" onclick="jurisd()">
                <option></option>
                <option></option>
              
            </select><br /><br />
             <label class="nameCount"> السنة الدراسية</label> <br /> 
            <select id="select_year" class="Sel" onclick=" year()" runat="server">
                <option> 1</option>
                <option>2</option>
            </select>
            <br /><br />
           <label class="nameCount"> توصيف</label> <br />
            <asp:Label ID="desc_lab" runat="server" ForeColor="Red" Text="*"></asp:Label>
            <input type="text" class="formControl" placeholder=" input description" id="describe" runat="server" onclick="description()"/><br /><br />
            <asp:Button ID="btn_add" runat="server" Text="ADD" class="Delet" OnClick="btn_add_Click" />
            </div>
                  </div>
                         </form>
   
      <script src="css/project.js"></script>
    <script>
       
    </script>
</body>
</html>

