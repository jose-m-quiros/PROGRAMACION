class Navbar {
    constructor(selector) {
        this.navElement = document.querySelector(selector + ' .menu');
    }

    addMenuItem(text, url, isDropdown = false) {
        if (!this.navElement.querySelector(`a[href="${url}"]`)) {
            const li = document.createElement('li');
            const a = document.createElement('a');
            a.href = url;
            a.textContent = text;

            if (isDropdown) {
                li.classList.add('dropdown');
                a.classList.add('dropbtn');
                li.appendChild(document.createElement('div')).classList.add('dropdown-content');
            }

            li.appendChild(a);
            this.navElement.appendChild(li);
        }
    }
}

const navbar = new Navbar('#navbar');
navbar.addMenuItem('Inicio', '#AI');
navbar.addMenuItem('Más Recursos', '#', true);
