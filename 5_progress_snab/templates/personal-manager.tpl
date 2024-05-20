<section class="help">
    <div class="container">
        <div class="help__wrap">
            <div class="help__title">Нужна помощь<br> в подборе товаров?</div>
            <div class="help__connect-item">
                <div class="help__connect-item-name">Позвоните нам</div>
                <a href="tel:{$contact_phone}">
                    <div class="help__button">{$contact_phone}
                        <svg>
                            <use xlink:href="/assets/sprite.svg#phone"></use>
                        </svg>
                    </div>
                </a>
            </div>
            <div class="help__connect-item">
                <div class="help__connect-item-name">или закажите обратный звонок</div>
                <form action="" class="help__form popup-callback__form">
                    <div class="help__form-wrap">
                        <label class="form-input form-input--help">
                            <label for="phone" class="help__form-label">Ваш номер телефона</label>
                            <input data-req="1" type="phone" name="help__form-label-phone" class="input input-valid input-phone help-input popup-callback__form-input" placeholder="+7 (___) ___-__-__">
                        </label>
                        <button class="help__form-button submit popup-callback__form-button" type="submit">Заказать</button>
                    </div>
                    <div class="help__text_result popup-callback__text_result"></div>
                </form>
            </div>
            </div>
        </div>
    </div>
</section>
