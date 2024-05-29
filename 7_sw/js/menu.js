const menu = () => {
    const menuBody = document.querySelector('.menu__body');
    const menuIcon = document.querySelector('.menu__icon');

    menuIcon.addEventListener('click', () => {
        menuBody.classList.toggle('_open');
        menuIcon.classList.toggle('active');
        document.querySelector('body').classList.toggle('_lock');
    })
}
menu();