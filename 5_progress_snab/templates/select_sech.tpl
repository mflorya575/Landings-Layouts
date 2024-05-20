	<div id="selSech" class="overlay">
        <div class="popup popup-sizes">
            <span class="popup__close">
                <svg class="svg-icon icon-popup-close"><use xlink:href="#icon-popup-close"></use></svg>
            </span>

            <p class="popup__title">
                Выберите сечение {$mark_title}
            </p>

            <div class="popup-sizes__list spacer_top">
                <div class="popup-sizes__col">
                  {foreach $sech_1 as $s}
                  	<a class="white-blue-btn popup-sizes__size" href="{$s.url}">{$s.title}</a>
                  {/foreach}
                </div><!--popup-sizes__col-->
				
				{if $sech_2}
                <div class="popup-sizes__col">
	                {foreach $sech_2 as $s}
                  	<a class="white-blue-btn popup-sizes__size" href="{$s.url}">{$s.title}</a>
    	            {/foreach}
                </div><!--popup-sizes__col-->
				{/if}
				
				{if $sech_3}	
                <div class="popup-sizes__col">
                    {foreach $sech_3 as $s}
                  	<a class="white-blue-btn popup-sizes__size" href="{$s.url}">{$s.title}</a>
                    {/foreach}
                </div><!--popup-sizes__col-->
				{/if}

				{if $sech_4}					
                <div class="popup-sizes__col">
                    {foreach $sech_4 as $s}
					<a class="white-blue-btn popup-sizes__size" href="{$s.url}">{$s.title}</a>
                    {/foreach}
                </div><!--popup-sizes__col-->
				{/if}
				
				{if $sech_5}
                <div class="popup-sizes__col">
                    {foreach $sech_5 as $s}
					<a class="white-blue-btn popup-sizes__size" href="{$s.url}">{$s.title}</a>
                    {/foreach}
                </div><!--popup-sizes__col-->
				{/if}

				{if $sech_6}
                <div class="popup-sizes__col">
                    {foreach $sech_6 as $s}
					<a class="white-blue-btn popup-sizes__size" href="{$s.url}">{$s.title}</a>
                    {/foreach}
                </div><!--popup-sizes__col-->
				{/if}
            </div><!--popup-sizes__list-->

        </div><!--popup-->
    </div>