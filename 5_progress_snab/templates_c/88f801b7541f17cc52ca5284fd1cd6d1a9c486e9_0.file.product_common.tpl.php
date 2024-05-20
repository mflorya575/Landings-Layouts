<?php
/* Smarty version 3.1.34-dev-7, created on 2024-05-20 12:35:19
  from '/var/www/progresselektro.ru/assets/templates/product_common.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_664b1957f266f5_45804223',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '88f801b7541f17cc52ca5284fd1cd6d1a9c486e9' => 
    array (
      0 => '/var/www/progresselektro.ru/assets/templates/product_common.tpl',
      1 => 1712611110,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:css_js.tpl' => 1,
    'file:loginblock.tpl' => 1,
    'file:header.tpl' => 1,
    'file:personal-manager.tpl' => 1,
    'file:footer.tpl' => 1,
    'file:popups.tpl' => 1,
    'file:bottomjs.tpl' => 1,
  ),
),false)) {
function content_664b1957f266f5_45804223 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="ru">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?php echo $_smarty_tpl->tpl_vars['title2']->value;?>
 купить с доставкой | ПрогрессСнаб</title>
  <?php $_smarty_tpl->_subTemplateRender('file:css_js.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

  <link rel="stylesheet" href="/assets/css/swiper-bundle.css" />
  <?php echo '<script'; ?>
 src="/assets/js/swiper-bundle.js"><?php echo '</script'; ?>
>

  <link rel="canonical" href="<?php echo $_smarty_tpl->tpl_vars['canonical']->value;?>
">
  <link rel="stylesheet" href="/assets/css/selectize.default.css">
</head>

<body data-ptype="product" user-status="<?php echo $_smarty_tpl->tpl_vars['userStatus']->value;?>
" <?php if ($_smarty_tpl->tpl_vars['userStatus']->value > 1) {?>data-etmcode="<?php echo $_smarty_tpl->tpl_vars['etmCode']->value;?>
"<?php }?> pgid="<?php echo $_smarty_tpl->tpl_vars['instock']->value['pid'];?>
"  data-currcityname="<?php echo $_smarty_tpl->tpl_vars['currCityName']->value;?>
"  data-currcityid="<?php echo $_smarty_tpl->tpl_vars['currCityId']->value;?>
" data-producttype="elektro">
<div class="page" id="to-top">
  <?php $_smarty_tpl->_subTemplateRender("file:loginblock.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
  <?php $_smarty_tpl->_subTemplateRender('file:header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

  <div class="main__title main__title--product">
    <div class="container">
      <h1><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</h1>
    </div>
  </div>

  <div class="product-card-main">
    <div class="product_container product-card__container" data-price="<?php echo $_smarty_tpl->tpl_vars['instock']->value['price'];?>
" data-innercode="<?php echo $_smarty_tpl->tpl_vars['instock']->value['innercode'];?>
" data-pid="<?php echo $_smarty_tpl->tpl_vars['instock']->value['pid'];?>
" data-edizm="<?php echo $_smarty_tpl->tpl_vars['edizm']->value;?>
">

      <div class="product-card"  itemscope itemtype="http://schema.org/Product">
        <div class="container">
          <div class="product-card__characteristics  product-card__characteristics-cable">
            <div class="product-card__image product-card__image-сable">
              <div class="product-card__image-text">Код товара : <?php echo $_smarty_tpl->tpl_vars['instock']->value['innercode'];?>
</div>
              <img src="<?php if ($_smarty_tpl->tpl_vars['pginfo']->value['pic']) {
echo $_smarty_tpl->tpl_vars['pginfo']->value['pic'];
} else { ?>/assets/images/catalog/default.svg<?php }?>" itemprop="image">
            </div>
            <div class="product-card__more-wrap">
              <h4 class="product-card__more-wrap_title">Краткое описание товара</h4>

              <div class="product-card__more-text-wrap">
                <div class="product-card__more-text">Серия</div>
                <span class="product-card__more-text--black">
                  <span class="product-card__more-series">
                          <a href="<?php echo $_smarty_tpl->tpl_vars['series_url']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['series']->value;?>
</a>
                  </span>
                </span>

              </div>

              <div class="product-card__more-text-wrap">
                <div class="product-card__more-text">Производитель</div>
                <span class="product-card__more-text--black"><?php echo $_smarty_tpl->tpl_vars['brand']->value['brand'];?>
</span>
              </div>

              <div class="product-card__more-text-wrap">
                <div class="product-card__more-text">Раздел</div>
                <span class="product-card__more-text--black">Электрика</span>
              </div>

              <div class="product-card__more-text-wrap">
                <div class="product-card__more-text">Артикул</div>
                <span class="product-card__more-text--black"><?php echo $_smarty_tpl->tpl_vars['instock']->value['artikul'];?>
</span>
              </div>

            </div>
            <div class="product-card__about">
              <div class="product-card__about-wrap">
                <div class="product-card__about-sum">
                  <meta itemprop="name" content="<?php echo $_smarty_tpl->tpl_vars['prod_type']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['pginfo']->value['full_title'];?>
">

                  <meta itemprop="seller" content="<?php echo $_smarty_tpl->tpl_vars['seller_name']->value;?>
">
                  <meta itemprop="priceCurrency" content="RUB"/>
                  <meta itemprop="price" content="<?php echo $_smarty_tpl->tpl_vars['instock']->value['schema_price'];?>
"/>

                  <?php if ($_smarty_tpl->tpl_vars['instock']->value['price']) {?>
                    <div class="product-card__about-sum-top">
                      <?php echo $_smarty_tpl->tpl_vars['instock']->value['price'];?>
 <?php if ($_smarty_tpl->tpl_vars['edizm']->value == 1) {?>₽<?php } elseif ($_smarty_tpl->tpl_vars['edizm']->value == 2) {?>₽<?php } elseif ($_smarty_tpl->tpl_vars['edizm']->value == 3) {?>₽<?php }?>
                      <p class="product-card__about-sum_cheaper fast_order_link">Нашли дешевле?</p> </div>
                      <div class="product-card__about-sum_itog">
                        <img src="/assets/images/shots_2260908.png">
                        <p>Итоговая цена зависит от количества заказываемого товара </p>
                      </div>
                  <?php } else { ?>
                    Цена по запросу
                  <?php }?>
                </div>
              </div>
              <div class="products__card_count">
                <div class="products__card-counter products__card-counter--clearfix">
                  <div class="products__card-counter-minus products__card-counter-element">-</div>
                  <input  class="numfield products__card-counter-num products__card-counter-element" data-posid="<?php echo $_smarty_tpl->tpl_vars['instock']->value['id'];?>
"  placeholder="0" type="number">
                  <div class="products__card-counter-plus products__card-counter-element">+</div>
                </div>
              </div>
              <div class="products__wrapper">
                <div class="products__card-info">
                  <div class="card__buttons">
                    <div class="products__card-button button-buy button-buy--product">
                      <span>Купить</span>
                    </div>
                    <a href="/cart/" class="to_cart products__card-button button-cart button-cart--product hide">
                      <img src="/assets/icon/to-cart.svg">
                      <span>В корзине</span>
                    </a>
                  </div>
                </div>
              </div>
              <div class="product-card_available">
                <?php if ($_smarty_tpl->tpl_vars['stocksInfo']->value && $_smarty_tpl->tpl_vars['instock']->value['price']) {?>
                  <span class="product-card_available-title">Доступно:</span>
                  <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['stocksInfo']->value, 'v', false, 'k');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['k']->value => $_smarty_tpl->tpl_vars['v']->value) {
?>
                    <div class="product-card_available-block" data-cityname="<?php echo $_smarty_tpl->tpl_vars['v']->value['city']['city_name_1'];?>
" style="display:<?php echo $_smarty_tpl->tpl_vars['v']->value['visible_short'];?>
">
                      <p>Склад  г. <?php echo $_smarty_tpl->tpl_vars['v']->value['city']['city_name_1'];?>
</p>
                      <p><?php echo $_smarty_tpl->tpl_vars['v']->value['total_str'];?>
 шт</p>
                    </div>
                  <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                  <div class="product-card_check-available" onclick="openModal('#in_cities_main')">
                    <p>Наличие <span>в городах</span></p>
                    <div class="product-card_available-select">
                      <svg width="12" height="7" viewBox="0 0 12 7" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M1 1L5.94975 5.94975L10.8995 1" stroke="#36A9E1"/>
                      </svg>
                    </div>
                  </div>
                <?php } else { ?>
                  <span class="product-card_available-title fast_order_link" style="cursor:pointer">Уточнить доступное количество</span>
                <?php }?>
              </div>
            </div>
          </div>

          <?php if ($_smarty_tpl->tpl_vars['userStatus']->value > 1) {?>
            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['stocksInfo']->value, 'v', false, 'k');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['k']->value => $_smarty_tpl->tpl_vars['v']->value) {
?>
              <div class="product-card_table"  data-cityname="<?php echo $_smarty_tpl->tpl_vars['v']->value['city']['city_name_1'];?>
" style="display:<?php echo $_smarty_tpl->tpl_vars['v']->value['visible'];?>
">
                <h4 class="product-card_table-title">Наличие у поставщиков в <span onclick="openModal('.modal-available')"><?php echo $_smarty_tpl->tpl_vars['v']->value['city']['city_name_2'];?>
</span></h4>
                <div class="product-card_table-block">
                  <table>
                    <tbody>
                    <tr class="title-row">
                      <td></td>
                      <td></td>
                      <td>Поставщик</td>
                      <td>Доступно</td>
                      <td>Стоимость</td>
                      <td>Прогноз</td>
                      <td>Срок доставки на склад, дней</td>
                      <td>Дата обновления</td>
                    </tr>
                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['v']->value['all'], 'stock');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['stock']->value) {
?>
                      <tr>
                        <td><?php echo $_smarty_tpl->tpl_vars['stock']->value['n'];?>
</td>
                        <td><?php if ($_smarty_tpl->tpl_vars['stock']->value['supplier_id'] == 1) {?><a href="https://etm.ru/cat/nn/<?php echo $_smarty_tpl->tpl_vars['stock']->value['supplier_code'];?>
" class="etm_link" target="_blank"><?php }
echo $_smarty_tpl->tpl_vars['stock']->value['sklad_name'];
if ($_smarty_tpl->tpl_vars['stock']->value['supplier_id'] == 1) {?></a><?php }?></td>
                        <td><?php echo $_smarty_tpl->tpl_vars['stock']->value['supplier_name'];?>
</td>
                        <td><?php echo $_smarty_tpl->tpl_vars['stock']->value['supplier_ostatki_cnt_str'];?>
 </td>
                        <td><?php echo $_smarty_tpl->tpl_vars['stock']->value['supplier_price'];?>
</td>
                        <td><?php echo $_smarty_tpl->tpl_vars['stock']->value['forecast_date'];?>
</td>
                        <td><?php echo $_smarty_tpl->tpl_vars['stock']->value['delivery_time'];?>
</td>
                        <td><?php echo $_smarty_tpl->tpl_vars['stock']->value['supplier_ostatki_date'];?>
</td>
                      </tr>
                    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                    </tbody>
                  </table>
                </div>
              </div>
            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
          <?php }?>

          <div class="product-card__tabs-all">
            <div class="product-card__tabs-wrapper">
              <div class="product-card__tabs">
                <div class="product-card__tabs-nav">
                  <?php if (($_smarty_tpl->tpl_vars['harlist1']->value)) {?>
                    <div class="product-card__tabs-item product-card__tabs-item--active" tab-index="1">Характеристики</div>
                  <?php }?>
                  <?php if ($_smarty_tpl->tpl_vars['description']->value) {?>
                    <div class="product-card__tabs-item" tab-index="2">Описание</div>
                  <?php }?>
                  <?php if ($_smarty_tpl->tpl_vars['advantage']->value) {?>
                    <div class="product-card__tabs-item" tab-index="3">Преимущества</div>
                  <?php }?>
                </div>
              </div>
              <div class="product-card__wrap">
                <div class="container">
                  <div class="product-card__tabs-more">
                    <?php if ($_smarty_tpl->tpl_vars['harlist1']->value) {?>
                      <div class="product-card__tabs-more-title arrow--active" tab-index="1">Полные характеристики</div>
                      <div class="product-card__tabs-content" tab-index="1">
                        <div class="product-card__tabs-content-title">Характеристики</div>
                        <div class="product-card__tabs-common">
                          <div class="product-card__tabs-characteristics">
                            <?php if ($_smarty_tpl->tpl_vars['harlist1']->value) {?>
                              <div class="product-card__tabs-wrap">
                                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['harlist1']->value, 'h');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['h']->value) {
?>
                                  <div class="product-card__more-text"><?php echo $_smarty_tpl->tpl_vars['h']->value['ftitle'];?>
: <span class="product-card__more-text--black"><?php echo $_smarty_tpl->tpl_vars['h']->value['fval'];?>
 <?php echo $_smarty_tpl->tpl_vars['h']->value['edizm_ru'];?>
</span></div>
                                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                              </div>
                            <?php }?>
                            <?php if ($_smarty_tpl->tpl_vars['harlist2']->value) {?>
                              <div class="product-card__tabs-wrap">
                                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['harlist2']->value, 'h');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['h']->value) {
?>
                                  <div class="product-card__more-text"><?php echo $_smarty_tpl->tpl_vars['h']->value['ftitle'];?>
: <span class="product-card__more-text--black"><?php echo $_smarty_tpl->tpl_vars['h']->value['fval'];?>
 <?php echo $_smarty_tpl->tpl_vars['h']->value['edizm_ru'];?>
</span></div>
                                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                              </div>
                            <?php }?>
                          </div>
                        </div>
                      </div>
                    <?php }?>
                  </div>

                  <?php if ($_smarty_tpl->tpl_vars['description']->value) {?>
                    <div class="product-card__tabs-more">
                      <div class="product-card__tabs-more-title" tab-index="2">Описание</div>
                      <div class="product-card__tabs-content hide" tab-index="2">
                        <div class="product-card__tabs-content-title">Описание</div>
                        <div class="product-card__tabs-common">
                          <?php echo $_smarty_tpl->tpl_vars['description']->value;?>

                        </div>
                      </div>
                    </div>
                  <?php }?>

                  <?php if ($_smarty_tpl->tpl_vars['advantage']->value) {?>
                    <div class="product-card__tabs-more">
                      <div class="product-card__tabs-more-title" tab-index="3">Преимущества</div>
                      <div class="product-card__tabs-content hide" tab-index="3">
                        <div class="product-card__tabs-content-title">Преимущества</div>
                        <div class="product-card__tabs-common">
                          <?php echo $_smarty_tpl->tpl_vars['advantage']->value;?>

                        </div>
                      </div>
                    </div>
                  <?php }?>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="modal modal-available" id="in_cities_main">
      <div class="modal-content">
        <div class="close-modal" onclick="closePopup()">
          <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" clip-rule="evenodd" d="M0.398862 0.398862C0.730807 0.0669159 1.269 0.0669159 1.60094 0.398862L6.9999 5.79782L12.3989 0.398862C12.7308 0.0669159 13.269 0.0669159 13.6009 0.398862C13.9329 0.730807 13.9329 1.269 13.6009 1.60094L8.20198 6.9999L13.6009 12.3989C13.9329 12.7308 13.9329 13.269 13.6009 13.6009C13.269 13.9329 12.7308 13.9329 12.3989 13.6009L6.9999 8.20198L1.60094 13.6009C1.269 13.9329 0.730807 13.9329 0.398862 13.6009C0.0669159 13.269 0.0669159 12.7308 0.398862 12.3989L5.79782 6.9999L0.398862 1.60094C0.0669159 1.269 0.0669159 0.730807 0.398862 0.398862Z" fill="#1F2937"/>
          </svg>
        </div>

        <?php if ($_smarty_tpl->tpl_vars['cityOstatki1']->value) {?>
          <div class="modal-available-col">
            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['cityOstatki1']->value, 'ost');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['ost']->value) {
?>
              <div class="modal-available__item" <?php if (($_smarty_tpl->tpl_vars['userStatus']->value > 1 && $_smarty_tpl->tpl_vars['ost']->value['main'])) {?>style="cursor:pointer"<?php }?> data-main="<?php echo $_smarty_tpl->tpl_vars['ost']->value['main'];?>
" data-cityid="<?php echo $_smarty_tpl->tpl_vars['ost']->value['id'];?>
" data-cityname="<?php echo $_smarty_tpl->tpl_vars['ost']->value['city_name_1'];?>
"><p><?php if (($_smarty_tpl->tpl_vars['userStatus']->value > 1 && $_smarty_tpl->tpl_vars['ost']->value['main'])) {?><b><?php }
echo $_smarty_tpl->tpl_vars['ost']->value['city_name_1'];
if (($_smarty_tpl->tpl_vars['userStatus']->value > 1 && $_smarty_tpl->tpl_vars['ost']->value['main'])) {?></b><?php }?></p><p><?php echo $_smarty_tpl->tpl_vars['ost']->value['supplier_ostatki_cnt_str'];?>
 шт</p></div>
            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
          </div>
        <?php }?>

        <?php if ($_smarty_tpl->tpl_vars['cityOstatki2']->value) {?>
          <div class="modal-available-col">
            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['cityOstatki2']->value, 'ost');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['ost']->value) {
?>
              <div class="modal-available__item" <?php if (($_smarty_tpl->tpl_vars['userStatus']->value > 1 && $_smarty_tpl->tpl_vars['ost']->value['main'])) {?>style="cursor:pointer"<?php }?> data-main="<?php echo $_smarty_tpl->tpl_vars['ost']->value['main'];?>
" data-cityid="<?php echo $_smarty_tpl->tpl_vars['ost']->value['id'];?>
" data-cityname="<?php echo $_smarty_tpl->tpl_vars['ost']->value['city_name_1'];?>
"><p><?php if (($_smarty_tpl->tpl_vars['userStatus']->value > 1 && $_smarty_tpl->tpl_vars['ost']->value['main'])) {?><b><?php }
echo $_smarty_tpl->tpl_vars['ost']->value['city_name_1'];
if (($_smarty_tpl->tpl_vars['userStatus']->value > 1 && $_smarty_tpl->tpl_vars['ost']->value['main'])) {?></b><?php }?></p><p><?php echo $_smarty_tpl->tpl_vars['ost']->value['supplier_ostatki_cnt_str'];?>
 шт</p></div>
            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
          </div>
        <?php }?>

        <?php if ($_smarty_tpl->tpl_vars['cityOstatki3']->value) {?>
          <div class="modal-available-col">
            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['cityOstatki3']->value, 'ost');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['ost']->value) {
?>
              <div class="modal-available__item" <?php if (($_smarty_tpl->tpl_vars['userStatus']->value > 1 && $_smarty_tpl->tpl_vars['ost']->value['main'])) {?>style="cursor:pointer"<?php }?> data-main="<?php echo $_smarty_tpl->tpl_vars['ost']->value['main'];?>
" data-cityid="<?php echo $_smarty_tpl->tpl_vars['ost']->value['id'];?>
" data-cityname="<?php echo $_smarty_tpl->tpl_vars['ost']->value['city_name_1'];?>
"><p><?php if (($_smarty_tpl->tpl_vars['userStatus']->value > 1 && $_smarty_tpl->tpl_vars['ost']->value['main'])) {?><b><?php }
echo $_smarty_tpl->tpl_vars['ost']->value['city_name_1'];
if (($_smarty_tpl->tpl_vars['userStatus']->value > 1 && $_smarty_tpl->tpl_vars['ost']->value['main'])) {?></b><?php }?></p><p><?php echo $_smarty_tpl->tpl_vars['ost']->value['supplier_ostatki_cnt_str'];?>
 шт</p></div>
            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
          </div>
        <?php }?>

        <?php if ($_smarty_tpl->tpl_vars['cityOstatki4']->value) {?>
          <div class="modal-available-col">
            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['cityOstatki4']->value, 'ost');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['ost']->value) {
?>
              <div class="modal-available__item" <?php if (($_smarty_tpl->tpl_vars['userStatus']->value > 1 && $_smarty_tpl->tpl_vars['ost']->value['main'])) {?>style="cursor:pointer"<?php }?> data-main="<?php echo $_smarty_tpl->tpl_vars['ost']->value['main'];?>
" data-cityid="<?php echo $_smarty_tpl->tpl_vars['ost']->value['id'];?>
" data-cityname="<?php echo $_smarty_tpl->tpl_vars['ost']->value['city_name_1'];?>
"><p><?php if (($_smarty_tpl->tpl_vars['userStatus']->value > 1 && $_smarty_tpl->tpl_vars['ost']->value['main'])) {?><b><?php }
echo $_smarty_tpl->tpl_vars['ost']->value['city_name_1'];
if (($_smarty_tpl->tpl_vars['userStatus']->value > 1 && $_smarty_tpl->tpl_vars['ost']->value['main'])) {?></b><?php }?></p><p><?php echo $_smarty_tpl->tpl_vars['ost']->value['supplier_ostatki_cnt_str'];?>
 шт</p></div>
            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
          </div>
        <?php }?>
      </div>
    </div>


    <?php echo '<script'; ?>
 src="/assets/js/selectize.min.js"><?php echo '</script'; ?>
>
    <?php $_smarty_tpl->_subTemplateRender('file:personal-manager.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
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
