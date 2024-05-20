<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{$title2}</title>
   <meta name="description" content="{$description}"> 
    {include file='css_js.tpl'}
</head>
<body>
<div class="page">
    <!--FIXED-->
    <div class="fixed">
        <div class="fixed__login">
            <a href="" class="fixed__login-link">
                <img src="/assets/icon/login.svg" class="fixed__login-icon"/>
            </a>
        </div>
        <div class="fixed__cart">
            <a href="" class="fixed__cart-link">
                <img src="/assets/icon/cart.svg" class="fixed__cart-icon"/>
                <div class="fixed__cart-counter">0</div>
            </a>
        </div>
    </div>
    <!--HEADER-->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="header__wrapper">
                    <div class="header__logo">
                        <a href="/"><img src="/assets/icon/logo.svg" alt=""></a>
                    </div>
                    <div class="header__phone">
                        <div class="header__phone-wrapper">
                            <div class="header__phone-num">8(987) 654-32-10</div>
                            <div class="header__phone-city">Санкт-Петербург</div>
                        </div>
                        <div class="header__phone-wrapper">
                            <div class="header__phone-num">8(800) 555-32-10</div>
                            <div class="header__phone-city">Москва</div>
                        </div>
                    </div>
                    <div class="header__info">
                        <div class="header__info-email">info@rosenergy.ru</div>
                        <a href="" class="header__info-call">Заказать звонок</a>
                    </div>

                    <div class="header__search">
                        <div class="header__toggle">
                            <svg width="24" height="24">
                                <use xlink:href="/assets/sprite.svg#burger"></use>
                            </svg>
                        </div>
                        <input class="header__search-input" type="text" placeholder="Поиск...">
                        <a href="" class="header__search-link"></a>
                    </div>
                </div>
            </div>
        </div>
        <nav class="header__nav">
            <div class="container">
                <ul class="header__nav-list">
                    <li class="header__nav-item">
                        <div href="" class="header__nav-link header__nav-menu">
                            <img class="header__nav-icon" src="/assets/icon/burger.svg" alt="">
                            Каталог
                        </div>
                    </li>
                    <li class="header__nav-item">
                        <a href="" class="header__nav-link">
                            <img class="header__nav-icon" src="/assets/icon/sale.svg" alt="">
                            Акции
                        </a>
                    </li>
                    <li class="header__nav-item"><a href="" class="header__nav-link">Спецпредложения</a></li>
                    <li class="header__nav-item"><a href="" class="header__nav-link">Услуги</a></li>
                    <li class="header__nav-item"><a href="" class="header__nav-link">О компании</a></li>
                    <li class="header__nav-item"><a href="" class="header__nav-link">Наши партнеры</a></li>
                    <li class="header__nav-item"><a href="" class="header__nav-link">Новости</a></li>
                    <li class="header__nav-item"><a href="" class="header__nav-link">Контакты</a></li>
                </ul>
            </div>
        </nav>
        <div class="header__breadcrumbs">
            <div class="container">
                <ul class="header__breadcrumbs-list">
                    <li class="header__breadcrumbs-item">
                        <a href="/" class="header__breadcrumbs-link">Главная</a>
                    </li>
                    {foreach from=$path item=p name=path}
                    <li class="header__breadcrumbs-item">
                        <span href="/catalog/{$razdel0}/{$p.url}" class="header__breadcrumbs-current">{$p.t}</span>
                    </li>
                    {/if}
                </ul>
            </div>
        </div>
        <div class="header__title">
            <div class="container">
                <h1>{$title}</h1>
            </div>
        </div>
    </header>

    <!--MAIN-->
    <main class="main">
        <div class="container">
            <div class="row">
                <!--sidebar-->
                <div class="col-3">
                    <div class="sidebar">
                        {include file="filter_column.tpl"}
                    </div>
                </div>
                <div class="col-12 col-sm-9">
                    <div class="sorting">
                        <div class="sorting__container">
                            <div class="sorting__price">
                                <div class="sorting__price-text">Сортировка: </div>
                                <div class="sorting__price-dropdown">по возрастанию цены</div>
                            </div>
                            <div class="sorting__wrapper">
                                <div class="sorting__availability">
                                    <label class="sorting__availability-label">
                                        <input type="checkbox" class="checkbox sorting__availability-checkbox ">
                                        <span class="sorting__availability-span">В наличии</span>
                                    </label>
                                </div>
                                <div class="sorting__view">
                                    <div class="sorting__view-button">
                                        <label class="sorting__view-label">
                                            <input type="radio" class="sorting__view-checkbox" name="view" checked>
                                            <div class="sorting__view-icon">
                                                <svg>
                                                    <use xlink:href="/assets/sprite.svg#sorting_1"></use>
                                                </svg>
                                            </div>
                                        </label>
                                    </div>
                                    <div class="sorting__view-button">
                                        <label class="sorting__view-label">
                                            <input type="radio" class="sorting__view-checkbox" name="view">
                                            <div class="sorting__view-icon">
                                                <svg>
                                                    <use xlink:href="/assets/sprite.svg#sorting_2"></use>
                                                </svg>
                                            </div>
                                        </label>
                                    </div>
                                    <div class="sorting__view-button">
                                        <label class="sorting__view-label">
                                            <input type="radio" class="sorting__view-checkbox" name="view">
                                            <div class="sorting__view-icon">
                                                <svg>
                                                    <use xlink:href="/assets/sprite.svg#sorting_3"></use>
                                                </svg>
                                            </div>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="products">
                        <!--view_1-->
                        <div class="products">
                            {if $items}
                            {foreach $items as $item}
                            <div class="products__card">
                                <div class="products__card-image">
                                    <img src="/assets/images/products-image-1.png" alt="">
                                </div>
                                <div class="products__card-specification">
                                    <div class="products__card-title">ВВГнг 5х95</div>
                                    <div class="products__card-text">
                                        <span class="products__card-text--grey">Материал:</span>
                                        <span>Медь</span>
                                    </div>
                                    <div class="products__card-text">
                                        <span class="products__card-text--grey">Изоляция:</span>
                                        <span>ПВХ</span>
                                    </div>
                                    <div class="products__card-text">
                                        <span class="products__card-text--grey">Код ЕА:</span>
                                        <span>3421-0059</span>
                                    </div>
                                    <div class="products__card-text">
                                        <span class="products__card-text--grey">Категория: </span>
                                        <span class="products__card-text--orange">Кабель</span>
                                    </div>
                                </div>
                                <div class="products__wrapper">
                                    <div class="products__card-counter">
                                        <div class="products__card-counter-minus products__card-counter-element">-</div>
                                        <div class="products__card-counter-num products__card-counter-element">0</div>
                                        <div class="products__card-counter-plus products__card-counter-element">+</div>
                                    </div>
                                    <div class="products__card-info">
                                        <div class="products__card-price">
                                            3580.10 руб/м
                                        </div>
                                        <div class="products__card-text">
                                            <span class="products__card-text--grey">На складе:</span>
                                            <span>122м</span>
                                        </div>
                                        <div class="products__card-button button-buy">
                                            <a href="#">
                                                Купить
                                                <svg>
                                                    <use xlink:href="/assets/sprite.svg#cart"></use>
                                                </svg>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            {/foreach}
                        </div>
                    </div>
                    <div class="page-pagination">
                        <div class="page-pagination__container">
                            <ul class="page-pagination__list">
                                <li class="page-pagination__item"><img src="/assets/icon/pagination-arrow-left.svg" alt=""></li>
                                <li class="page-pagination__item page-pagination__item--current"><span>1</span></li>
                                <li class="page-pagination__item"><span>2</span></li>
                                <li class="page-pagination__item"><span>3</span></li>
                                <li class="page-pagination__item"><span>...</span></li>
                                <li class="page-pagination__item"><span>36</span></li>
                                <li class="page-pagination__item"><img src="/assets/icon/pagination-arrow-right.svg" alt=""></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="watched">
                    <div class="watched__content">
                        <div class="watched__title">Вы смотрели</div>
                        <div class="watched__container">
                            <div class="watched__wrapper swiper-wrapper">
                                <div class="products-card swiper-slide">
                                    <div class="products-card__image">
                                        <img src="/assets/images/products-image-1.png" alt="">
                                    </div>
                                    <div class="products__card-specification">
                                        <div class="products__card-title">ВВГнг 5х95</div>
                                        <div class="products__card-text">
                                            <span class="products__card-text--grey">Материал:</span>
                                            <span>Медь</span>
                                        </div>
                                        <div class="products__card-text">
                                            <span class="products__card-text--grey">Изоляция:</span>
                                            <span>ПВХ</span>
                                        </div>
                                        <div class="products__card-text">
                                            <span class="products__card-text--grey">Код ЕА:</span>
                                            <span>3421-0059</span>
                                        </div>
                                        <div class="products__card-text">
                                            <span class="products__card-text--grey">Категория: </span>
                                            <span class="products__card-text--orange">Кабель</span>
                                        </div>
                                    </div>
                                    <div class="products-card__price">
                                        3580.10 руб/м
                                    </div>
                                    <div class="products-card__button button-buy">
                                        <a href="#">
                                            Купить
                                            <svg>
                                                <use xlink:href="/assets/sprite.svg#cart"></use>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="products-card swiper-slide">
                                    <div class="products-card__image">
                                        <img src="/assets/images/products-image-2.png" alt="">
                                    </div>
                                    <div class="products__card-specification">
                                        <div class="products__card-title">ВВГнг 5х95</div>
                                        <div class="products__card-text">
                                            <span class="products__card-text--grey">Материал:</span>
                                            <span>Медь</span>
                                        </div>
                                        <div class="products__card-text">
                                            <span class="products__card-text--grey">Изоляция:</span>
                                            <span>ПВХ</span>
                                        </div>
                                        <div class="products__card-text">
                                            <span class="products__card-text--grey">Код ЕА:</span>
                                            <span>3421-0059</span>
                                        </div>
                                        <div class="products__card-text">
                                            <span class="products__card-text--grey">Категория: </span>
                                            <span class="products__card-text--orange">Кабель</span>
                                        </div>
                                    </div>
                                    <div class="products-card__price">
                                        765.00 руб/м
                                    </div>
                                    <div class="products-card__button button-buy">
                                        <a href="#">
                                            Купить
                                            <svg>
                                                <use xlink:href="/assets/sprite.svg#cart"></use>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="products-card swiper-slide">
                                    <div class="products-card__image">
                                        <img src="/assets/images/products-image-3.png" alt="">
                                    </div>
                                    <div class="products__card-specification">
                                        <div class="products__card-title">ВВГнг 5х95</div>
                                        <div class="products__card-text">
                                            <span class="products__card-text--grey">Материал:</span>
                                            <span>Медь</span>
                                        </div>
                                        <div class="products__card-text">
                                            <span class="products__card-text--grey">Изоляция:</span>
                                            <span>ПВХ</span>
                                        </div>
                                        <div class="products__card-text">
                                            <span class="products__card-text--grey">Код ЕА:</span>
                                            <span>3421-0059</span>
                                        </div>
                                        <div class="products__card-text">
                                            <span class="products__card-text--grey">Категория: </span>
                                            <span class="products__card-text--orange">Кабель</span>
                                        </div>
                                    </div>
                                    <div class="products-card__price">
                                        765.00 руб/м
                                    </div>
                                    <div class="products-card__button button-buy">
                                        <a href="#">
                                            Купить
                                            <svg>
                                                <use xlink:href="/assets/sprite.svg#cart"></use>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="products-card swiper-slide">
                                    <div class="products-card__image">
                                        <img src="/assets/images/products-image-4.png" alt="">
                                    </div>
                                    <div class="products__card-specification">
                                        <div class="products__card-title">ВВГнг 5х95</div>
                                        <div class="products__card-text">
                                            <span class="products__card-text--grey">Материал:</span>
                                            <span>Медь</span>
                                        </div>
                                        <div class="products__card-text">
                                            <span class="products__card-text--grey">Изоляция:</span>
                                            <span>ПВХ</span>
                                        </div>
                                        <div class="products__card-text">
                                            <span class="products__card-text--grey">Код ЕА:</span>
                                            <span>3421-0059</span>
                                        </div>
                                        <div class="products__card-text">
                                            <span class="products__card-text--grey">Категория: </span>
                                            <span class="products__card-text--orange">Кабель</span>
                                        </div>
                                    </div>
                                    <div class="products-card__price">
                                        765.00 руб/м
                                    </div>
                                    <div class="products-card__button button-buy">
                                        <a href="#">
                                            Купить
                                            <svg>
                                                <use xlink:href="/assets/sprite.svg#cart"></use>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <div class="watched-button watched-button-prev"></div>
                            <div class="watched-button watched-button-next"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <!--FOOTER-->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-3">
                    <div class="footer__nav">
                        <div class="footer__title footer__dropdown">Кампания</div>
                        <ul class="footer__nav-list">
                            <li class="footer__nav-item"><a href="" class="footer__nav-link">О компании</a></li>
                            <li class="footer__nav-item"><a href="" class="footer__nav-link">Условия оплаты и доставки</a></li>
                            <li class="footer__nav-item"><a href="" class="footer__nav-link">Контакты</a></li>
                            <li class="footer__nav-item"><a href="" class="footer__nav-link">Наши партнеры</a></li>
                            <li class="footer__nav-item"><a href="" class="footer__nav-link">Акции</a></li>
                            <li class="footer__nav-item"><a href="" class="footer__nav-link">Новости</a></li>
                            <li class="footer__nav-item"><a href="" class="footer__nav-link">Политика конфиденциальности </a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-12 col-md-3">
                    <div class="footer__nav">
                        <div class="footer__title footer__dropdown">Каталог</div>
                        <ul class="footer__nav-list">
                            <li class="footer__nav-item"><a href="" class="footer__nav-link">О компании</a></li>
                            <li class="footer__nav-item"><a href="" class="footer__nav-link">Условия оплаты и доставки</a></li>
                            <li class="footer__nav-item"><a href="" class="footer__nav-link">Контакты</a></li>
                            <li class="footer__nav-item"><a href="" class="footer__nav-link">Наши партнеры</a></li>
                            <li class="footer__nav-item"><a href="" class="footer__nav-link">Акции</a></li>
                            <li class="footer__nav-item"><a href="" class="footer__nav-link">Наши партнеры</a></li>
                            <li class="footer__nav-item"><a href="" class="footer__nav-link">Акции</a></li>
                            <li class="footer__nav-item"><a href="" class="footer__nav-link">Новости</a></li>
                            <li class="footer__nav-item"><a href="" class="footer__nav-link">Политика</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-12 col-md-3">
                    <div class="footer__nav">
                        <div class="footer__title footer__dropdown">Услуги</div>
                        <ul class="footer__nav-list">
                            <li class="footer__nav-item"><a href="" class="footer__nav-link">О компании</a></li>
                            <li class="footer__nav-item"><a href="" class="footer__nav-link">Условия оплаты и доставки</a></li>
                            <li class="footer__nav-item"><a href="" class="footer__nav-link">Контакты</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-12 col-md-3">
                    <div class="footer__contacts">
                        <div class="footer__title">
                            Наши контакты
                        </div>
                        <div class="footer__contacts-item">
                            <div class="footer__contacts-icon footer__contacts-icon--align">
                                <img src="/assets/icon/mobile.svg" alt="">
                            </div>
                            <div class="footer__contacts-wrapper">
                                <div class="footer__contacts-text">+7(987) 654-32-10</div>
                                <div class="footer__contacts-subtext">Санкт-Петербург</div>
                                <div class="footer__contacts-text">8(800) 555-32-10</div>
                                <div class="footer__contacts-subtext">Москва</div>
                            </div>
                        </div>
                        <div class="footer__contacts-item">
                            <div class="footer__contacts-icon">
                                <img src="/assets/icon/mail.svg" alt="">
                            </div>
                            <div class="footer__contacts-text">info@rosenergy.ru</div>
                        </div>
                        <div class="footer__contacts-item">
                            <div class="footer__contacts-icon">
                                <img src="/assets/icon/periscope.svg" alt="">
                            </div>
                            <div class="footer__contacts-text">г. Санкт-Петербург, ул. Капитана Воронина, 25</div>
                        </div>
                        <div class="footer__contacts-map">
                            <img src="/assets/images/map.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer__copyright">
                <div class="footer__copyright-text">© ЭнергоАльянс, 2020-2021</div>
                <div class="footer__copyright-text">Coockie</div>
            </div>
        </div>
    </footer>
</div>
<script src="js/script.js"></script>
</body>
</html>