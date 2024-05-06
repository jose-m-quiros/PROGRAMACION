using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

namespace PROYECTO_DE_PROGRAMACION
{
    public partial class Registros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Verificar si hay una lista de usuarios almacenada en la sesión y mostrarlos si existe
                if (Session["Usuarios"] != null)
                {
                    List<Usuario> listaUsuarios = (List<Usuario>)Session["Usuarios"];
                    GridView1.DataSource = listaUsuarios;
                    GridView1.DataBind();
                }
            }
        }

        protected void registrarBtn_Click(object sender, EventArgs e)
        {
            // Crear un nuevo objeto Usuario
            Usuario nuevoUsuario = new Usuario
            {
                Nombre = nombreTextBox.Text,
                Apellido = apellidoTextBox.Text,
                Correo = correoTextBox.Text
            };

            // Obtener la lista de usuarios de la sesión o crear una nueva si no existe
            List<Usuario> listaUsuarios = Session["Usuarios"] as List<Usuario> ?? new List<Usuario>();

            // Agregar el nuevo usuario a la lista
            listaUsuarios.Add(nuevoUsuario);

            // Guardar la lista de usuarios en la sesión
            Session["Usuarios"] = listaUsuarios;

            // Mostrar mensaje de éxito
            mensajeLabel.Visible = true;
            mensajeLabel.Text = "Se guardaron los datos correctamente.";

            // Actualizar el GridView con los datos actuales de la sesión
            GridView1.DataSource = listaUsuarios;
            GridView1.DataBind();

            // Limpiar los campos después de guardar
            nombreTextBox.Text = "";
            apellidoTextBox.Text = "";
            correoTextBox.Text = "";
        }

        protected void verUsuariosBtn_Click(object sender, EventArgs e)
        {
            // Redirigir a la página de usuarios guardados
            Response.Redirect("usuarios-guardados.aspx");
        }


        public class Usuario
        {
            public string Nombre { get; set; }
            public string Apellido { get; set; }
            public string Correo { get; set; }
        }
    }
}
