<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebValidacion.aspx.cs" Inherits="Septiembre26.WebValidacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            Comparar :<asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1" ControlToValidate="TextBox2" ErrorMessage="Los campos no son iguales" ForeColor="Red">Validar Campos</asp:CompareValidator>
            <br />
            Comparar 2:<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            Rango :<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="El valor debe estar entre 0 y 100" ForeColor="Red" MaximumValue="100" MinimumValue="0"></asp:RangeValidator>
            <br />
            Expresion Regular :<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="El campo debe ser un correo" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            Requerido :<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="El campo es necesario" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            Custom:
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="CustomValidator" ClientValidationFunction="validador"></asp:CustomValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <br />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <br />
            NOTA:<br />
            Es necesario modificar el web.config y agregar el tag entero appSettings<br />
            <br />
            <br />

            <br />
            <br />
        </div>
    </form>
    <p>
        &nbsp;</p>
    <script>
        // esto es javascript
        function validador(control) {
            return true;
        }
    </script>
</body>
</html>
