<?php
/* Smarty version 3.1.34-dev-7, created on 2024-05-20 12:35:20
  from '/var/www/progresselektro.ru/assets/templates/footer.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_664b19580b5672_93396164',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'e76949d9a502628ba38fca33adfd828a48356d99' => 
    array (
      0 => '/var/www/progresselektro.ru/assets/templates/footer.tpl',
      1 => 1707803523,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_664b19580b5672_93396164 (Smarty_Internal_Template $_smarty_tpl) {
?><!--choose-city-->

<footer class="footer">
    <div class="container">
    <div class="row">
        <div class="col-12 col-lg-3">
            <div class="footer__logo">
                <img src="/assets/icon/logo-big.svg" alt="" style="display:inline-block;width:270px" >
            </div>
        </div>
        <div class="col-12 col-lg-3">
            <ul class="footer__nav-list">
                <li class="footer__nav-list-title">Каталог</li>
                <li class="footer__nav-item"><a href="/catalog/cable/18/19/" class="footer__nav-link">Кабели и провода</a></li>
                <li class="footer__nav-item"><a href="/catalog/lighting/10432/" class="footer__nav-link">Светотехника</a></li>
                <li class="footer__nav-item"><a href="/catalog/electro/10132/10133/10134/10136/" class="footer__nav-link">Щитовое оборудование</a></li>
                <li class="footer__nav-item"><a href="/catalog/electro/9917/9918/9925/" class="footer__nav-link">Низковольтное оборудование</a></li>
                <li class="footer__nav-item"><a href="/catalog/electro/9711/9811/9819/" class="footer__nav-link">Кабельные муфты и фурнитура</a></li>
                <li class="footer__nav-item"><a href="/catalog/electro/9711/9712/9713/" class="footer__nav-link">Распределительные системы</a></li>
            </ul>
        </div>
        <div class="col-12 col-lg-3">
            <ul class="footer__nav-list">
                <li class="footer__nav-list-title">Условия</li>
                <li class="footer__nav-item"><a href="/info/delivery" class="footer__nav-link">Доставка</a></li>
                <li class="footer__nav-item"><a href="/info/pay" class="footer__nav-link">Оплата</a></li>
<!--
                <li class="footer__nav-item"><span class="footer__nav-link footer__nav-link--inactive">Отмотка кабеля</span></li>
                <li class="footer__nav-item"><span class="footer__nav-link footer__nav-link--inactive">Отгрузка кабеля</span></li>
-->
            </ul>
        </div>
        <div class="col-12 col-lg-3">
            <div class="footer__nav-list footer__nav-list-contact">
                <div class="footer__nav-list-title"><a href="/info/about">О компании</a></div>
            </div>
            <div class="footer__nav-list footer__nav-list-contact">
                <div class="footer__nav-list-title"><a href="/info/contacts">Контакты</a></div>
                <div class="footer__nav-link footer__nav-link--inactive footer__nav-link--inactive-city">Иркутск</div>
                <div class="footer__phone">
                <div class="footer__phone-image">
                    <img src="/assets/icon/phone.svg" alt="">
                </div>
                <div class="footer__phone-number"><a href="tel:<?php echo $_smarty_tpl->tpl_vars['contact_phone']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['contact_phone']->value;?>
</a></div>
                </div>
                <div class="footer__mail">
                <div class="footer__mail-image">
                    <img src="/assets/icon/mail.svg" alt="">
                </div>
                <div class="footer__mail-text"><a href="mailto:Psnab138@bk.ru">Psnab138@bk.ru</a></div>
                </div>
                <div class="footer__address">
                <div class="footer__address-image">
                    <img src="/assets/icon/placeholder.svg" alt="">
                </div>
                <div class="footer__address-text">ул. Красноказачья, д. 135, 2 этаж, оф. 11</div>
                </div>
            </div>
            <div class="footer__nav-list footer__nav-list-contact">
                <div class="footer__nav-link footer__nav-link--inactive footer__nav-link--inactive-city">Красноярск</div>
                <div class="footer__phone">
                <div class="footer__phone-image">
                    <img src="/assets/icon/phone.svg" alt="">
                </div>
                <div class="footer__phone-number"><a href="tel:+7 (953) 840-00-22">+7 (953) 840-00-22</a></div>
                </div>
                <div class="footer__mail">
                <div class="footer__mail-image">
                    <img src="/assets/icon/mail.svg" alt="">
                </div>
                <div class="footer__mail-text"><a href="mailto:Progresssnab-krk@mail.ru">Progresssnab-krk@mail.ru</a></div>
                </div>
                <div class="footer__address">
                <div class="footer__address-image">
                    <img src="/assets/icon/placeholder.svg" alt="">
                </div>
                <div class="footer__address-text">ул. Алексеева, 6г, 1 этаж, оф. 12</div>
                </div>
            </div>
        </div>
    </div>
    </div>
</footer>
<div class="footer__info-wrap">
    <div class="container">
    <div class="footer__info-policy">
        <div class="footer__info-right">© <?php echo $_smarty_tpl->tpl_vars['cYear']->value;?>
 ООО «ПрогрессСнаб»</div>
        <?php if (1 == 0) {?><div class="footer__info-right-text">Разработка и поддержка <a href="https://k-ps.ru/"  rel="nofollow">КПС</a></div><?php }?>
    </div>
    </div>
</div>


<!-- Yandex.Metrika counter -->
<?php echo '<script'; ?>
 type="text/javascript" >
    (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
    m[i].l=1*new Date();
    for (var j = 0; j < document.scripts.length; j++) {if (document.scripts[j].src === r) { return; }}
    k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
    (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

    ym(93139935, "init", {
        clickmap:true,
        trackLinks:true,
        accurateTrackBounce:true,
        webvisor:true
    });
<?php echo '</script'; ?>
>
<noscript><div><img src="https://mc.yandex.ru/watch/93139935" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->

<?php }
}
