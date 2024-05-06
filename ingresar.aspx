
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ingresar.aspx.cs" Inherits="PROYECTO_DE_PROGRAMACION.Ingresar"

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Ingresar</title>
    <link rel="stylesheet" href="css/ingresar.css" />
</head>
<body>
    <div class="login-container">
        <h2>Ingresar</h2>
        <form id="loginForm" runat="server">
            <div class="form-group">
                <label for="username">Usuario</label>
                <input type="text" id="username" name="username" required="required" />
                <asp:Label ID="usernameError" runat="server" CssClass="error-message" Visible="false">No tiene usuario</asp:Label>
            </div>
            <div class="form-group">
                <label for="code">Código (5 dígitos)</label>
                <input type="password" id="code" name="code" minlength="5" maxlength="5" required="required" />
                <asp:Label ID="codeError" runat="server" CssClass="error-message" Visible="false">Código incorrecto</asp:Label>
            </div>
            <div class="form-group">
                <input type="submit" value="Ingresar" />
            </div>
            <div class="btn">
                <a class="btn" href="index.aspx" id="returnButton">Volver a la página de inicio</a>
            </div>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="js/ingresar.js"></script>
</body>
</html>
