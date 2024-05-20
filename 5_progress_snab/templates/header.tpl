<div class="header" data-uid="{$user.uid}" data-istest="{$isTest}">
    <div class="container">
        <div class="header__wrapper">
            <div class="header__logo">
                <a href="/" style="display: inline-block;"><img src="/assets/icon/logo.svg"  style="width:270px" alt=""></a>
            </div>
            <div class="header__city">
                <div class="header__city-title" data-cityId="{$user_city_id}">Ваш город:</div>
                <div class="header__city-choose">{$user_city}</div>
                <div class="header__city-popup {if $hide_city_popup}hide{/if}">
                    <div class="header__city-arrow"></div>
                    <div class="header__city-popup__wrap">
                        <div class="header__city-popup__question">Ваш город {$user_city}?</div>
                        <div class="header__city-popup__answers">
                            <button class="header__city-popup__yes">Да</button>
                            <button class="header__city-popup__no">Нет, изменить</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header__callback-wrap">
                <div class="header__callback-phone"><a href="tel:{$contact_phone}">{$contact_phone}</a></div>
                <div class="header__email"><a href="mailto:{$contact_email}">{$contact_email}</a></div>
            </div>
            <ul class="header__nav">
                <li class="nav__item {if $pagetype=='delivery'}nav__item--active{/if}"><a href="/info/delivery" class="nav__link">Доставка</a></li>
                <li class="nav__item {if $pagetype=='pay'}nav__item--active{/if}" ><a href="/info/pay" class="nav__link">Оплата</a></li>
                <li class="nav__item {if $pagetype=='about'}nav__item--active{/if}" ><a href="/info/about" class="nav__link">О компании</a></li>
                <li class="nav__item {if $pagetype=='contacts'}nav__item--active{/if}"><a href="/info/contacts" class="nav__link">Контакты</a></li>
            </ul>
            <div class="header__actions">
                {if $user.uid==0}
                    <div class="header__enter-icon cs_login_btn button-register" data-mode="0" data-type="open">
                        <svg>
                            <use xlink:href="/assets/sprite.svg#login"></use>
                        </svg>
                    </div>
                {else}
                <a href="{if $user.user_status<=1}/user/cabinet/{else}/manager/{/if}" class="header__enter-icon header__enter-icon--enter header__button button-register" data-mode="0" data-type="open">
                    <svg>
                        <use xlink:href="/assets/sprite.svg#login"></use>
                    </svg>
                    <div class="header__enter-email">{$user.email}</div>
                </a>
                 {/if}
                <div class="nav__cart">
                <a href="/cart/" class="nav__cart-link" {if $cart.cnt==0}style="cursor:default"{/if}>
                    <svg class="nav__cart-icon">
                        <use xlink:href="/assets/sprite.svg#cart"></use>
                    </svg>
                    <div class="nav__cart-counter cartitems"  data-items='{$cart.json}'>{$cart.cnt}</div>
                </a>
                    <!--<div class="nav__cart-sum">{if $cart.totalsum}{$cart.totalsum_str}{/if}</div>-->
                </div>
            </div>
        </div>
        <div class="header__mobile">
            <div class="header__mobile-enter">
                <div class="header__logo">
                    <a href="/"><img src="/assets/icon/logo.svg" style="width:270px" alt=""></a>
                </div>
                {if $user.uid==0}
                <div class="header__enter-icon header__enter-icon-mobile cs_login_btn button-register" data-mode="0" data-type="open">
                    <svg>
                        <use xlink:href="/assets/sprite.svg#login"></use>
                    </svg>
                </div>
                {else}
                    <a href="{if $user.user_status<=1}/user/cabinet/{else}/manager/{/if}" class="header__enter-icon header__enter-icon-mobile header__button button-register" data-mode="0" data-type="open">
                        <svg>
                            <use xlink:href="/assets/sprite.svg#login"></use>
                        </svg>
                    </a>
                {/if}
            </div>
            <div class="header__mobile-wrap">
                <ul class="nav__list">
                    <li class="nav__item nav__link-menu ctlg">
                        <div class="nav__catalog-icon">
                            <div class="nav__catalog-icon-show">
                                <svg>
                                    <use xlink:href="/assets/sprite.svg#catalog"></use>
                                </svg>
                            </div>
                            <img class="nav__catalog-icon-close hide" src="/assets/icon/close-catalog.svg"/>
                        </div>
                    </li>
                    <div class="dropdown-menu hide">
                        <div class="container">
                            <div class="dropdown-menu__backdrop"></div>
                            <div class="dropdown-menu__container">
                                <div class="dropdown-menu__close"><img src="/assets/icon/close.svg" alt=""></div>
                                <div class="dropdown-menu-scroll topctlg">
                                    {include file='catalog_tree_mob.tpl'}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="search">
                        <a href="" class="search_button search__toggle">
                           <svg>
                                <use xlink:href="/assets/sprite.svg#search"></use>
                            </svg>
                        </a>
                        <input name="mr_search" id="s_inp1" class="search__input search-list" type="text" placeholder="Поиск товаров">
                        <a href="" class="search_button search__link"></a>
                    </div>
                </ul>
                <div class="header__mobile-actions">
                    <div class="nav__cart">
                        <a href="/cart/" class="nav__cart-link" {if $cart.cnt==0}style="cursor:default"{/if}>
                            <svg class="nav__cart-icon">
                                <use xlink:href="/assets/sprite.svg#cart"></use>
                            </svg>
                            <div class="nav__cart-counter cartitems"  data-items='{$cart.json}'>{$cart.cnt}</div>
                        </a>
                        <!--<div class="nav__cart-sum">{if $cart.totalsum}{$cart.totalsum_str}{/if}</div>-->
                    </div>
                </div>
            </div>
            <div class="header__city-mobile">
                <div class="header__city-title">Ваш город:</div>
                <div class="header__city-choose header__city-choose-mobile">Красноярск</div>
                <div class="header__city-popup hide">
                    <div class="header__city-arrow"></div>
                    <div class="header__city-popup__wrap">
                        <div class="header__city-popup__question">Ваш город Красноярск?</div>
                        <div class="header__city-popup__answers">
                            <button class="header__city-popup__yes">Да</button>
                            <button class="header__city-popup__no">Нет, изменить</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="nav">
    <div class="container">
        <ul class="nav__list">
        <li class="nav__link-menu ctlg">
            <div class="nav__catalog-icon">
                <div class="nav__catalog-icon-show">
                    <svg>
                        <use xlink:href="/assets/sprite.svg#catalog"></use>
                    </svg>
                </div>
                <img class="nav__catalog-icon-close hide" src="/assets/icon/close-catalog.svg"/>
            </div>
            <div class="nav__link-name ctlg">Каталог электротоваров</div>
        </li>
        <div class="dropdown-menu hide">
            <div class="container">
                <div class="dropdown-menu__backdrop"></div>
                <div class="dropdown-menu__container">
                <div class="dropdown-menu__close">
                    <svg data-type="close">
                        <use xlink:href="/assets/sprite.svg#close"></use>
                    </svg> 
                </div>
                <div class="dropdown-menu-scroll topctlg">
                    {include file='catalog_tree.tpl'}
                </div>
                </div>
            </div>
        </div>
        <div class="search">
            <a href="" class="search_button search__toggle">
                <svg>
                    <use xlink:href="/assets/sprite.svg#search"></use>
                </svg>
            </a>
            <input name="mr_search" id="s_inp2" class="search__input search-list" type="text"
            placeholder="Поиск товаров">
        </div>
        </ul>
    </div>
