<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="XD_Extend_Web.Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>退补记录查询及取消</title>
</head>
<body>
    <form id="Content" runat="server">
    <div>
   
        <asp:Button ID="Button_Click" runat="server" Text="查询" 
            onclick="Button_Click_Click" />
   
    </div>
    <div>
     
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
