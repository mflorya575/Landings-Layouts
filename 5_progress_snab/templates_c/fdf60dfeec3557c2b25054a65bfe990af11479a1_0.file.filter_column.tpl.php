<?php
/* Smarty version 3.1.34-dev-7, created on 2024-05-20 12:43:09
  from '/var/www/progresselektro.ru/assets/templates/filter_column.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_664b1b2d10de70_09588531',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'fdf60dfeec3557c2b25054a65bfe990af11479a1' => 
    array (
      0 => '/var/www/progresselektro.ru/assets/templates/filter_column.tpl',
      1 => 1679222211,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_664b1b2d10de70_09588531 (Smarty_Internal_Template $_smarty_tpl) {
if (count($_smarty_tpl->tpl_vars['filter']->value['mt']) > 0) {?>
<div class="sidebar__element">
    <div class="sidebar__element-title" data-opened="1">Материал жилы</div>
    <div class="sidebar__element-wrapper"  data-ftype="mt">
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['filter']->value['mt'], 'p');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['p']->value) {
?>
        <label class="sidebar__element-label">
            <input type="checkbox" class="filter_check sidebar__element-checkbox checkbox <?php echo $_smarty_tpl->tpl_vars['p']->value['dopcl'];?>
" data-plist='<?php echo $_smarty_tpl->tpl_vars['p']->value['prm'];?>
' value="<?php echo $_smarty_tpl->tpl_vars['p']->value['id'];?>
" <?php echo $_smarty_tpl->tpl_vars['p']->value['ch'];?>
  <?php echo $_smarty_tpl->tpl_vars['p']->value['dsbl'];?>
>
            <span class="sidebar__element-span <?php echo $_smarty_tpl->tpl_vars['p']->value['dopcl'];?>
"> <?php echo $_smarty_tpl->tpl_vars['p']->value['t'];?>
 </span>
        </label>
        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
    </div>
</div>
<?php }?>

<?php if (count($_smarty_tpl->tpl_vars['filter']->value['iz']) > 0) {?>
    <div class="sidebar__element">
        <div class="sidebar__element-title" data-opened="1">Изоляция</div>
        <div class="sidebar__element-wrapper"  data-ftype="iz">
            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['filter']->value['iz'], 'p');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['p']->value) {
?>
                <label class="sidebar__element-label">
                    <input type="checkbox" class="filter_check sidebar__element-checkbox checkbox <?php echo $_smarty_tpl->tpl_vars['p']->value['dopcl'];?>
" data-plist='<?php echo $_smarty_tpl->tpl_vars['p']->value['prm'];?>
' value="<?php echo $_smarty_tpl->tpl_vars['p']->value['id'];?>
" <?php echo $_smarty_tpl->tpl_vars['p']->value['ch'];?>
  <?php echo $_smarty_tpl->tpl_vars['p']->value['dsbl'];?>
>
                    <span class="sidebar__element-span <?php echo $_smarty_tpl->tpl_vars['p']->value['dopcl'];?>
"> <?php echo $_smarty_tpl->tpl_vars['p']->value['t'];?>
 </span>
                </label>
            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
        </div>
    </div>
<?php }?>

<?php if ($_smarty_tpl->tpl_vars['filter']->value['armor'][0]['v'] || $_smarty_tpl->tpl_vars['filter']->value['ekran'][0]['v']) {?>
<div class="sidebar__element">
    <div class="sidebar__element-title" data-opened="1">Броня и экран</div>
    <div class="sidebar__element-wrapper" data-ftype="ar">
        <label class="sidebar__element-label">
            <input type="checkbox" name="noarek_ch"  value="1" class="filter_check sidebar__element-checkbox checkbox <?php echo $_smarty_tpl->tpl_vars['filter']->value['noarek'][0]['dopcl'];?>
"  data-plist='<?php echo $_smarty_tpl->tpl_vars['filter']->value['noarek'][0]['prm'];?>
'  <?php echo $_smarty_tpl->tpl_vars['filter']->value['noarek'][0]['ch'];?>
 <?php echo $_smarty_tpl->tpl_vars['filter']->value['noarek'][0]['dsbl'];?>
>
            <span class="sidebar__element-span <?php echo $_smarty_tpl->tpl_vars['filter']->value['noarek'][0]['dopcl'];?>
">
               	<?php if ($_smarty_tpl->tpl_vars['filter']->value['armor'][0]['v'] && $_smarty_tpl->tpl_vars['filter']->value['ekran'][0]['v']) {?>
                   Без брони и экрана
                <?php } elseif ($_smarty_tpl->tpl_vars['filter']->value['armor'][0]['v'] && !$_smarty_tpl->tpl_vars['filter']->value['ekran'][0]['v']) {?>
                   Без брони
                <?php } elseif (!$_smarty_tpl->tpl_vars['filter']->value['armor'][0]['v'] && $_smarty_tpl->tpl_vars['filter']->value['ekran'][0]['v']) {?>
                   Без экрана
                <?php }?>
            </span>
        </label>

        <?php if ($_smarty_tpl->tpl_vars['filter']->value['armor'][0]['v']) {?>
        <label class="sidebar__element-label">
            <input type="checkbox" class="filter_check sidebar__element-checkbox checkbox <?php echo $_smarty_tpl->tpl_vars['filter']->value['armor'][0]['dopcl'];?>
" name="armor_ch" value="2"  data-plist='<?php echo $_smarty_tpl->tpl_vars['filter']->value['armor'][0]['prm'];?>
' <?php echo $_smarty_tpl->tpl_vars['filter']->value['armor'][0]['ch'];?>
 <?php echo $_smarty_tpl->tpl_vars['filter']->value['armor'][0]['dsbl'];?>
>
            <span class="sidebar__element-span <?php echo $_smarty_tpl->tpl_vars['filter']->value['armor'][0]['dopcl'];?>
">Бронированный</span>
        </label>
        <?php }?>

        <?php if ($_smarty_tpl->tpl_vars['filter']->value['ekran'][0]['v']) {?>
        <label class="sidebar__element-label">
            <input type="checkbox" class="filter_check sidebar__element-checkbox checkbox <?php echo $_smarty_tpl->tpl_vars['filter']->value['ekran'][0]['dopcl'];?>
" name="ekran_ch" value="3" data-plist='<?php echo $_smarty_tpl->tpl_vars['filter']->value['ekran'][0]['prm'];?>
' <?php echo $_smarty_tpl->tpl_vars['filter']->value['ekran'][0]['ch'];?>
 <?php echo $_smarty_tpl->tpl_vars['filter']->value['ekran'][0]['dsbl'];?>
>
            <span class="sidebar__element-span <?php echo $_smarty_tpl->tpl_vars['filter']->value['ekran'][0]['dopcl'];?>
">Экранированный</span>
        </label>
        <?php }?>
    </div>
</div>
<?php }?>

<?php if (count($_smarty_tpl->tpl_vars['filter']->value['tp']) > 0) {?>
<div class="sidebar__element">
    <div class="sidebar__element-title" data-opened="1">Тип кабеля</div>
    <div class="sidebar__element-wrapper"  data-ftype="tp">
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['filter']->value['tp'], 'p');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['p']->value) {
?>
        <label class="sidebar__element-label">
            <input type="checkbox" class="filter_check sidebar__element-checkbox checkbox <?php echo $_smarty_tpl->tpl_vars['p']->value['dopcl'];?>
" value="<?php echo $_smarty_tpl->tpl_vars['p']->value['id'];?>
" data-plist='<?php echo $_smarty_tpl->tpl_vars['p']->value['prm'];?>
' <?php echo $_smarty_tpl->tpl_vars['p']->value['ch'];?>
 <?php echo $_smarty_tpl->tpl_vars['p']->value['dsbl'];?>
>
            <span class="sidebar__element-span <?php echo $_smarty_tpl->tpl_vars['p']->value['dopcl'];?>
"><?php echo $_smarty_tpl->tpl_vars['p']->value['t'];?>
 <span class="sidebar__element-span--gray"> (<?php echo $_smarty_tpl->tpl_vars['p']->value['d'];?>
)</span></span>
        </label>
        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
    </div>
</div>
<?php }?>

<?php if (count($_smarty_tpl->tpl_vars['filter']->value['tm']) > 0) {?>
    <div class="sidebar__element">
        <div class="sidebar__element-title" data-opened="1">Температурный режим</div>
        <div class="sidebar__element-wrapper"  data-ftype="tm">
            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['filter']->value['tm'], 'p');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['p']->value) {
?>
                <label class="sidebar__element-label">
                    <input type="checkbox" class="filter_check sidebar__element-checkbox checkbox <?php echo $_smarty_tpl->tpl_vars['p']->value['dopcl'];?>
" data-plist='<?php echo $_smarty_tpl->tpl_vars['p']->value['prm'];?>
' value="<?php echo $_smarty_tpl->tpl_vars['p']->value['id'];?>
" <?php echo $_smarty_tpl->tpl_vars['p']->value['ch'];?>
  <?php echo $_smarty_tpl->tpl_vars['p']->value['dsbl'];?>
>
                    <span class="sidebar__element-span <?php echo $_smarty_tpl->tpl_vars['p']->value['dopcl'];?>
"> <?php echo $_smarty_tpl->tpl_vars['p']->value['t'];?>
 <span class="sidebar__element-span--gray"> (<?php echo $_smarty_tpl->tpl_vars['p']->value['d'];?>
)</span></span>
                </label>
            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
        </div>
    </div>
<?php }?>

<?php if (count($_smarty_tpl->tpl_vars['filter']->value['pr']) > 0) {?>
    <div class="sidebar__element">
        <div class="sidebar__element-title" data-opened="1">Количество пар</div>
        <div class="sidebar__element-wrapper"  data-ftype="pr">
            <div class="sidebar__element-container">
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['filter']->value['pr'], 'p');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['p']->value) {
?>
                    <label class="sidebar__element-label sidebar__element-number">
                        <input type="checkbox" class="filter_check sidebar__element-counter checkbox-number"  value="<?php echo $_smarty_tpl->tpl_vars['p']->value['v'];?>
"  data-plist='<?php echo $_smarty_tpl->tpl_vars['p']->value['prm'];?>
' <?php echo $_smarty_tpl->tpl_vars['p']->value['ch'];?>
 <?php echo $_smarty_tpl->tpl_vars['p']->value['dsbl'];?>
>
                        <span class="checkbox-number__text"><?php echo $_smarty_tpl->tpl_vars['p']->value['v'];?>
</span>
                    </label>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
            </div>
        </div>
    </div>
<?php }?>

<?php if (count($_smarty_tpl->tpl_vars['filter']->value['zi']) > 0) {?>
<div class="sidebar__element">
    <div class="sidebar__element-title" data-opened="1">Количество жил</div>
    <div class="sidebar__element-wrapper"  data-ftype="zi">
        <div class="sidebar__element-container">
            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['filter']->value['zi'], 'p');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['p']->value) {
?>
            <label class="sidebar__element-label sidebar__element-number">
                <input type="checkbox" class="filter_check sidebar__element-counter checkbox-number"  value="<?php echo $_smarty_tpl->tpl_vars['p']->value['v'];?>
"  data-plist='<?php echo $_smarty_tpl->tpl_vars['p']->value['prm'];?>
' <?php echo $_smarty_tpl->tpl_vars['p']->value['ch'];?>
 <?php echo $_smarty_tpl->tpl_vars['p']->value['dsbl'];?>
>
                <span class="checkbox-number__text"><?php echo $_smarty_tpl->tpl_vars['p']->value['v'];?>
</span>
            </label>
            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
        </div>
    </div>
</div>
<?php }?>

<?php if (count($_smarty_tpl->tpl_vars['filter']->value['sc']) > 0) {?>
<div class="sidebar__element">
    <div class="sidebar__element-title" data-opened="1">Сечение</div>
    <div class="sidebar__element-wrapper"  data-ftype="sc">
        <div class="sidebar__element-container">
            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['filter']->value['sc'], 'p');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['p']->value) {
?>
            <label class="sidebar__element-label sidebar__element-number">
                <input type="checkbox" class="filter_check sidebar__element-counter checkbox-number" value="<?php echo $_smarty_tpl->tpl_vars['p']->value['v'];?>
"  data-plist='<?php echo $_smarty_tpl->tpl_vars['p']->value['prm'];?>
' <?php echo $_smarty_tpl->tpl_vars['p']->value['ch'];?>
 <?php echo $_smarty_tpl->tpl_vars['p']->value['dsbl'];?>
>
                <span class="checkbox-number__text"><?php echo $_smarty_tpl->tpl_vars['p']->value['v'];?>
</span>
            </label>
            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
        </div>
    </div>
</div>
<?php }?>

<?php if (count($_smarty_tpl->tpl_vars['filter']->value['s2']) > 0) {?>
    <div class="sidebar__element">
        <div class="sidebar__element-title" data-opened="1">Сечение несущей жилы</div>
        <div class="sidebar__element-wrapper"  data-ftype="s2">
            <div class="sidebar__element-container">
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['filter']->value['s2'], 'p');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['p']->value) {
?>
                    <label class="sidebar__element-label sidebar__element-number">
                        <input type="checkbox" class="filter_check sidebar__element-counter checkbox-number" value="<?php echo $_smarty_tpl->tpl_vars['p']->value['v'];?>
"  data-plist='<?php echo $_smarty_tpl->tpl_vars['p']->value['prm'];?>
' <?php echo $_smarty_tpl->tpl_vars['p']->value['ch'];?>
 <?php echo $_smarty_tpl->tpl_vars['p']->value['dsbl'];?>
>
                        <span class="checkbox-number__text"><?php echo $_smarty_tpl->tpl_vars['p']->value['v'];?>
</span>
                    </label>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
            </div>
        </div>
    </div>
<?php }?>

<?php if (count($_smarty_tpl->tpl_vars['filter']->value['s3']) > 0) {?>
    <div class="sidebar__element">
        <div class="sidebar__element-title" data-opened="1">Сечение жилы освещения</div>
        <div class="sidebar__element-wrapper"  data-ftype="s3">
            <div class="sidebar__element-container">
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['filter']->value['s3'], 'p');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['p']->value) {
?>
                    <label class="sidebar__element-label sidebar__element-number">
                        <input type="checkbox" class="filter_check sidebar__element-counter checkbox-number" value="<?php echo $_smarty_tpl->tpl_vars['p']->value['v'];?>
"  data-plist='<?php echo $_smarty_tpl->tpl_vars['p']->value['prm'];?>
' <?php echo $_smarty_tpl->tpl_vars['p']->value['ch'];?>
 <?php echo $_smarty_tpl->tpl_vars['p']->value['dsbl'];?>
>
                        <span class="checkbox-number__text"><?php echo $_smarty_tpl->tpl_vars['p']->value['v'];?>
</span>
                    </label>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
            </div>
        </div>
    </div>
<?php }?>

<?php if (count($_smarty_tpl->tpl_vars['filter']->value['ek']) > 0) {?>
    <div class="sidebar__element">
        <div class="sidebar__element-title" data-opened="1">Экран</div>
        <div class="sidebar__element-wrapper"  data-ftype="ek">
            <div class="sidebar__element-container">
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['filter']->value['ek'], 'p');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['p']->value) {
?>
                    <label class="sidebar__element-label sidebar__element-number">
                        <input type="checkbox" class="filter_check sidebar__element-counter checkbox-number" value="<?php echo $_smarty_tpl->tpl_vars['p']->value['v'];?>
"  data-plist='<?php echo $_smarty_tpl->tpl_vars['p']->value['prm'];?>
' <?php echo $_smarty_tpl->tpl_vars['p']->value['ch'];?>
 <?php echo $_smarty_tpl->tpl_vars['p']->value['dsbl'];?>
>
                        <span class="checkbox-number__text"><?php echo $_smarty_tpl->tpl_vars['p']->value['v'];?>
</span>
                    </label>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
            </div>
        </div>
    </div>
<?php }
}
}
