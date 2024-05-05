$(document).ready(function () {
    mostrarUsuariosRegistrados();

    function mostrarUsuariosRegistrados() {
        let usuariosRegistrados = JSON.parse(localStorage.getItem('usuariosRegistrados')) || [];
        let usuariosContainer = $('#usuariosContainer');

        if (usuariosRegistrados.length > 0) {
            usuariosContainer.empty(); // Limpiar el contenedor antes de mostrar los usuarios

            usuariosRegistrados.forEach(function (usuario, index) {
                let usuarioHtml = `<div class="usuario">
                                        <p><strong>Nombre:</strong> ${usuario.nombre}</p>
                                        <p><strong>Apellido:</strong> ${usuario.apellido}</p>
                                        <p><strong>Correo:</strong> ${usuario.correo}</p>
                                        <p>-----------------------------------------------------<p/>
                                        
                                    </div>`;
                usuariosContainer.append(usuarioHtml);
            });
        } else {
            usuariosContainer.html('<p>No hay usuarios registrados.</p>');
        }
    }
});
