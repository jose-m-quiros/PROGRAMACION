document.addEventListener('DOMContentLoaded', function () {
    // Verificar si el usuario está autenticado
    var loggedIn = localStorage.getItem('loggedIn');

    if (!loggedIn) {
        // Si no está autenticado, redirigir a la página de inicio de sesión
        window.location.href = 'ingresar.html';
    }

    // Obtener el botón de cerrar sesión
    var logoutButton = document.getElementById('logoutButton');

    // Agregar un evento de clic al botón para cerrar sesión
    logoutButton.addEventListener('click', function () {
        // Eliminar la información de autenticación del almacenamiento local
        localStorage.removeItem('loggedIn');

        // Redirigir al usuario a la página de inicio de sesión
        window.location.href = 'ingresar.html';
    });
});
