<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebAjax.aspx.cs" Inherits="Septiembre26.WebAjax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server">0</asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server">0</asp:TextBox>
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <br />
            <br />
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <br />
                    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                    </asp:Timer>
                    <br />
<br />
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
<br />
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <br />
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
<br />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
<br />
                    <br />
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel3">
                <ProgressTemplate>
                    Cargando, por favor espere...<br />
                </ProgressTemplate>
            </asp:UpdateProgress>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
