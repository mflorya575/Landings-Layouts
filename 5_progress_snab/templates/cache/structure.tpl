<?php

	namespace Cache;
	
	class CacheStruct
	{
		static private $structCache = {$struct};
		static private $struct_id = array();
		static private $root_ctg = {$root_ctg_list};

		static public function get($key)
		{
			if (array_key_exists($key, self::$structCache))
			{
				$r = self::$structCache[$key];
				$r['a'] = $key;
				return $r;				
			}	
			else
				return '';
		}
		
		static public function getURLbyId($id)
		{
			foreach (self::$structCache as $key=> $v) 
			{
				if ($v['id'] == $id)
					return $key;
			}
			
			return '';
		}

        static public function getRootCtg($id)
        {
            if (isset(self::$root_ctg[$id]))
                return self::$root_ctg[$id];
            else
                return null;
        }

		static public function getbyId($id)
		{
			if (isset(self::$struct_id[$id]))
				return self::$struct_id[$id];
			
			foreach (self::$structCache as $key=> $v) 
			{
				if ($v['id'] == $id)
				{
					self::$struct_id[$id] = $v;
					$v['url'] = $key;
					return $v;
				}	
			}
			
			return '';
		}	
				
		static public function getStructure()
		{
			return 	self::$structCache;
		}
		
		static public function getRootCtgbyURL($url)
		{
			$ctg2 = self::get($url);
			
			if (!$ctg2)
				return null;
			
			return self::get($ctg2['p'][0]);
		}
		
		static public function getPath($first)
		{
			$res = array();

			//Можем передать или строку (alias), или результат
			//вызова self::get
			if (!is_array($first))
			{	
				$first = self::get($first);
				if (!$first)
					return $res;				
			}
			
			$full_url = '';
			if (array_key_exists('p', $first))
			{
				foreach ($first['p'] as $v) 
				{
					$item = self::get($v);
					$full_url = $v.'/';
					$item['url'] =	$full_url;
					$res[] = $item;
				}
				
			}	
			$first['url'] = $first['a'].'/';
			$res[] = $first;
			
			return $res;
		}			
	}
?>