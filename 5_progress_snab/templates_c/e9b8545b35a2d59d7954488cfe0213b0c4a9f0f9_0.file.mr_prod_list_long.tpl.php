<?php
/* Smarty version 3.1.34-dev-7, created on 2024-05-20 13:20:11
  from '/var/www/progresselektro.ru/assets/templates/mr_prod_list_long.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_664b23db2eb9e1_27809988',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'e9b8545b35a2d59d7954488cfe0213b0c4a9f0f9' => 
    array (
      0 => '/var/www/progresselektro.ru/assets/templates/mr_prod_list_long.tpl',
      1 => 1712872744,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_664b23db2eb9e1_27809988 (Smarty_Internal_Template $_smarty_tpl) {
if ($_smarty_tpl->tpl_vars['items']->value) {?>
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['items']->value, 'item');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['item']->value) {
?>

        <?php if ($_smarty_tpl->tpl_vars['item']->value['stocksInfo']) {?>
            <div class="modal modal-available" id="item_cities_main_<?php echo $_smarty_tpl->tpl_vars['item']->value['pid'];?>
">
                <div class="modal-content">
                    <div class="close-modal" onclick="closePopup()">
                        <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" clip-rule="evenodd" d="M0.398862 0.398862C0.730807 0.0669159 1.269 0.0669159 1.60094 0.398862L6.9999 5.79782L12.3989 0.398862C12.7308 0.0669159 13.269 0.0669159 13.6009 0.398862C13.9329 0.730807 13.9329 1.269 13.6009 1.60094L8.20198 6.9999L13.6009 12.3989C13.9329 12.7308 13.9329 13.269 13.6009 13.6009C13.269 13.9329 12.7308 13.9329 12.3989 13.6009L6.9999 8.20198L1.60094 13.6009C1.269 13.9329 0.730807 13.9329 0.398862 13.6009C0.0669159 13.269 0.0669159 12.7308 0.398862 12.3989L5.79782 6.9999L0.398862 1.60094C0.0669159 1.269 0.0669159 0.730807 0.398862 0.398862Z" fill="#1F2937"/>
                        </svg>
                    </div>

                    <?php if ($_smarty_tpl->tpl_vars['item']->value['cityOstatki1']) {?>
                        <div class="modal-available-col">
                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['item']->value['cityOstatki1'], 'ost');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['ost']->value) {
?>
                                <div class="modal-available__item"><p><?php echo $_smarty_tpl->tpl_vars['ost']->value['city_name_1'];?>
</p><p><?php echo $_smarty_tpl->tpl_vars['ost']->value['supplier_ostatki_cnt_str'];?>
 шт</p></div>
                            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                        </div>
                    <?php }?>

                    <?php if ($_smarty_tpl->tpl_vars['item']->value['cityOstatki2']) {?>
                        <div class="modal-available-col">
                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['item']->value['cityOstatki2'], 'ost');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['ost']->value) {
?>
                                <div class="modal-available__item"><p><?php echo $_smarty_tpl->tpl_vars['ost']->value['city_name_1'];?>
</p><p><?php echo $_smarty_tpl->tpl_vars['ost']->value['supplier_ostatki_cnt_str'];?>
 шт</p></div>
                            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                        </div>
                    <?php }?>

                    <?php if ($_smarty_tpl->tpl_vars['item']->value['cityOstatki3']) {?>
                        <div class="modal-available-col">
                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['item']->value['cityOstatki3'], 'ost');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['ost']->value) {
?>
                                <div class="modal-available__item"><p><?php echo $_smarty_tpl->tpl_vars['ost']->value['city_name_1'];?>
</p><p><?php echo $_smarty_tpl->tpl_vars['ost']->value['supplier_ostatki_cnt_str'];?>
 шт</p></div>
                            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                        </div>
                    <?php }?>

                    <?php if ($_smarty_tpl->tpl_vars['item']->value['cityOstatki4']) {?>
                        <div class="modal-available-col">
                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['item']->value['cityOstatki4'], 'ost');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['ost']->value) {
?>
                                <div class="modal-available__item"><p><?php echo $_smarty_tpl->tpl_vars['ost']->value['city_name_1'];?>
</p><p><?php echo $_smarty_tpl->tpl_vars['ost']->value['supplier_ostatki_cnt_str'];?>
 шт</p></div>
                            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                        </div>
                    <?php }?>
                </div>
            </div>
        <?php }?>

    <div class="product_container" data-price="<?php echo $_smarty_tpl->tpl_vars['item']->value['price'];?>
"  data-innercode="<?php echo $_smarty_tpl->tpl_vars['item']->value['innercode'];?>
" data-pid="<?php echo $_smarty_tpl->tpl_vars['item']->value['pid'];?>
"  data-edizm="<?php echo $_smarty_tpl->tpl_vars['item']->value['edizm'];?>
">
        <div class="catalog-longlist__card">
            <div class="catalog-longlist__wrap">
                <div class="catalog-longlist__image">
                    <a href="<?php echo $_smarty_tpl->tpl_vars['item']->value['url'];?>
"><img src="<?php if ($_smarty_tpl->tpl_vars['item']->value['pic']) {
echo $_smarty_tpl->tpl_vars['item']->value['pic'];
} else { ?>/assets/images/catalog/defelectro_long.png<?php }?>"></a>
                </div>
                <div class="catalog-longlist__info-wrap">
                    <div class="catalog-longlist__info">
                        <div class="catalog-longlist__name"><a href="<?php echo $_smarty_tpl->tpl_vars['item']->value['url'];?>
"  class="products__card-title"><?php echo $_smarty_tpl->tpl_vars['item']->value['title'];?>
</a></div>
                        <div class="catalog-longlist__price">
                            <?php if ($_smarty_tpl->tpl_vars['item']->value['price']) {?>  <?php echo $_smarty_tpl->tpl_vars['item']->value['price'];?>
 <?php if ($_smarty_tpl->tpl_vars['item']->value['edizm'] == 1) {?>₽<?php } elseif ($_smarty_tpl->tpl_vars['item']->value['edizm'] == 2) {?>₽<?php } elseif ($_smarty_tpl->tpl_vars['item']->value['edizm'] == 3) {?>₽<?php }?>
                            <?php } else { ?>
                                <div>Цена по запросу</div>
                            <?php }?>
                        </div>
                    </div>
                    <div class="catalog-longlist__to-cart">
                        <div class="catalog-longlist__info-available">
                            <?php if ($_smarty_tpl->tpl_vars['item']->value['price']) {?>
                                <?php if ($_smarty_tpl->tpl_vars['item']->value['stocksInfo']) {?>
                                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['item']->value['stocksInfo'], 'v', false, 'k');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['k']->value => $_smarty_tpl->tpl_vars['v']->value) {
?>
                                        <div class="product-card_available-block" data-cityname="<?php echo $_smarty_tpl->tpl_vars['v']->value['city']['city_name_1'];?>
" style="display:<?php echo $_smarty_tpl->tpl_vars['v']->value['visible_short'];?>
">
                                            в <?php echo $_smarty_tpl->tpl_vars['v']->value['city']['city_name_2'];?>
 - <?php echo $_smarty_tpl->tpl_vars['v']->value['total_str'];?>
 шт
                                        </div>
                                    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                    <div class="product-card_check-available" onclick="openModal('#item_cities_main_<?php echo $_smarty_tpl->tpl_vars['item']->value['pid'];?>
')">
                                        <p>Наличие <span>в городах</span></p>
                                        <div class="product-card_available-select">
                                            <svg width="12" height="7" viewBox="0 0 12 7" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M1 1L5.94975 5.94975L10.8995 1" stroke="#36A9E1"/>
                                            </svg>
                                        </div>
                                    </div>
                                <?php } else { ?>
                                    <div class="product-card__about-available">В наличии</div>
                                <?php }?>
                            <?php } else { ?>
                                <span class="product-card__about-order">В наличии</span>
                            <?php }?>
                        </div>
                        <div class="products__wrapper">
                            <div class="products__card-info">
                                <div class="card__buttons">
                                    <div class="products__card-button button-buy">
                                        <span>Купить</span>
                                    </div>
                                    <a href="/cart/" class="to_cart products__card-button button-cart hide">
                                        <img src="/assets/icon/to-cart.svg">
                                        <span>В корзине</span>
                                    </a>
                                </div>
                            </div>
                            <div class="products__card-counter products__card-counter--clearfix">
                                <div class="products__card-counter-minus products__card-counter-element ">-</div>
                                <input  class="numfield products__card-counter-num products__card-counter-element" data-posid="<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
"  type="number" placeholder="0">
                                <div class="products__card-counter-plus products__card-counter-element">+</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="catalog-longlist__text--code">
                <span class="catalog-longlist__text--grey">Артикул:</span>
                <span class="catalog-longlist__text--blue"><?php echo $_smarty_tpl->tpl_vars['item']->value['artikul'];?>
</span>
            </div>
        </div>
    </div>
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
} else { ?>
    <b>Отсутствуют позиции, удовлетворяющие условиям поиска</b>
<?php }
}
}
