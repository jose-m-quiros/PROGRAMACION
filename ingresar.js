document.getElementById('loginForm').addEventListener('submit', function (event) {
    event.preventDefault(); // Evitar el envío del formulario

    var username = document.getElementById('username').value.trim();
    var code = document.getElementById('code').value.trim();

    var users = [
        { username: "Dangelo", code: "12345" },
        { username: "Steven", code: "67890" },
        { username: "Jesus", code: "54321" },
        { username: "Paula", code: "98765" },
        { username: "Carlos", code: "13579" },
        { username: "Kevin", code: "13570" },
        { username: "Cristian", code: "97531" },
        { username: "JM", code: "24681" },
        { username: "JP", code: "24680" },
        { username: "Lian", code: "46802" },
        { username: "Fiorela", code: "86420" },
        { username: "Greyson", code: "97531" },
        { username: "Ethan", code: "24681" },
        { username: "Samantha", code: "46802" },
        { username: "David", code: "13570" },
        { username: "Daniel", code: "80246" },
        { username: "Estefany", code: "80246" },
        { username: "Quiros", code: "97531" }
    ];

    var isValidUser = users.some(function (user) {
        return user.username === username && user.code === code;
    });

    if (isValidUser) {
        localStorage.setItem('loggedIn', 'true');
        window.location.href = 'https://kahoot.it/';
        document.getElementById('loginForm').reset(); // Limpiar el formulario
    } else {
        document.getElementById('usernameError').style.display = 'none'; // Ocultar mensaje de usuario incorrecto
        document.getElementById('codeError').style.display = 'block'; // Mostrar mensaje de código incorrecto
    }
});
