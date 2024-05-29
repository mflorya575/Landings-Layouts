function register() {
    const root = document.getElementById('root');

    root.innerHTML = `
    <section class="logout">
        <div class="logout__container">

            <h1 class="_section-main-title">Регистрация</h1>

            <form action="#" class="form-page__form">
                <div class="form-page__label">
                    <svg width="24" height="23" viewBox="0 0 24 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M18.7216 22.68C18.1882 22.68 17.7349 22.4933 17.3616 22.12C14.8016 19.3467 13.0149 17.1867 12.0016 15.64L8.64156 21C8.26823 21.64 7.6549 21.96 6.80156 21.96C5.84156 21.96 5.36156 21.5067 5.36156 20.6C5.36156 20.44 5.4149 20.1467 5.52156 19.72L9.52156 13.4C7.3349 13.88 5.3349 14.76 3.52156 16.04C2.88156 16.36 2.40156 16.52 2.08156 16.52C1.6549 16.52 1.30823 16.3867 1.04156 16.12C0.828229 15.8 0.721563 15.4 0.721563 14.92C0.721563 14.3867 1.04156 13.8533 1.68156 13.32C4.18823 11.72 6.48156 10.6267 8.56156 10.04C8.18823 9.56 7.62823 8.52 6.88156 6.92C6.1349 5.32 5.4949 4.22666 4.96156 3.64C4.8549 3.32 4.80156 2.97333 4.80156 2.6C4.80156 2.12 5.0149 1.66666 5.44156 1.24C5.86823 0.813331 6.34823 0.599998 6.88156 0.599998C7.7349 0.599998 8.6949 1.56 9.76156 3.47999C10.1882 4.22666 10.6416 5.10666 11.1216 6.12L12.4016 8.6V8.68C14.1616 5.85333 15.3882 3.72 16.0816 2.28C16.6682 1.48 17.3349 1.08 18.0816 1.08C19.0416 1.08 19.5216 1.53333 19.5216 2.44C19.5216 2.97333 19.0682 4.01333 18.1616 5.56L16.0816 9.16C19.3349 8.84 21.0416 8.65333 21.2016 8.6C22.4816 8.6 23.1216 9 23.1216 9.8C23.1216 10.28 22.9349 10.76 22.5616 11.24C22.1882 11.6667 21.7349 11.9867 21.2016 12.2C20.4016 12.3067 19.3082 12.4133 17.9216 12.52L14.9616 12.76C16.3482 14.84 18.1616 17.0533 20.4016 19.4C20.6149 19.6133 20.7216 20.0133 20.7216 20.6C20.7216 21.1333 20.5082 21.6133 20.0816 22.04C19.6549 22.4667 19.2016 22.68 18.7216 22.68Z"
                            fill="#FB3C29" />
                    </svg>

                    - обязательно для заполнения
                </div>

                <!-- В качестве кого вы регистрируетесь? -->
                <div class="form-page__input" data-panel>
                <input type="hidden" name="">
                    <span class="form-page__input_text"></span>
                    <label>В качестве кого вы регистрируетесь? <span>*</span></label>
                    <ul class="form-page__panel">
                        <li>Учитель</li>
                        <li>Школьник</li>
                        <li>Родитель</li>
                    </ul>
                </div>

                <button class="form-page__btn">Сохранить</button>

            </form>

        </div>
    </section>
    `;

     toggleFormPagePanel();

    const btn = document.querySelector('.form-page__btn');
    const spanText = document.querySelector('.form-page__input_text');
    
    btn.addEventListener('click', (e) => {
        e.preventDefault();
        if (spanText.textContent === 'Учитель') {
            window.location.replace("signupLKTeacheForm.html");
        } else if (spanText.textContent === 'Школьник') {
            window.location.replace("signupLKStudentForm.html");
        } else if (spanText.textContent === 'Родитель') {
            window.location.replace("signupLKParentForm.html");
        } else {
            alert('Выберите роль');
        }
    });
}