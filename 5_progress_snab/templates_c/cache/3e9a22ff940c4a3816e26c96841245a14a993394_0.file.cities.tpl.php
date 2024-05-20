<?php
/* Smarty version 3.1.34-dev-7, created on 2023-11-15 11:12:46
  from '/var/www/progresselektro.ru/assets/templates/cache/cities.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_65547d7e5bc984_14407435',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3e9a22ff940c4a3816e26c96841245a14a993394' => 
    array (
      0 => '/var/www/progresselektro.ru/assets/templates/cache/cities.tpl',
      1 => 1679222217,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65547d7e5bc984_14407435 (Smarty_Internal_Template $_smarty_tpl) {
echo '<?php

	';?>
namespace Cache;
	
	class CacheCities
	{
		static private $cities = <?php echo $_smarty_tpl->tpl_vars['cities']->value;?>
;
		static private $cities_id = array();
		static private $cities_name = array();
		
		static public function get($key)
		{
			if (array_key_exists($key, self::$cities))
			{
				return self::$cities[$key];
			}	
			else
				return '';
		}
		
		static public function getbyId($id)
		{
  			if (isset(self::$cities_id[$id]))
				return self::$cities_id[$id];
  			
	  		$city = array ('id' => '0',  'domain' => '', 'name' => '', 'name2' => '' );			
  			foreach (self::$cities as $city)
			{
				if ($city['id']==$id)
				{
					self::$cities_id[$id] = $city;
					return $city;
				}	
			}	
			
			return $city;
		}		

		
		static public function getbyName($name)
		{
  			if (isset(self::$cities_name[$name]))
				return self::$cities_name[$name];
  			
	  		$city = array ('id' => '0',  'domain' => '', 'name' => '', 'name2' => '' );			
  			foreach (self::$cities as $city)
			{
				if ($city['name']==$name)
				{
					self::$cities_name[$name] = $city;
					return $city;
				}	
			}	
			
			return $city;
		}			
	}
<?php echo '?>';
}
}
