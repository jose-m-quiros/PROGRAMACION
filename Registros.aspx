<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registros.aspx.cs" Inherits="PROYECTO_DE_PROGRAMACION.Registros" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/registro.css" />
    <title>Registros</title>
</head>
<body>
    <form id="registroForm" runat="server">
        <div class="container">
            <h1 class="title">Registro de Nuevo Usuario</h1>
            <div class="form-group">
                <label for="nombreTextBox">Nombre</label>
                <asp:TextBox ID="nombreTextBox" runat="server" CssClass="input" Required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="apellidoTextBox">Apellido</label>
                <asp:TextBox ID="apellidoTextBox" runat="server" CssClass="input" Required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="correoTextBox">Correo</label>
                <asp:TextBox ID="correoTextBox" runat="server" CssClass="input" Required="true"></asp:TextBox>
            </div>
            <asp:Button ID="registrarBtn" runat="server" Text="Registrar" CssClass="btn btn-sec" OnClick="registrarBtn_Click" />
            <%--<asp:Button ID="verUsuariosBtn" runat="server" Text="Ver Usuarios Registrados" CssClass="btn btn-secondary" OnClick="verUsuariosBtn_Click" />--%>
            <asp:Button ID="logoutButton" runat="server" Text="Cerrar sesión" CssClass="btn btn-danger" OnClientClick="cerrarSesion(); return false;" />
            <div class="table-container">
            <asp:Label ID="mensajeLabel" runat="server" CssClass="mensaje" Visible="false"></asp:Label> 
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                        <asp:BoundField DataField="Apellido" HeaderText="Apellido" />
                        <asp:BoundField DataField="Correo" HeaderText="Correo" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
    function cerrarSesion() {
        // Limpiar los datos de la sesión relacionados con los usuarios
        sessionStorage.removeItem("Usuarios");

        // Redirigir a la página de inicio de sesión
        window.location.href = "ingresar.html";
    }
    </script>

    <script src="js/registro.js"></script>
</body>
</html>