</div>
<div class="nav nav-fixed">
    <div class="container">
        <ul class="nav__list nav__list--fixed">
        <div class="nav__logo">
            <a href="/"><img src="/assets/icon/logo.svg"  style="width:270px" alt=""></a>
        </div>
        <li class="nav__item nav__link-menu nav__link-menu--fixed ctlg">
            <div class="nav__catalog-icon">
            <div class="nav__catalog-icon-show">
                <svg>
                    <use xlink:href="/assets/sprite.svg#catalog"></use>
                </svg>
            </div>
            <img class="nav__catalog-icon-close hide" src="/assets/icon/close-catalog.svg"/>
            </div>
        </li>
        <div class="search">
            <a href="" class="search_button search__toggle">
                <svg>
                    <use xlink:href="/assets/sprite.svg#search"></use>
                </svg>
            </a>
            <input name="mr_search" id="s_inp3" class="search__input search-list search__input--fixed" type="text"
                placeholder="Поиск товаров">
            <a href="" class="search_button search__link"></a>
        </div>
        <div class="header__callback-wrap-fixed">
            <div class="header__callback-phone header__callback-phone--fixed"><a href="tel:{$contact_phone}">{$contact_phone}</a></div>
            <div class="header__email header__email--fixed"><a href="mailto:{$contact_email}">{$contact_email}</a></div>
        </div>
        <div class="header__actions">
            {if $user.uid==0}
                <div class="header__enter-icon cs_login_btn button-register" data-mode="0" data-type="open">
                    <svg>
                        <use xlink:href="/assets/sprite.svg#login"></use>
                    </svg> 
                </div>
            {else}
                <a href="{if $user.user_status<=1}/user/cabinet/{else}/manager/{/if}" class="header__enter-icon header__enter-icon--enter header__button button-register" data-mode="0" data-type="open">
                    <svg>
                        <use xlink:href="/assets/sprite.svg#login"></use>
                    </svg>
                    <div class="header__enter-email">{$user.email}</div>
                </a>
            {/if}
            <div class="nav__cart">
            <a href="/cart/" class="nav__cart-link">
                <svg class="nav__cart-icon">
                    <use xlink:href="/assets/sprite.svg#cart"></use>
                </svg>
                <div class="nav__cart-counter cartitems"  data-items='{$cart.json}'>{$cart.cnt}</div>
            </a>
            <!--<div class="nav__cart-sum">{if $cart.totalsum}{$cart.totalsum_str}{/if}</div>-->
            </div>
        </ul>
    </div>
