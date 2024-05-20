<?php

	namespace Cache;
	
	class CacheStocks
	{
		static private $banned = {$stock_list};
		
		static public function getBanned()
		{
			return self::$banned;
		}
	}
?>