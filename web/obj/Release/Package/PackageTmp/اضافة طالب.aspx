<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="اضافة طالب.aspx.cs" Inherits="project.اضافة_طالب" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> add student</title>
   
    <link href="add_css/file.css" rel="stylesheet" />
   
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
       .gwed{
           margin-left:750px;
           margin-bottom:100px;

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
             <h2 class="delet">اضافة طالب</h2>
            <div class="borderST">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" class="gwed">
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>

            <label class="nameCount">اسم الطالب</label><br />
                <asp:Label ID="stu_n_lab" runat="server" ForeColor="Red" Text="*"></asp:Label>
            <input type="text" id="NAME" class="formControl" runat="server"/><br /><br />
             <label class="nameCount">اسم الاب</label><br />
                <asp:Label ID="fastu_n_lab" runat="server" ForeColor="Red" Text="*"></asp:Label>
            <input type="text" id="NF"  class="formControl" runat="server"/><br /><br />
            <label class="nameCount">الكنية</label><br />
                <asp:Label ID="nickname_lab" runat="server" ForeColor="Red" Text="*"></asp:Label>
            <input type="text" id="nicke_name"  class="formControl" runat="server"/><br /><br />
             <label class="nameCount">اسم الام</label><br />
                <asp:Label ID="mastu_n_lab" runat="server" ForeColor="Red" Text="*"></asp:Label>
            <input type="text" id="NM" class="formControl" runat="server"/><br /><br />
            <label class="nameCount">الاختصاص</label><br />
            <select id="select_dept" class="formControl" runat="server">
                <option></option>
            </select><br /><br /><br />
             <label class="nameCount"> السنة الدراسية</label><br />
            <select id="YEAR" class="formControl" runat="server">
                <option>1</option>
                <option>2</option>
            </select><br /><br /><br />
             <label class="nameCount">التولد</label><br />
                <asp:Label ID="born_lab" runat="server" ForeColor="Red" Text="*"></asp:Label>
            <input type="text" id="born"  class="formControl" runat="server"/><br /><br />
              <label class="nameCount">رقم الهاتف</label><br />
                <asp:Label ID="phone_lab" runat="server" ForeColor="Red" Text="*"></asp:Label>
            <input type="number" id="PHONE"  class="formControl" runat="server"/><br /><br />
             <label class="nameCount">البريد</label><br />
                <asp:Label ID="email_lab" runat="server" ForeColor="Red" Text="*"></asp:Label>
            <input type="text" id="GMAIL"  class="formControl" runat="server"/><br /><br />
             <label class="nameCount">كلمة السر</label><br />
                <asp:Label ID="pas_lab" runat="server" ForeColor="Red" Text="*"></asp:Label>
            <input type="password" id="PASSWORD" class="formControl" runat="server"/><br /><br />
                        <asp:Button ID="button_add_stu" class="Delet" runat="server" Text="ADD" OnClick="button_add_stu_Click"  />

        </div>
            </div>
    </form>
     <script src="main/js/bootstrap.min.js"></script>
</body>
</html>
