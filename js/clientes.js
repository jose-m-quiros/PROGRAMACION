$(document).ready(function () {

    // Importar las funciones del servidor
    const { registrarUsuario, obtenerUsuariosRegistrados } = require('./server');

    // Función para manejar el registro de usuario
    $('#registroForm').submit(function (event) {
        event.preventDefault();
        let nombre = $('#nombre').val();
        let apellido = $('#apellido').val();
        let correo = $('#correo').val();
        registrarUsuario(nombre, apellido, correo);
        alert('Usuario registrado correctamente.');
        this.reset();
    });

    // Manejar la solicitud de ver usuarios registrados
    $('#verUsuariosBtn').click(function () {
        let usuarios = obtenerUsuariosRegistrados();
        mostrarUsuarios(usuarios);
    });

   
});



// Función para mostrar los usuarios registrados en la página
function mostrarUsuarios(usuarios) {
    $('#listaClientes').empty();
    usuarios.forEach(function (usuario) {
        let listItem = $('<li>').text(`${usuario.nombre} ${usuario.apellido} - ${usuario.correo}`);
        $('#listaClientes').append(listItem);
    });
}
