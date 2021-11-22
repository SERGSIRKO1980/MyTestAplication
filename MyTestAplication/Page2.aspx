<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="MyTestAplication.Page2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="Table1" Width="450" HorizontalAlign="Center" runat="server">

                <asp:TableRow ID="TableRow8" runat="server">
                    <asp:TableCell  Height="50" ColumnSpan="2"  HorizontalAlign="Center" runat="server">
                        
                        <asp:Label ID="Label7" Font-Bold="true" Font-Size="Larger" runat="server" Text="Відображення"></asp:Label>

                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow runat="server">
<asp:TableCell HorizontalAlign="Center" ColumnSpan="2"  runat="server">
            <asp:Panel ID="Panel1" runat="server"></asp:Panel>
                    </asp:TableCell>
                    </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell  Height="50" HorizontalAlign="Center" runat="server">
                        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Page1.aspx" runat="server" >Заповнити поля</asp:HyperLink>
                   </asp:TableCell>
                    <asp:TableCell  Height="50" HorizontalAlign="Center" runat="server">
            <asp:Button ID="Button1" runat="server" Height="35" Width="200" Text="Показати дані" OnClick="Button1_Click" />
                   </asp:TableCell>
                    
                        </asp:TableRow>
                </asp:Table>
        </div>
    </form>
</body>
</html>
