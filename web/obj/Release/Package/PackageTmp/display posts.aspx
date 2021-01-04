<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="display posts.aspx.cs" Inherits="web.display_posts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>display post</title>
    <link href="add_css/file.css" rel="stylesheet" />
    <style>
        .bor
        {      
            margin:auto;
            margin-top:150px;
            text-align:center;
            width:400px;
            padding:10px;
        }
        .t{
            width:400px;
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
             <div class="navv">
                  <asp:Button ID="Button2" runat="server" class="ps2" Text="الصفحة الرئيسية" OnClick="Button2_Click" />
                </div>
            <div class="bor">
            <asp:GridView ID="GridView_D_post" runat="server" class="t" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
                </div>
        </div>
    </form>
</body>
</html>
