<?php
/* Smarty version 3.1.34-dev-7, created on 2024-05-20 12:35:20
  from '/var/www/progresselektro.ru/assets/templates/header.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_664b1958000151_12550897',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '95778a76f3f638f2d15b63bf3bfe64b6fa47c014' => 
    array (
      0 => '/var/www/progresselektro.ru/assets/templates/header.tpl',
      1 => 1710359465,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:catalog_tree_mob.tpl' => 1,
    'file:catalog_tree.tpl' => 1,
  ),
),false)) {
function content_664b1958000151_12550897 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="header" data-uid="<?php echo $_smarty_tpl->tpl_vars['user']->value['uid'];?>
" data-istest="<?php echo $_smarty_tpl->tpl_vars['isTest']->value;?>
">
    <div class="container">
        <div class="header__wrapper">
            <div class="header__logo">
                <a href="/" style="display: inline-block;"><img src="/assets/icon/logo.svg"  style="width:270px" alt=""></a>
            </div>
            <div class="header__city">
                <div class="header__city-title" data-cityId="<?php echo $_smarty_tpl->tpl_vars['user_city_id']->value;?>
">Ваш город:</div>
                <div class="header__city-choose"><?php echo $_smarty_tpl->tpl_vars['user_city']->value;?>
</div>
                <div class="header__city-popup <?php if ($_smarty_tpl->tpl_vars['hide_city_popup']->value) {?>hide<?php }?>">
                    <div class="header__city-arrow"></div>
                    <div class="header__city-popup__wrap">
                        <div class="header__city-popup__question">Ваш город <?php echo $_smarty_tpl->tpl_vars['user_city']->value;?>
?</div>
                        <div class="header__city-popup__answers">
                            <button class="header__city-popup__yes">Да</button>
                            <button class="header__city-popup__no">Нет, изменить</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header__callback-wrap">
                <div class="header__callback-phone"><a href="tel:<?php echo $_smarty_tpl->tpl_vars['contact_phone']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['contact_phone']->value;?>
</a></div>
                <div class="header__email"><a href="mailto:<?php echo $_smarty_tpl->tpl_vars['contact_email']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['contact_email']->value;?>
</a></div>
            </div>
            <ul class="header__nav">
                <li class="nav__item <?php if ($_smarty_tpl->tpl_vars['pagetype']->value == 'delivery') {?>nav__item--active<?php }?>"><a href="/info/delivery" class="nav__link">Доставка</a></li>
                <li class="nav__item <?php if ($_smarty_tpl->tpl_vars['pagetype']->value == 'pay') {?>nav__item--active<?php }?>" ><a href="/info/pay" class="nav__link">Оплата</a></li>
                <li class="nav__item <?php if ($_smarty_tpl->tpl_vars['pagetype']->value == 'about') {?>nav__item--active<?php }?>" ><a href="/info/about" class="nav__link">О компании</a></li>
                <li class="nav__item <?php if ($_smarty_tpl->tpl_vars['pagetype']->value == 'contacts') {?>nav__item--active<?php }?>"><a href="/info/contacts" class="nav__link">Контакты</a></li>
            </ul>
            <div class="header__actions">
                <?php if ($_smarty_tpl->tpl_vars['user']->value['uid'] == 0) {?>
                    <div class="header__enter-icon cs_login_btn button-register" data-mode="0" data-type="open">
                        <svg>
                            <use xlink:href="/assets/sprite.svg#login"></use>
                        </svg>
                    </div>
                <?php } else { ?>
                <a href="<?php if ($_smarty_tpl->tpl_vars['user']->value['user_status'] <= 1) {?>/user/cabinet/<?php } else { ?>/manager/<?php }?>" class="header__enter-icon header__enter-icon--enter header__button button-register" data-mode="0" data-type="open">
                    <svg>
                        <use xlink:href="/assets/sprite.svg#login"></use>
                    </svg>
                    <div class="header__enter-email"><?php echo $_smarty_tpl->tpl_vars['user']->value['email'];?>
</div>
                </a>
                 <?php }?>
                <div class="nav__cart">
                <a href="/cart/" class="nav__cart-link" <?php if ($_smarty_tpl->tpl_vars['cart']->value['cnt'] == 0) {?>style="cursor:default"<?php }?>>
                    <svg class="nav__cart-icon">
                        <use xlink:href="/assets/sprite.svg#cart"></use>
                    </svg>
                    <div class="nav__cart-counter cartitems"  data-items='<?php echo $_smarty_tpl->tpl_vars['cart']->value['json'];?>
'><?php echo $_smarty_tpl->tpl_vars['cart']->value['cnt'];?>
</div>
                </a>
                    <!--<div class="nav__cart-sum"><?php if ($_smarty_tpl->tpl_vars['cart']->value['totalsum']) {
echo $_smarty_tpl->tpl_vars['cart']->value['totalsum_str'];
}?></div>-->
                </div>
            </div>
        </div>
        <div class="header__mobile">
            <div class="header__mobile-enter">
                <div class="header__logo">
                    <a href="/"><img src="/assets/icon/logo.svg" style="width:270px" alt=""></a>
                </div>
                <?php if ($_smarty_tpl->tpl_vars['user']->value['uid'] == 0) {?>
                <div class="header__enter-icon header__enter-icon-mobile cs_login_btn button-register" data-mode="0" data-type="open">
                    <svg>
                        <use xlink:href="/assets/sprite.svg#login"></use>
                    </svg>
                </div>
                <?php } else { ?>
                    <a href="<?php if ($_smarty_tpl->tpl_vars['user']->value['user_status'] <= 1) {?>/user/cabinet/<?php } else { ?>/manager/<?php }?>" class="header__enter-icon header__enter-icon-mobile header__button button-register" data-mode="0" data-type="open">
                        <svg>
                            <use xlink:href="/assets/sprite.svg#login"></use>
                        </svg>
                    </a>
                <?php }?>
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
                                    <?php $_smarty_tpl->_subTemplateRender('file:catalog_tree_mob.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
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
                        <a href="/cart/" class="nav__cart-link" <?php if ($_smarty_tpl->tpl_vars['cart']->value['cnt'] == 0) {?>style="cursor:default"<?php }?>>
                            <svg class="nav__cart-icon">
                                <use xlink:href="/assets/sprite.svg#cart"></use>
                            </svg>
                            <div class="nav__cart-counter cartitems"  data-items='<?php echo $_smarty_tpl->tpl_vars['cart']->value['json'];?>
'><?php echo $_smarty_tpl->tpl_vars['cart']->value['cnt'];?>
</div>
                        </a>
                        <!--<div class="nav__cart-sum"><?php if ($_smarty_tpl->tpl_vars['cart']->value['totalsum']) {
echo $_smarty_tpl->tpl_vars['cart']->value['totalsum_str'];
}?></div>-->
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
                    <?php $_smarty_tpl->_subTemplateRender('file:catalog_tree.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
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
            <div class="header__callback-phone header__callback-phone--fixed"><a href="tel:<?php echo $_smarty_tpl->tpl_vars['contact_phone']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['contact_phone']->value;?>
</a></div>
            <div class="header__email header__email--fixed"><a href="mailto:<?php echo $_smarty_tpl->tpl_vars['contact_email']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['contact_email']->value;?>
</a></div>
        </div>
        <div class="header__actions">
            <?php if ($_smarty_tpl->tpl_vars['user']->value['uid'] == 0) {?>
                <div class="header__enter-icon cs_login_btn button-register" data-mode="0" data-type="open">
                    <svg>
                        <use xlink:href="/assets/sprite.svg#login"></use>
                    </svg> 
                </div>
            <?php } else { ?>
                <a href="<?php if ($_smarty_tpl->tpl_vars['user']->value['user_status'] <= 1) {?>/user/cabinet/<?php } else { ?>/manager/<?php }?>" class="header__enter-icon header__enter-icon--enter header__button button-register" data-mode="0" data-type="open">
                    <svg>
                        <use xlink:href="/assets/sprite.svg#login"></use>
                    </svg>
                    <div class="header__enter-email"><?php echo $_smarty_tpl->tpl_vars['user']->value['email'];?>
</div>
                </a>
            <?php }?>
            <div class="nav__cart">
            <a href="/cart/" class="nav__cart-link">
                <svg class="nav__cart-icon">
                    <use xlink:href="/assets/sprite.svg#cart"></use>
                </svg>
                <div class="nav__cart-counter cartitems"  data-items='<?php echo $_smarty_tpl->tpl_vars['cart']->value['json'];?>
'><?php echo $_smarty_tpl->tpl_vars['cart']->value['cnt'];?>
</div>
            </a>
            <!--<div class="nav__cart-sum"><?php if ($_smarty_tpl->tpl_vars['cart']->value['totalsum']) {
echo $_smarty_tpl->tpl_vars['cart']->value['totalsum_str'];
}?></div>-->
            </div>
        </ul>
    </div>
</div>

<?php if (isset($_smarty_tpl->tpl_vars['path']->value)) {?>
    <div class="header__breadcrumbs">
        <div class="container">
            <ul class="header__breadcrumbs-list">
                <li class="header__breadcrumbs-item">
                    <a href="/" class="header__breadcrumbs-link">Главная</a>
                </li>
                <?php if (1 == 0) {?>
                <li class="header__breadcrumbs-arrow">
                    <img src="/assets/icon/arrow-breadcrumbs.svg"/>
                </li>
                <li class="header__breadcrumbs-item">
                    <a href="" class="header__breadcrumbs-link">Каталог</a>
                </li>
                <?php }?>

                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['path']->value, 'p', false, NULL, 'path', array (
));
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['p']->value) {
?>
                    <li class="header__breadcrumbs-arrow">
                        <img src="/assets/icon/arrow-breadcrumbs.svg"/>
                    </li>
                    <li class="header__breadcrumbs-item">
                        <?php if (($_smarty_tpl->tpl_vars['p']->value['u'] && ($_smarty_tpl->tpl_vars['p']->value['u'] != '/catalog/electro') && ($_smarty_tpl->tpl_vars['p']->value['u'] != '/catalog/lighting') && ($_smarty_tpl->tpl_vars['p']->value['u'] != '/catalog/lighting') && ($_smarty_tpl->tpl_vars['p']->value['u'] != '/catalog/security') && ($_smarty_tpl->tpl_vars['p']->value['u'] != '/catalog/telecom') && ($_smarty_tpl->tpl_vars['p']->value['u'] != '/catalog/sundries') && ($_smarty_tpl->tpl_vars['p']->value['u'] != '/catalog/cable'))) {?>
                            <a href="<?php echo $_smarty_tpl->tpl_vars['p']->value['u'];?>
" class="header__breadcrumbs-link"><?php echo $_smarty_tpl->tpl_vars['p']->value['t'];?>
</a>
                        <?php } else { ?>
                            <span class="<?php if ($_smarty_tpl->tpl_vars['p']->value['level'] == 1) {?>header__breadcrumbs-item<?php } else { ?>header__breadcrumbs-current<?php }?>"><?php echo $_smarty_tpl->tpl_vars['p']->value['t'];?>
</span>
                        <?php }?>
                    </li>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

            </ul>
        </div>
    </div>
<?php }
}
}
