<?php

	namespace Cache;
	
	class CacheCities
	{
		static private $cities = {$cities};
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
?>