<%@ Page Language="C#" Async="true" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="MyTestAplication.Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Table ID="Table1"  Width="450" HorizontalAlign="Center" runat="server">

                <asp:TableRow ID="TableRow8" runat="server">
                    <asp:TableCell ColumnSpan="2"  Height="50" HorizontalAlign="Center" runat="server">
                        
                        <asp:Label ID="Label7" Font-Bold="true" Font-Size="Larger" runat="server" Text="Заповнення полів"></asp:Label>

                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label runat="server" Text="Ім'я отримувача"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="FirstNameText" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow runat="server">

                    <asp:TableCell runat="server">
                        <asp:Label runat="server" Text="Прізвище отримувача"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="SecondNameText" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow runat="server">

                    <asp:TableCell runat="server">


                        <asp:Label runat="server" Text="Адреса доставки"></asp:Label>

                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:ListBox ID="AdressOrderText" Rows="3" SelectionMode="Single" runat="server">
                            <asp:ListItem Text="Полтава" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Харків" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Київ" Value="3"></asp:ListItem>
                        </asp:ListBox>
                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow runat="server">

                    <asp:TableCell runat="server">

                        <asp:Label runat="server" Text="Вага відправлення"></asp:Label>


                    </asp:TableCell>
                    <asp:TableCell runat="server">

                        <asp:TextBox ID="WeightOrderText" Width="50" runat="server"></asp:TextBox> <asp:Label ID="Label1" runat="server"  Text="Label"> кг</asp:Label>



                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow runat="server">

                    <asp:TableCell runat="server">
                        <asp:Label runat="server" Text="Коментар до відправлення"></asp:Label>

                    </asp:TableCell>
                    <asp:TableCell runat="server">

                        <asp:TextBox ID="MessageUserText" Height="40" runat="server"></asp:TextBox>

                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow runat="server">

                    <asp:TableCell runat="server">

                        <asp:Label runat="server" Text="Тип відправлення"></asp:Label>

                    </asp:TableCell>
                    <asp:TableCell runat="server">

                          <asp:ListBox ID="TypeOrderText" Rows="3" SelectionMode="Single" runat="server">
                            <asp:ListItem Text="Лист" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Не габаритний вантаж" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Габаритний вантаж" Value="3"></asp:ListItem>
                        </asp:ListBox>
                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow runat="server">
                     <asp:TableCell  Height="50" HorizontalAlign="Center" runat="server">
                        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Page2.aspx" runat="server" >Відображення</asp:HyperLink>
                   </asp:TableCell>
                    <asp:TableCell ColumnSpan="2" Height="50"  runat="server">

                        <asp:Button ID="Button1" runat="server" Height="35" Width="200" Text="Розрахувати вартість" OnClick="Button1_Click" />

                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

        </div>
    </form>
</body>
</html>
