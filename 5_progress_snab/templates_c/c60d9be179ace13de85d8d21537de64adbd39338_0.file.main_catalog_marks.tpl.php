<?php
/* Smarty version 3.1.34-dev-7, created on 2024-05-20 14:07:35
  from '/var/www/progresselektro.ru/assets/templates/main_catalog_marks.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_664b2ef7a11cd7_42277135',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c60d9be179ace13de85d8d21537de64adbd39338' => 
    array (
      0 => '/var/www/progresselektro.ru/assets/templates/main_catalog_marks.tpl',
      1 => 1679222212,
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
function content_664b2ef7a11cd7_42277135 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Марки категории <?php echo $_smarty_tpl->tpl_vars['title']->value;?>
 - <?php echo $_smarty_tpl->tpl_vars['sitename']->value;?>
</title>

    <?php $_smarty_tpl->_subTemplateRender('file:css_js.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
</head>

<body>
<div class="page" id="to-top">
    <!--FIXED-->
    <?php $_smarty_tpl->_subTemplateRender("file:loginblock.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

    <div class="to-top">
      <span>
        <img class=" opener" id="to-top" src="/assets/icon/to-top.svg" alt="">
      </span>
    </div>
    <!--HEADER-->
    <header class="header">
       <?php $_smarty_tpl->_subTemplateRender('file:header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
    </header>

    <!--MAIN-->
    <main class="main">
        <div class="container">

            <div class="columns catalog_block" style="margin-top:10px">
                <ul>
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['marks']->value, 'm');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['m']->value) {
?>
                    <li><a class="catalog_link" href="/catalog/cable/<?php echo $_smarty_tpl->tpl_vars['m']->value['url'];?>
"><?php echo $_smarty_tpl->tpl_vars['m']->value['title'];
if ($_smarty_tpl->tpl_vars['m']->value['show_power']) {?> - <?php echo $_smarty_tpl->tpl_vars['m']->value['power'];?>
кВ<?php }?></a></li>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                </ul>
            </div>
        </div>
    </main>

    <!--watched-->
    <div class="container" style="min-height:300px">
    </div>
    <!--FOOTER-->
    <?php $_smarty_tpl->_subTemplateRender('file:footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
</div>

<?php $_smarty_tpl->_subTemplateRender('file:popups.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
$_smarty_tpl->_subTemplateRender('file:bottomjs.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
</body>

</html><?php }
}
