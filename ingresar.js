document.getElementById('loginForm').addEventListener('submit', function (event) {
    event.preventDefault(); // Evitar el envío del formulario

    var username = document.getElementById('username').value.trim();
    var code = document.getElementById('code').value.trim();

    var users = [
        { username: "Dangelo", code: "12345" },
        // Otros usuarios aquí...
    ];

    var isValidUser = users.some(function (user) {
        return user.username === username && user.code === code;
    });

    if (isValidUser) {
        sessionStorage.setItem('autenticado', 'true'); // Marcar como autenticado
        sessionStorage.setItem('ingresadoDesdeIngresar', 'true'); // Marcar como ingresado desde ingresar.html
        window.location.href = 'Registro.html'; // Redirige a Registro.html si la autenticación es exitosa
    } else {
        document.getElementById('usernameError').style.display = 'none'; // Ocultar mensaje de usuario incorrecto
        document.getElementById('codeError').style.display = 'block'; // Mostrar mensaje de código incorrecto
    }
});
