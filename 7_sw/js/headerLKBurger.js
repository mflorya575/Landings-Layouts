const burgerHeaderLK = document.querySelector('.header-lk__icon');
const menuBody = document.querySelector('.header-lk__body');

burgerHeaderLK.addEventListener('click', () => {
    menuBody.classList.toggle('_open')
})