const inputs = document.querySelectorAll('.form-page__input input');

inputs.forEach(input => {
    const label = input.closest('.form-page__input').querySelector('label');

    input.addEventListener('focus', () => {
        label.style.display = 'none';
    });

    input.addEventListener('blur', () => {
        if (input.value === '') {
            label.style.display = 'block';
        }
    });
});