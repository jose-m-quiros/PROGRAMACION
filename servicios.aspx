﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="servicios.aspx.cs" Inherits="PROYECTO_DE_PROGRAMACION.servicios" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Contactos</title>
    <link rel="stylesheet" href="css/style.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- Menú de navegación -->
        <nav id="navbar" class="navbar">
            <ul class="menu">
                <!--<li><a href="index.html">Inicio</a></li>-->
                <li><a href="index.aspx">Inicio</a></li>
                <li class="dropdown">
                    <a href="#" class="dropbtn">Más Recursos</a>
                    <div class="dropdown-content">
                        <a href="#integrantes">Equipo</a>
                        <a href="#servicios">Servicios</a>
                        <a href="#contactos">Contacto</a>
                        <a href="ingresar.aspx">Ingresar</a>
                    </div>
                </li>
            </ul>
        </nav>

        <h1 id="integrantes" class="integrantes">Equipo de Programación</h1>

        <div class="grid-container">
            <div class="grid-item">
                <h3>Steven Salas</h3>
                <p class="grid-integrantes"> Ciclista<br />Gerente De SPIKEDTECH </p>
            </div>
            <div class="grid-item">
                <h3>Jose Quesada</h3>
                <p class="grid-integrantes">Gamer <br />Programador</p>
            </div>
            <div class="grid-item">
                <h3>Cristian Alvarado</h3>
                <p class="grid-integrantes">Programador <br /> Técnico Informático</p>
            </div>
            <div class="grid-item">
                <h3>Jesus Franco</h3>
                <p class="grid-integrantes"> Productor <br />Basketbolista</p>
            </div>
            <div class="grid-item">
                <h3>JM Quiros</h3>
                <p class="grid-integrantes"> Programador <br /> Diseñador Web <br /> CEO De SPIKEDTECH</p>
            </div>
        </div>

        <h1 id="servicios" class="servicios">Servicios que se ofrecen</h1>

        <div class="grid-container">
            <div class="grid-item">
                <h3>Programación</h3>
                <p class="grid-servicios">Desarrollo de aplicaciones y sistemas informáticos.</p>
            </div>
            <div class="grid-item">
                <h3>Domótica</h3>
                <p class="grid-servicios">Automatización de hogares y edificios.</p>
            </div>
            <div class="grid-item">
                <h3>Producción Musical</h3>
                <p class="grid-servicios">Grabación, mezcla y masterización de música.</p>
            </div>
            <div class="grid-item">
                <h3>Instalación de Redes</h3>
                <p class="grid-servicios">Configuración de redes informáticas y cableado estructurado.</p>
            </div>
            <div class="grid-item">
                <h3>Marketing</h3>
                <p class="grid-servicios">Estrategias de publicidad y promoción de productos y servicios.</p>
            </div>
        </div>

        <h1 id="contactos" class="contactos">Contactos</h1>

        <div class="contactos_div">
            <p><a href="mailto:spikedtech19@gmail.com" target="_blank">Correo: <br /> spikedtech19@gmail.com</a></p>
        </div>

        <footer class="bg-secondary" id="footer">
            <div class="footer-container">
                <div class="logo-column">
                    <img src="logo-transparent-png.png" alt="Logo" />
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
    </form>
</body>
</html>

