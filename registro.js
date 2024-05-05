$(document).ready(function () {
    // Función para verificar la autenticación al cargar la página
    verificarAutenticacion();

    // Función para manejar el registro de usuario
    $('#registroForm').submit(function (event) {
        event.preventDefault();
        let nombre = $('#nombre').val();
        let apellido = $('#apellido').val();
        let correo = $('#correo').val();

        // Guardar los datos en la memoria RAM
        guardarDatosEnRAM(nombre, apellido, correo);

        alert('Datos guardados correctamente.');
        this.reset();
    });

    // Manejar la solicitud de ver usuarios registrados
    $('#verUsuariosBtn').click(function () {
        // Mostrar los datos guardados en la RAM
        mostrarUsuariosRegistradosEnRAM();
    });

    // Manejar la solicitud de cerrar sesión
    $('#logoutButton').click(function () {
        // Limpiar la memoria RAM al cerrar sesión
        limpiarMemoriaRAM();

        alert('Sesión cerrada correctamente.');
        window.location.href = 'ingresar.html';
    });

    // Función para verificar la autenticación
    function verificarAutenticacion() {
        let autenticado = sessionStorage.getItem('autenticado');
        if (!autenticado) {
            window.location.href = 'ingresar.html';
        }
    }

    // Función para guardar los datos en la memoria RAM
    function guardarDatosEnRAM(nombre, apellido, correo) {
        let usuariosRegistrados = JSON.parse(localStorage.getItem('usuariosRegistrados')) || [];
        usuariosRegistrados.push({ nombre: nombre, apellido: apellido, correo: correo });
        localStorage.setItem('usuariosRegistrados', JSON.stringify(usuariosRegistrados));
    }

    // Función para mostrar los usuarios registrados en la RAM
    function mostrarUsuariosRegistradosEnRAM() {
        let usuariosRegistrados = JSON.parse(localStorage.getItem('usuariosRegistrados')) || [];
        alert('Usuarios registrados:\n' + JSON.stringify(usuariosRegistrados));
    }

    // Función para limpiar la memoria RAM
    function limpiarMemoriaRAM() {
        localStorage.removeItem('usuariosRegistrados');
    }
});
