<?php
/* Smarty version 3.1.34-dev-7, created on 2024-05-20 12:35:20
  from '/var/www/progresselektro.ru/assets/templates/personal-manager.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_664b19580b22b9_57326927',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'e691a86158755ec9d5954759b92a9ec017ca6572' => 
    array (
      0 => '/var/www/progresselektro.ru/assets/templates/personal-manager.tpl',
      1 => 1679222215,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_664b19580b22b9_57326927 (Smarty_Internal_Template $_smarty_tpl) {
?><section class="help">
    <div class="container">
        <div class="help__wrap">
            <div class="help__title">Нужна помощь<br> в подборе товаров?</div>
            <div class="help__connect-item">
                <div class="help__connect-item-name">Позвоните нам</div>
                <a href="tel:<?php echo $_smarty_tpl->tpl_vars['contact_phone']->value;?>
">
                    <div class="help__button"><?php echo $_smarty_tpl->tpl_vars['contact_phone']->value;?>

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
<?php }
}
