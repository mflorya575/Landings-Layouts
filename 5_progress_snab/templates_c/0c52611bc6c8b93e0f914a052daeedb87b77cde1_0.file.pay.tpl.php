<?php
/* Smarty version 3.1.34-dev-7, created on 2024-05-20 13:27:13
  from '/var/www/progresselektro.ru/assets/templates/pay.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_664b2581a711c9_14784621',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '0c52611bc6c8b93e0f914a052daeedb87b77cde1' => 
    array (
      0 => '/var/www/progresselektro.ru/assets/templates/pay.tpl',
      1 => 1681503179,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:css_js.tpl' => 1,
    'file:loginblock.tpl' => 1,
    'file:header.tpl' => 1,
    'file:footer.tpl' => 1,
    'file:popups.tpl' => 1,
    'file:bottomjs.tpl' => 1,
  ),
),false)) {
function content_664b2581a711c9_14784621 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="ru">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Оплата "<?php echo $_smarty_tpl->tpl_vars['company']->value['name'];?>
"</title>
  <?php $_smarty_tpl->_subTemplateRender('file:css_js.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
    
</head>

<body>
  <div class="page" id="to-top">
    <?php $_smarty_tpl->_subTemplateRender("file:loginblock.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
    <?php $_smarty_tpl->_subTemplateRender('file:header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

      <section class="pay">
         <div class="container">
            <div class="pay__title">Оплата заказа</div>
            <div class="pay__container">
                <div class="pay__content"  id="sticker">
                    <div class="pay__wrap">
                        <div class="pay__name">Безналичный расчёт</div>
                        <div class="pay__item">
                            <div class="pay__item-text">Оплата производится по счёт-договору, выставленному менеджером компании, согласно вашей заявке</div>
                        </div>
                        <div class="pay__item">
                            <div class="pay__item-text">Срок действия цен и брони товаров прописывается в счет-договоре</div>
                        </div>
                        <div class="pay__icon"><img src="/assets/icon/pay-1.svg"/></div>
                    </div>
                    <div class="pay__wrap">
                        <div class="pay__name">Наличный расчет</div>
                        <div class="pay__item">
                            <div class="pay__item-text">Ввиду отсутствия кассового аппарата, наличные средства не принимаются!</div>
                        </div>
                        <div class="pay__item">
                            <div class="pay__item-text">Оплата физическими лицами возможна, через кассу любого, удобного для вас банка, либо через банк-клиент мобильного приложения.</div>
                        </div>
                        <div class="pay__icon"><img src="/assets/icon/pay-2.svg"/></div>
                    </div>
                    <div class="pay__attention">Внимание! Мы реализуем нашу продукцию только по реквизитам, указанным справа</div>
                </div>
                <div class="pay__requisites">
                    <div class="pay__requisites-wrap">
                        <div class="pay__requisites-title">Реквизиты ООО "ПрогрессСнаб"</div>
                        <a class="pay__requisites-download" href="/storage/docs/progressnab-cart.docx">
                            <button class="pay__requisites-button">Скачать реквизиты</button>
                            <svg>
                                <use xlink:href="/assets/sprite.svg#download"></use>
                            </svg>
                        </a>
                    </div>
                    <div class="pay__requisites-item">
                        <div class="pay__requisites-item-name">Полное наименование компании</div>
                        <div class="pay__requisites-item-data">Общество с ограниченной ответственностью «ПрогрессСнаб»</div>
                    </div>
                    <div class="pay__requisites-item">
                        <div class="pay__requisites-item-name">Краткое наименование компании</div>
                        <div class="pay__requisites-item-data">ООО «ПрогрессСнаб»</div>
                    </div>
                    <div class="pay__requisites-item">
                        <div class="pay__requisites-item-name">Юридический адрес</div>
                        <div class="pay__requisites-item-data">664081, Иркутская обл., Иркутский р-н, г. Иркутск, ул. Пискунова, 158/1, кв. 45</div>
                    </div>
                    <div class="pay__requisites-item">
                        <div class="pay__requisites-item-name">ИНН</div>
                        <div class="pay__requisites-item-data">3811463527</div>
                    </div>
                    <div class="pay__requisites-item">
                        <div class="pay__requisites-item-name">КПП</div>
                        <div class="pay__requisites-item-data">381101001</div>
                    </div>

                    <div class="pay__requisites-wrap" style="margin-top:150px">
                        <div class="pay__requisites-title">Реквизиты ИП Соловьева А.Ф. </div>
                        <a class="pay__requisites-download" href="/storage/docs/solovieva-cart.docx">
                            <button class="pay__requisites-button">Скачать реквизиты</button>
                            <svg>
                                <use xlink:href="/assets/sprite.svg#download"></use>
                            </svg>
                        </a>
                    </div>
                    <div class="pay__requisites-item">
                        <div class="pay__requisites-item-name">Полное наименование компании</div>
                        <div class="pay__requisites-item-data">Индивидуальный предприниматель Соловьева Анастасия Федоровна</div>
                    </div>
                    <div class="pay__requisites-item">
                        <div class="pay__requisites-item-name">Краткое наименование компании</div>
                        <div class="pay__requisites-item-data">ИП Соловьева А.Ф.</div>
                    </div>
                    <div class="pay__requisites-item">
                        <div class="pay__requisites-item-name">Юридический адрес</div>
                        <div class="pay__requisites-item-data">664081, Иркутская обл., Иркутский р-н, г. Иркутск, ул. Пискунова, 158/1, кв. 45</div>
                    </div>
                    <div class="pay__requisites-item">
                        <div class="pay__requisites-item-name">Фактический адрес</div>
                        <div class="pay__requisites-item-data">664081, Иркутская обл., Иркутский р-н, г. Иркутск, ул. Красноказачья, д. 135, офис 11</div>
                    </div>
                    <div class="pay__requisites-item">
                        <div class="pay__requisites-item-name">Телефон</div>
                        <div class="pay__requisites-item-data">8 (901) 655 04 20, 8 (983) 465 72 20
                        </div>
                    </div>
                    <div class="pay__requisites-item">
                        <div class="pay__requisites-item-name">ИНН</div>
                        <div class="pay__requisites-item-data">381509075465</div>
                    </div>
                    <div class="pay__requisites-item">
                        <div class="pay__requisites-item-name">ОГРНИП</div>
                        <div class="pay__requisites-item-data">319385000018002</div>
                    </div>
                    <div class="pay__requisites-item">
                        <div class="pay__requisites-item-name">ОКТМО</div>
                        <div class="pay__requisites-item-data">25701000001</div>
                    </div>
                    <div class="pay__requisites-item">
                        <div class="pay__requisites-item-name">ОКПО</div>
                        <div class="pay__requisites-item-data">0146928520</div>
                    </div>
                    <div class="pay__requisites-item">
                        <div class="pay__requisites-item-name">Расчётный счёт</div>
                        <div class="pay__requisites-item-data">40802810518350034333</div>
                    </div>
                    <div class="pay__requisites-item">
                        <div class="pay__requisites-item-name">Корреспондентский счёт</div>
                        <div class="pay__requisites-item-data">30101810900000000607</div>
                    </div>
                    <div class="pay__requisites-item">
                        <div class="pay__requisites-item-name">Банк</div>
                        <div class="pay__requisites-item-data">БАЙКАЛЬСКИЙ БАНК ПАО СБЕРБАНК</div>
                    </div>
                    <div class="pay__requisites-item">
                        <div class="pay__requisites-item-name">БИК</div>
                        <div class="pay__requisites-item-data">042520607</div>
                    </div>
                    <div class="pay__requisites-item">
                        <div class="pay__requisites-item-name">email</div>
                        <div class="pay__requisites-item-data"><a href="mailto:maf138@mail.ru">maf138@mail.ru</a> &nbsp; <a href="mailto:psnab138@bk.ru">psnab138@bk.ru</a></div>
                    </div>
            </div>
        </div>
      </section>


      <?php $_smarty_tpl->_subTemplateRender('file:footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
  </div>
  <?php $_smarty_tpl->_subTemplateRender('file:popups.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
  <?php $_smarty_tpl->_subTemplateRender('file:bottomjs.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
</body>


</html><?php }
}