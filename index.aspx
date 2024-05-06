﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PROYECTO_DE_PROGRAMACION.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Proyecto De Programacion</title>
    <link rel="stylesheet" href="css/style.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- Menú de navegación -->
        <nav id="navbar" class="navbar">
            <ul class="menu">
                <li><a href="#AI">Inicio</a></li>
                <li class="dropdown">
                    <a href="#" class="dropbtn">Más Recursos</a>
                    <div class="dropdown-content">
                        <a href="servicios.aspx">Equipo</a>
                        <a href="servicios.aspx">Servicios</a>
                        <a href="servicios.aspx">Contacto</a>
                        <asp:HyperLink ID="IngresarLink" runat="server" Text="Ingresar" OnClientClick="redirectToAspxPage(); return false;"></asp:HyperLink>
                    </div>
                </li>
            </ul>
        </nav>

        <section class="boxin" id="boxin">
            <div class="box_hero">
                <h1 class="titleHero">Proyecto <br /> La Inteligencia Artificial.</h1>
            </div>
        </section>

        <!-- Contenido de la página -->
        <div id="AI" class="content">
            <h1>La Inteligencia Artificial</h1>
        </div>

        <div class="container">
            <div class="box">
                <h2>Historia de la IA</h2>
                <img src="img/ai5.jpeg" alt="Imagen 2" />
                <p>La historia de la IA se remonta a la mitad del siglo XX, con los pioneros de la computación imaginando máquinas que podrían simular el pensamiento humano. Desde los primeros programas que jugaban ajedrez hasta los modernos sistemas de aprendizaje automático, la IA ha evolucionado enormemente. Hitos como el triunfo de Deep Blue sobre el campeón de ajedrez Garry Kasparov y el desarrollo de redes neuronales profundas han marcado esta fascinante trayectoria.</p>
            </div>
            <div class="box">
                <h2>Aplicaciones de la IA en la vida cotidiana</h2>
                <img src="img/ai.jpeg" alt="Imagen 1" />
                <p>La inteligencia artificial (IA) se ha integrado profundamente en nuestra vida diaria, desde asistentes virtuales que responden a nuestras preguntas hasta sistemas de recomendación que sugieren la música que escuchamos y las películas que vemos. La IA también optimiza nuestras rutas de viaje, controla los dispositivos inteligentes de nuestros hogares y mejora la seguridad mediante la detección de fraudes en transacciones financieras.</p>
            </div>
        </div>

        <div class="container">
            <div class="box">
                <h2>IA en la medicina y la salud</h2>
                <img src="img/ai2.jpeg" alt="Imagen 1" />
                <p>En el ámbito de la medicina y la salud, la IA está revolucionando la forma en que se diagnostican y tratan enfermedades. Los algoritmos de aprendizaje profundo pueden analizar imágenes médicas con una precisión que rivaliza o supera a la de los humanos, lo que permite detectar afecciones como el cáncer más temprano. Además, la IA ayuda en la personalización de tratamientos y en la gestión de la atención al paciente.</p>
            </div>
            <div class="box">
                <h2>IA y el futuro del trabajo</h2>
                <img src="img/ai3.jpeg" alt="Imagen 2" />
                <p>La IA está transformando el mercado laboral, automatizando tareas rutinarias y creando nuevas oportunidades de empleo. Mientras algunos trabajos pueden desaparecer, la IA también está generando demanda de nuevas habilidades y roles, especialmente aquellos que requieren gestión de sistemas de IA, análisis de datos y pensamiento creativo. La adaptación y la educación continua serán claves para el futuro del trabajo.</p>
            </div>
        </div>

        <div class="container">
            <div class="box">
                <h2>Desarrollo futuro de la IA</h2>
                <img src="img/ai4.jpeg" alt="Imagen 1" />
                <p>El desarrollo futuro de la IA promete avances aún más significativos, con sistemas que podrán aprender y adaptarse de manera autónoma. La IA convergerá con otras tecnologías, como la robótica y el Internet de las Cosas (IoT), para crear aplicaciones más inteligentes y útiles. La investigación en IA general artificial (AGI) también busca crear sistemas que puedan realizar cualquier tarea intelectual humana.</p>
            </div>
            <div class="box">
                <h2>Ética en la IA</h2>
                <img src="img/ai1.jpeg" alt="Imagen 2" />
                <p>La ética en la IA es un campo emergente que aborda las preocupaciones morales sobre cómo se desarrolla y utiliza la tecnología. Esto incluye temas como la privacidad de los datos, la toma de decisiones justas sin sesgos, la transparencia en los algoritmos y la responsabilidad por las acciones de los sistemas de IA. La ética busca garantizar que la IA beneficie a la sociedad sin causar daño inadvertido.</p>
            </div>
        </div>

        <footer class="bg-secondary" id="footer">
            <div class="footer-container">
                <div class="logo-column">
                    <img src="img/logo-transparent-png.png" alt="Logo" />
                </div>
                <div class="info-column">
                    <h4 class="abajo">Creadores</h4>
                    <ul>
                        <li class="center1">SG Salas <br /> JE Franco <br /> JM Quiros <br /> CD Alvarado <br /> JM Quesada <br /> CyberStyle Web </li>
                    </ul>
                </div>
                <div class="services-column">
                    <h4 class="abajo">Seccion</h4>
                    <ul>
                        <li class="center1">12-4</li>
                    </ul>
                </div>
                <div class="services-column">
                    <h4 class="abajo">Año</h4>
                    <ul>
                        <li class="center1">2024</li>
                    </ul>
                </div>
            </div>
        </footer>

        <script src="js/navbar.js"></script>
        
    </form>
</body>
</html>