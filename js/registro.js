$(document).ready(function () {
    verificarAutenticacion();

    function verificarAutenticacion() {
        let autenticado = sessionStorage.getItem('autenticado');
        let ingresadoDesdeIngresar = sessionStorage.getItem('ingresadoDesdeIngresar');
        if (!autenticado || ingresadoDesdeIngresar !== 'true') {
            window.location.href = 'ingresar.html'; // Redirigir solo si no está autenticado o no ingresó desde ingresar.html
        }
    }

    // Manejar la solicitud de ver usuarios registrados
    $('#verUsuariosBtn').click(function (event) {
        event.preventDefault();
        window.location.href = 'usuarios-guardados.html';
    });

    // Manejar la solicitud de cerrar sesión
    $('#logoutButton').click(function (event) {
        event.preventDefault();
        sessionStorage.removeItem('autenticado');
        sessionStorage.removeItem('ingresadoDesdeIngresar'); // Limpiar el marcador de ingreso desde ingresar.html
        alert('Sesión cerrada correctamente.');
        window.location.href = 'ingresar.html';
    });

    // Función para manejar el registro de usuario
    $('#registroForm').submit(function (event) {
        event.preventDefault();
        let nombre = $('#nombre').val();
        let apellido = $('#apellido').val();
        let correo = $('#correo').val();

        // Obtener los usuarios registrados del sessionStorage
        let usuariosRegistrados = JSON.parse(sessionStorage.getItem('usuariosRegistrados')) || [];

        // Agregar el nuevo usuario a la lista
        usuariosRegistrados.push({ nombre: nombre, apellido: apellido, correo: correo });

        // Guardar la lista actualizada en sessionStorage
        sessionStorage.setItem('usuariosRegistrados', JSON.stringify(usuariosRegistrados));

        alert('Usuario registrado correctamente.');
        this.reset();
    });
});
