document.getElementById('loginForm').addEventListener('submit', function (event) {
    event.preventDefault(); // Evitar el envío del formulario

    var username = document.getElementById('username').value.trim();
    var code = document.getElementById('code').value.trim();

    var users = [
        { username: "Usuario1", code: "12345" },
        { username: "Usuario2", code: "67890" },
        { username: "Usuario3", code: "54321" },
        { username: "Usuario4", code: "98765" },
        { username: "Usuario5", code: "13579" },
        { username: "Usuario6", code: "24680" },
        { username: "Usuario7", code: "86420" },
        { username: "Usuario8", code: "97531" },
        { username: "Usuario9", code: "46802" },
        { username: "Usuario10", code: "24681" },
        { username: "Usuario11", code: "13570" },
        { username: "Usuario12", code: "80246" },
        { username: "Usuario13", code: "97531" },
        { username: "Usuario14", code: "46802" },
        { username: "Usuario15", code: "24681" },
        { username: "Usuario16", code: "13570" },
        { username: "Usuario17", code: "80246" },
        { username: "Usuario18", code: "97531" }
    ];

    var isValidUser = users.some(function (user) {
        return user.username === username && user.code === code;
    });

    if (isValidUser) {
        localStorage.setItem('loggedIn', 'true');
        window.location.href = 'logueado.html';
    } else {
        document.getElementById('usernameError').style.display = 'none'; // Ocultar mensaje de usuario incorrecto
        document.getElementById('codeError').style.display = 'block'; // Mostrar mensaje de código incorrecto
    }
});



