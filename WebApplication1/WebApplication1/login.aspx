<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body >
    <form id="form1" runat="server">
        <div style="height:50px ;background-color:#ff0000;">
           
            
        
        <div style="float:left; width:300px; margin:10px;">User Name: <asp:TextBox ID="TBuser" runat="server"></asp:TextBox></div>  
        <div style="float:left; width:300px; margin:10px;">Password: <asp:TextBox ID="TBPass" runat="server" OnTextChanged="TextBox2_TextChanged" TextMode="Password"></asp:TextBox></div>
        <div style="float:left; width:300px; margin:10px;"><asp:Button ID="Button1" runat="server" Text="Login" Height="30px" Width="100px" OnClick="Button_Login_Click" /></div>
        <div  style="float:right; width:300px; margin:10px; text-align:right;"><asp:Label ID="Lbl_bilgi" runat="server" Text="Admin Panel Login"></asp:Label></div>
            
        </div>
       
    </form>
</body>
</html>
