using System;
using System.Collections.Generic;
using System.Web.UI;

namespace PROYECTO_DE_PROGRAMACION
{
    public partial class Ingresar : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string username = Request.Form["username"];
                string code = Request.Form["code"];

                var users = new List<Usuario>
                {
                    new Usuario { NombreUsuario = "Dangelo", Codigo = "12345" },
                    new Usuario { NombreUsuario = "Steven", Codigo = "67890" },
                    new Usuario { NombreUsuario = "Jesus", Codigo = "54321" },
                    new Usuario { NombreUsuario = "Paula", Codigo = "98765" },
                    new Usuario { NombreUsuario = "Carlos", Codigo = "13579" },
                    new Usuario { NombreUsuario = "Kevin", Codigo = "13570" },
                    new Usuario { NombreUsuario = "Cristian", Codigo = "97531" },
                    new Usuario { NombreUsuario = "JM", Codigo = "24681" },
                    new Usuario { NombreUsuario = "JP", Codigo = "24680" },
                    new Usuario { NombreUsuario = "Lian", Codigo = "46802" },
                    new Usuario { NombreUsuario = "Fiorela", Codigo = "86420" },
                    new Usuario { NombreUsuario = "Greyson", Codigo = "97531" },
                    new Usuario { NombreUsuario = "Ethan", Codigo = "24681" },
                    new Usuario { NombreUsuario = "Samantha", Codigo = "46802" },
                    new Usuario { NombreUsuario = "David", Codigo = "13570" },
                    new Usuario { NombreUsuario = "Daniel", Codigo = "80246" },
                    new Usuario { NombreUsuario = "Estefany", Codigo = "80246" },
                    new Usuario { NombreUsuario = "Quiros", Codigo = "97531" }
                };

                bool isValidUser = false;
                foreach (var user in users)
                {
                    if (user.NombreUsuario == username && user.Codigo == code)
                    {
                        isValidUser = true;
                        break;
                    }
                }

                if (isValidUser)
                {
                    // Autenticación exitosa, establecer la sesión
                    Session["autenticado"] = "true";
                    Session["ingresadoDesdeIngresar"] = "true";

                    // Redirigir a la página Registros.aspx
                    Response.Redirect("Registros.aspx");
                }
                else
                {
                    // Mostrar mensaje de error o tomar otra acción si la autenticación falla
                    usernameError.Visible = true;
                    codeError.Visible = true;
                }
            }
        }

        // Clase para representar un usuario
        public class Usuario
        {
            public string NombreUsuario { get; set; }
            public string Codigo { get; set; }
        }
    }
}
