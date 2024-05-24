/* Код обработки нажатия на кнопку меню и выползание его справа */
document.querySelector('.mobile-menu__button').addEventListener('click', function() {
    var menuBlock = document.querySelector('.mobile-menu__block');
    if (menuBlock.style.display === 'none') {
        menuBlock.style.display = 'block';
    } else {
        menuBlock.style.display = 'none';
    }
});
