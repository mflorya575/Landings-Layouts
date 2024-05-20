<?php
/* Smarty version 3.1.34-dev-7, created on 2024-05-20 12:59:42
  from '/var/www/progresselektro.ru/assets/templates/mr_products.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_664b1f0ee52508_44284096',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ff5691859aab4da5c14c36e26dbd463acf5a95f6' => 
    array (
      0 => '/var/www/progresselektro.ru/assets/templates/mr_products.tpl',
      1 => 1689630987,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:css_js.tpl' => 1,
    'file:loginblock.tpl' => 1,
    'file:header.tpl' => 1,
    'file:product_filter_column.tpl' => 1,
    'file:mr_prod_list_".((string)$_smarty_tpl->tpl_vars[\'viewmode\']->value).".tpl' => 1,
    'file:mr_prod_list-viewed.tpl' => 1,
    'file:personal-manager.tpl' => 1,
    'file:footer.tpl' => 1,
    'file:popups.tpl' => 1,
    'file:bottomjs.tpl' => 1,
  ),
),false)) {
function content_664b1f0ee52508_44284096 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="ru">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?php echo $_smarty_tpl->tpl_vars['title2']->value;?>
</title>
  <?php if ($_smarty_tpl->tpl_vars['ctgid']->value) {?>
  <meta name="description" content="Узнать оптовую цену на <?php echo $_smarty_tpl->tpl_vars['title3']->value;?>
 из наличия в СПб. Купить со скидкой по прайсу">
  <?php } else { ?>
      <?php if (1 == 0) {?><!--Результаты вывода по поисковому запросу не индексируем --><?php }?>
      <META NAME="robots" CONTENT="noindex,nofollow"/>

  <?php }?>
  <?php $_smarty_tpl->_subTemplateRender('file:css_js.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
</head>

<body data-changed="0" data-ptype="prodlist" data-id="<?php echo $_smarty_tpl->tpl_vars['ctgid']->value;?>
"  data-curp="<?php echo $_smarty_tpl->tpl_vars['curpage']->value;?>
" data-totalp="<?php echo $_smarty_tpl->tpl_vars['totalpages']->value;?>
"  data-curShownCnt="<?php echo $_smarty_tpl->tpl_vars['cnt_shownItems']->value;?>
" data-level="<?php echo $_smarty_tpl->tpl_vars['level']->value;?>
">
  <div class="page" id="to-top">
  <?php $_smarty_tpl->_subTemplateRender("file:loginblock.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

  <?php $_smarty_tpl->_subTemplateRender('file:header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

    <div class="modules-mobile">
      <div class="container">
        <div class="modules-mobile__title"><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</div>
      </div>
    </div>

    <div class="sidebar__mobile">
      <div class="container">
        <div class="sidebar__element-title sidebar__element-title--mobile filter-fixed">Фильтр<span class="sidebar__element-title--open">Развернуть</span></div>
      </div>
    </div>

      <!--MAIN-->
      <section class="catalog__modules">
        <div class="container">
          <div class="row">
            <!--sidebar-->
            <div class="col-12 col-sm-3">

                <?php if ($_smarty_tpl->tpl_vars['filters']->value['filters']) {?>
                <div class="sidebar">
                    <div class="sidebar__element2">
                        <div class="filter_ob sidebar__title">Фильтр</div>
                        <div id="fil_ob" class="sidebar__element-wrapper  <?php if (!$_smarty_tpl->tpl_vars['mobile']->value) {?>show<?php }?>" data-shown="<?php if ($_smarty_tpl->tpl_vars['mobile']->value) {?>0<?php } else { ?>1<?php }?>">
                                <?php $_smarty_tpl->_subTemplateRender("file:product_filter_column.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
                        </div>
                    </div>
                </div>
                <?php }?>

                <?php if (1 == 0) {?>
                <div class="sidebar sidebar__nav">
                    <div class="sidebar__title-category">Категории</div>
                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['filter']->value['another'], 'p');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['p']->value) {
?>
                        <div class="sidebar__element-link"><a href="/catalog/<?php echo $_smarty_tpl->tpl_vars['p']->value['uri'];?>
"><?php echo $_smarty_tpl->tpl_vars['p']->value['t'];?>
</a></div>
                    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                </div>
                <?php }?>
            </div>

            <div class="col-12 col-sm-9 sorting-modules">
              <div class="sorting">
                <div class="main__title  main__title-longlist-mobile">
                  <h1><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</h1>
                </div>

                <div class="sorting__container">
                  <div class="list-catalog">
                    <div class="found-items">
                        <?php echo $_smarty_tpl->tpl_vars['found_goods_cnt_str']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['cnt_totalItems']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['goods_cnt_str']->value;?>

                    </div>
                    <div data-viewmode="long"  class="list-catalog__item list-catalog__item--longlist <?php if ($_smarty_tpl->tpl_vars['viewmode']->value == 'long') {?>list-catalog__item--longlist-active<?php }?>">
                        <a href=""></a>
                    </div>
                    <div data-viewmode="modules" class="list-catalog__item list-catalog__item--modules <?php if ($_smarty_tpl->tpl_vars['viewmode']->value == 'modules') {?>list-catalog__item--modules-active<?php }?>">
                        <a href=""></a>
                    </div>
                  </div>
                </div>

              </div>
              <div class="products products-list">
                <div class="row" id="items_list">
                    <?php $_smarty_tpl->_subTemplateRender("file:mr_prod_list_".((string)$_smarty_tpl->tpl_vars['viewmode']->value).".tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>
                </div>
               </div>

              <div class="page-pagination" style="margin-bottom:20px">
                <div class="page-pagination__container">
                  <ul class="page-pagination__list" id="paginator">
                      <?php echo $_smarty_tpl->tpl_vars['paginator']->value;?>

                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
    </section>


    <?php if ($_smarty_tpl->tpl_vars['viewed']->value) {?>
    <section class="analogs">
      <div class="container">
        <div class="analogs__title">Вы смотрели</div>
        <div class="row">
              <?php $_smarty_tpl->_subTemplateRender("file:mr_prod_list-viewed.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
        </div>
      </div> 
    </section>
    <?php }?>


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
