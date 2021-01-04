<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="تعديل المواد.aspx.cs" Inherits="project.استعراض_المواد" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> update meteria</title>
    <link href="add_css/file.css" rel="stylesheet" />
    <style>
        label
        {
            margin-top:30px;
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
    <form id="form1" runat="server">
        <div class="containt">
             <div class="navv">
                  <asp:Button ID="Button1" runat="server" class="ps2" Text="الصفحة الرئيسية" OnClick="Button1_Click" />
                </div>
          <h1 class="sub">المعهد التقاني للحاسوب</h1>
            <h2 class="delet"> تعديل مواد</h2>
        <div class="borderMet">
            
          
            <asp:GridView ID="GridView_subject" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <br />
             
           <label class="nameCount">المواد </label><br /><br />
            <asp:DropDownList ID="ddl_sud_name" runat="server" class="SUpdate" AutoPostBack="True" OnSelectedIndexChanged="ddl_sud_name_SelectedIndexChanged" OnTextChanged="ddl_sud_name_TextChanged">
            </asp:DropDownList><br /><br />
       
             <label class="nameCount">اسم المدرس</label><br /><br />
            <asp:Label ID="techer_n_lab" runat="server" ForeColor="Red" Text="*"></asp:Label>
            <input class="formControl" type="text" id="n_techer" runat="server"/><br /><br />
           
            <label class="nameCount">الاختصاص</label><br /><br />
            <select id="select_dept" class="SUpdate" runat="server" name="D1">
                <option></option>
            </select><br /><br />
             <label class="nameCount"> السنة الدراسية</label><br/><br />
            <select id="select_year" class="SUpdate" name="D2" runat="server">
                <option> 1</option>
                <option> 2</option>
            </select><br /><br />
     <label class="nameCount"> توصيف</label><br />
            <asp:Label ID="discr_lab" runat="server" ForeColor="Red" Text="*"></asp:Label>
            <input class="formControl" type="text" id="describe" runat="server"/><br /><br />
            <br /><br />
           

            <asp:Button ID="btn_edite"  class="update"  runat="server" Text="تعديل" OnClick="btn_edite_Click" />&nbsp;&nbsp;&nbsp;

            <asp:Button ID="Button2"  class="Delet"  runat="server" Text="حذف" OnClick="Button2_Click" />
            <br /><br />
        </div>
    </div>
    </form>
</body>
</html>
