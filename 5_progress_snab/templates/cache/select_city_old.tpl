<div id="select_city" class="overlay" style="display:none">     
     <div class="popup popup-cities">
            <span class="popup__close">
                <svg class="svg-icon icon-popup-close"><use xlink:href="#icon-popup-close"></use></svg>
            </span>

            <p class="popup__title">
                Выберите ваш город
            </p>

            <div class="cities spacer" autocomplete="off">
                
                <div id="inp_cities__label" class="cities__label"> <!-- autocomplete-block -->
                    <input type="text" id="city_name" name="city_name" class="form__field" placeholder="Начните вводить город">
                </div><!--cities__label-->

                <button class="white-blue-btn cities__btn">Выбрать</button>

            </div>

            <div class="cities__list spacer_top">
                <ul class="cities__list-col">
                	{foreach $city_1 as $c}
                    <li data-domain="{$c.domain}" class="{$c.class}" data-cityid="{$c.delivery_id}">
                        {$c.html_name}
                    </li>
					{/foreach}
                </ul>

                <ul class="cities__list-col">
                	{foreach $city_2 as $c}
                    <li data-domain="{$c.domain}" class="{$c.class}" data-cityid="{$c.delivery_id}">
                        {$c.html_name}
                    </li>
					{/foreach}
                </ul>

                <ul class="cities__list-col">
                	{foreach $city_3 as $c}
                    <li data-domain="{$c.domain}" class="{$c.class}" data-cityid="{$c.delivery_id}">
                        {$c.html_name}
                    </li>
					{/foreach}
                </ul>

            </div><!--cities__list-->

        </div><!--popup-->
</div>        