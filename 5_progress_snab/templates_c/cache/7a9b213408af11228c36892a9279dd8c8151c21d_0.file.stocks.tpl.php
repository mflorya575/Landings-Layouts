<?php
/* Smarty version 3.1.34-dev-7, created on 2023-11-15 11:11:38
  from '/var/www/progresselektro.ru/assets/templates/cache/stocks.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_65547d3a8d8b95_88850623',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '7a9b213408af11228c36892a9279dd8c8151c21d' => 
    array (
      0 => '/var/www/progresselektro.ru/assets/templates/cache/stocks.tpl',
      1 => 1687177098,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65547d3a8d8b95_88850623 (Smarty_Internal_Template $_smarty_tpl) {
echo '<?php

	';?>
namespace Cache;
	
	class CacheStocks
	{
		static private $banned = <?php echo $_smarty_tpl->tpl_vars['stock_list']->value;?>
;
		
		static public function getBanned()
		{
			return self::$banned;
		}
	}
<?php echo '?>';
}
}
