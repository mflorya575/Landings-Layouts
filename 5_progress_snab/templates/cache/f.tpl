<?php

	namespace Cache;
	
	class CacheF
	{
		static private $f = {$f_arr};
		
		static public function get($key)
		{
			if (array_key_exists($key, self::$f))
			{
				return self::$f[$key];
			}	
			else
				return '';
		}
	}
?>