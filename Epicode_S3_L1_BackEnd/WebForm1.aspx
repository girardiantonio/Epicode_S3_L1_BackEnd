<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Epicode_S3_L1_BackEnd.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Epicode Vehicle Shop</h1>
        </div>
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
            <asp:ListItem Value="" Text="Seleziona un veicolo"></asp:ListItem>
            <asp:ListItem Value="bmw.png" Text="BMW M4 Competition"></asp:ListItem>
            <asp:ListItem Value="porsche.png" Text="Porsche 911 T"></asp:ListItem>
            <asp:ListItem Value="ferrari.png" Text="Ferrari 488 Spider"></asp:ListItem>
        </asp:DropDownList>

        <br />
        <asp:Image ID="Image1" Width="200px" runat="server"/>
        <p id="Price" runat="server"></p>
       
        <p>Aggiungi Extra</p>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem Value="330" Text="Vernice metallizzata (costo euro 330,00)"></asp:ListItem>
            <asp:ListItem Value="180" Text="Fari Xeno (costo euro 180,00)"></asp:ListItem>
            <asp:ListItem Value="1800" Text="Sistema navigazione satellitare (costo euro 1.800,00)"></asp:ListItem>
            <asp:ListItem Value="2000" Text="Line Assistant (costo euro 2.000,00)"></asp:ListItem>
            <asp:ListItem Value="155" Text="Ruota di scorta (costo euro 155,00)"></asp:ListItem>
            <asp:ListItem Value="700" Text="Sedili/volante in pelle (costo euro 700,00)"></asp:ListItem>
        </asp:CheckBoxList>

        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" >
            <asp:ListItem Value="16" Text="Garanzia extra 1 anno (costo euro 120,00)"></asp:ListItem>
            <asp:ListItem Value="17" Text="Garanzia extra 2 anno (costo euro 120,00)"></asp:ListItem>
            <asp:ListItem Value="18" Text="Garanzia extra 3 anno (costo euro 120,00)"></asp:ListItem>
            <asp:ListItem Value="19" Text="Garanzia extra 4 anno (costo euro 120,00)"></asp:ListItem>
            <asp:ListItem Value="20" Text="Garanzia extra 5 anno (costo euro 120,00)"></asp:ListItem>
        </asp:DropDownList>

        <p id="Result" runat="server"></p>

        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click"/>
    </form>
</body>
</html>
