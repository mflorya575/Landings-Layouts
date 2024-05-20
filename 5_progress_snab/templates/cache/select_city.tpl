<div class="choose-popup hide" id="select_city">
    <div class="choose-popup--backdrop"></div>
    <div class="choose-popup__wrap" id="chooseform">
        <div class="choose-close closepopup">
            <svg>
                <use xlink:href="/assets/sprite.svg#close"></use>
            </svg>
        </div>
        <div class="choose-popup__title">Выберите ваш город</div>
        <div class="choose-popup__cities">
            <div class="choose-popup__cities-wrap">
                {foreach $city_1 as $c}
                <div class="choose-popup__item" data-cityid="{$c.id}" data-pekid="{$c.pekid}" data-contacts='{$c.main_block1}'>{$c.html_name}</div>
                {/foreach}
            </div>
            <div class="choose-popup__cities-wrap">
                {foreach $city_2 as $c}
                <div class="choose-popup__item" data-cityid="{$c.id}" data-pekid="{$c.pekid}" data-contacts='{$c.main_block1}'>{$c.html_name}</div>
                {/foreach}
            </div>
            <div class="choose-popup__cities-wrap">
                {foreach $city_3 as $c}
                <div class="choose-popup__item" data-cityid="{$c.id}" data-pekid="{$c.pekid}" data-contacts='{$c.main_block1}'>{$c.html_name}</div>
                {/foreach}
            </div>
        </div>
        <!--
        <div class="choose-popup__subtitle">Или укажите в поле</div>
        <div class="choose-popup-search">
            <label class="form-input choose-popup-form-wrap">
                <input class="input input-valid choose-popup-form-input" type="text" placeholder="Начните вводить название">
            </label>
            <button class="choose-popup-form-button submit" type="submit">Выбрать</button>
        </div>
        <div class="choose-popup-result"></div>
        <div class="choose-popup-result-error"></div>
        -->
    </div>
</div>