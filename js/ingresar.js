$(document).ready(function () {
    $('#loginForm').submit(function (event) {
        event.preventDefault();
        let username = $('#username').val();
        let code = $('#code').val();

        // Validar usuario y código
        if (username === '' || code === '') {
            if (username === '') $('#usernameError').show();
            else $('#usernameError').hide();

            if (code === '') $('#codeError').show();
            else $('#codeError').hide();
        } else {
            $('#usernameError').hide();
            $('#codeError').hide();

            // Enviar formulario (aquí se puede agregar la lógica para enviar los datos al servidor)
            this.submit();
        }
    });
});
