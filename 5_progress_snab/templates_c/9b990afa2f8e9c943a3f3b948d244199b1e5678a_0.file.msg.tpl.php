<?php
/* Smarty version 3.1.34-dev-7, created on 2024-05-20 12:42:50
  from '/var/www/progresselektro.ru/assets/templates/msg.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_664b1b1a9cd5e8_37917705',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '9b990afa2f8e9c943a3f3b948d244199b1e5678a' => 
    array (
      0 => '/var/www/progresselektro.ru/assets/templates/msg.tpl',
      1 => 1679222214,
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
function content_664b1b1a9cd5e8_37917705 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php if (isset($_smarty_tpl->tpl_vars['title']->value)) {
echo $_smarty_tpl->tpl_vars['title']->value;
} else {
echo $_smarty_tpl->tpl_vars['sitename']->value;
}?></title>

    <?php $_smarty_tpl->_subTemplateRender('file:css_js.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
    <META NAME="robots" CONTENT="noindex,nofollow"/>
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
            <div style="margin-top:10px">
                <b <?php if ($_smarty_tpl->tpl_vars['mode']->value == 1) {?>style="color:red"<?php }?>><?php echo $_smarty_tpl->tpl_vars['message']->value;?>
</b>
            </div>
        </div>

        <!--watched-->
        <div class="container" style="min-height:300px">
            <div class="watched">
                <div class="watched__content">
                    <div class="watched__container">
                        <div class="watched__wrapper swiper-wrapper">
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </main>

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
