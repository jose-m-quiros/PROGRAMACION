// Array para simular la base de datos en memoria RAM
let usuariosRegistrados = [];

// Función para registrar un nuevo usuario
function registrarUsuario(nombre, apellido, correo) {
    usuariosRegistrados.push({ nombre, apellido, correo });
}

// Función para obtener todos los usuarios registrados
function obtenerUsuariosRegistrados() {
    return usuariosRegistrados;
}

// Exportar las funciones para que estén disponibles en otros archivos
module.exports = { registrarUsuario, obtenerUsuariosRegistrados };