</div>

{if isset($path)}
    <div class="header__breadcrumbs">
        <div class="container">
            <ul class="header__breadcrumbs-list">
                <li class="header__breadcrumbs-item">
                    <a href="/" class="header__breadcrumbs-link">Главная</a>
                </li>
                {if 1==0}
                <li class="header__breadcrumbs-arrow">
                    <img src="/assets/icon/arrow-breadcrumbs.svg"/>
                </li>
                <li class="header__breadcrumbs-item">
                    <a href="" class="header__breadcrumbs-link">Каталог</a>
                </li>
                {/if}

                {foreach from=$path item=p name=path}
                    <li class="header__breadcrumbs-arrow">
                        <img src="/assets/icon/arrow-breadcrumbs.svg"/>
                    </li>
                    <li class="header__breadcrumbs-item">
                        {if ($p.u && ($p.u!='/catalog/electro') && ($p.u!='/catalog/lighting')  && ($p.u!='/catalog/lighting')
                        && ($p.u != '/catalog/security') && ($p.u != '/catalog/telecom') && ($p.u != '/catalog/sundries')
                        && ($p.u != '/catalog/cable')   ) }
                            <a href="{$p.u}" class="header__breadcrumbs-link">{$p.t}</a>
                        {else}
                            <span class="{if $p.level==1}header__breadcrumbs-item{else}header__breadcrumbs-current{/if}">{$p.t}</span>
                        {/if}
                    </li>
                {/foreach}

            </ul>
        </div>
    </div>
{/if}
