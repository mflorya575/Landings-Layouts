<?php
/* Smarty version 3.1.34-dev-7, created on 2023-11-15 11:12:46
  from '/var/www/progresselektro.ru/assets/templates/cache/select_city.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_65547d7e5d6351_49784905',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '55e64e82ff7c77b2837beb79ae3e4d72a99d74dc' => 
    array (
      0 => '/var/www/progresselektro.ru/assets/templates/cache/select_city.tpl',
      1 => 1679605669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65547d7e5d6351_49784905 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="choose-popup hide" id="select_city">
    <div class="choose-popup--backdrop"></div>
    <div class="choose-popup__wrap" id="chooseform">
        <div class="choose-close closepopup">
            <svg>
                <use xlink:href="/assets/sprite.svg#close"></use>
            </svg>
        </div>
        <div class="choose-popup__title">Выберите ваш город</div>
        <div class="choose-popup__cities">
            <div class="choose-popup__cities-wrap">
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['city_1']->value, 'c');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['c']->value) {
?>
                <div class="choose-popup__item" data-cityid="<?php echo $_smarty_tpl->tpl_vars['c']->value['id'];?>
" data-pekid="<?php echo $_smarty_tpl->tpl_vars['c']->value['pekid'];?>
" data-contacts='<?php echo $_smarty_tpl->tpl_vars['c']->value['main_block1'];?>
'><?php echo $_smarty_tpl->tpl_vars['c']->value['html_name'];?>
</div>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
            </div>
            <div class="choose-popup__cities-wrap">
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['city_2']->value, 'c');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['c']->value) {
?>
                <div class="choose-popup__item" data-cityid="<?php echo $_smarty_tpl->tpl_vars['c']->value['id'];?>
" data-pekid="<?php echo $_smarty_tpl->tpl_vars['c']->value['pekid'];?>
" data-contacts='<?php echo $_smarty_tpl->tpl_vars['c']->value['main_block1'];?>
'><?php echo $_smarty_tpl->tpl_vars['c']->value['html_name'];?>
</div>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
            </div>
            <div class="choose-popup__cities-wrap">
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['city_3']->value, 'c');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['c']->value) {
?>
                <div class="choose-popup__item" data-cityid="<?php echo $_smarty_tpl->tpl_vars['c']->value['id'];?>
" data-pekid="<?php echo $_smarty_tpl->tpl_vars['c']->value['pekid'];?>
" data-contacts='<?php echo $_smarty_tpl->tpl_vars['c']->value['main_block1'];?>
'><?php echo $_smarty_tpl->tpl_vars['c']->value['html_name'];?>
</div>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
            </div>
        </div>
        <!--
        <div class="choose-popup__subtitle">Или укажите в поле</div>
        <div class="choose-popup-search">
            <label class="form-input choose-popup-form-wrap">
                <input class="input input-valid choose-popup-form-input" type="text" placeholder="Начните вводить название">
            </label>
            <button class="choose-popup-form-button submit" type="submit">Выбрать</button>
        </div>
        <div class="choose-popup-result"></div>
        <div class="choose-popup-result-error"></div>
        -->
    </div>
</div><?php }
}
