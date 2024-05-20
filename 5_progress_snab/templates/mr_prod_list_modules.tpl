{if $items}
    {foreach $items as $item}
        {if  $item.stocksInfo}
            <div class="modal modal-available" id="item_cities_main_{$item.pid}">
                <div class="modal-content">
                    <div class="close-modal" onclick="closePopup()">
                        <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" clip-rule="evenodd" d="M0.398862 0.398862C0.730807 0.0669159 1.269 0.0669159 1.60094 0.398862L6.9999 5.79782L12.3989 0.398862C12.7308 0.0669159 13.269 0.0669159 13.6009 0.398862C13.9329 0.730807 13.9329 1.269 13.6009 1.60094L8.20198 6.9999L13.6009 12.3989C13.9329 12.7308 13.9329 13.269 13.6009 13.6009C13.269 13.9329 12.7308 13.9329 12.3989 13.6009L6.9999 8.20198L1.60094 13.6009C1.269 13.9329 0.730807 13.9329 0.398862 13.6009C0.0669159 13.269 0.0669159 12.7308 0.398862 12.3989L5.79782 6.9999L0.398862 1.60094C0.0669159 1.269 0.0669159 0.730807 0.398862 0.398862Z" fill="#1F2937"/>
                        </svg>
                    </div>

                    {if $item.cityOstatki1}
                        <div class="modal-available-col">
                            {foreach $item.cityOstatki1 as $ost}
                                <div class="modal-available__item"><p>{$ost.city_name_1}</p><p>{$ost.supplier_ostatki_cnt_str} шт</p></div>
                            {/foreach}
                        </div>
                    {/if}

                    {if $item.cityOstatki2}
                        <div class="modal-available-col">
                            {foreach $item.cityOstatki2 as $ost}
                                <div class="modal-available__item"><p>{$ost.city_name_1}</p><p>{$ost.supplier_ostatki_cnt_str} шт</p></div>
                            {/foreach}
                        </div>
                    {/if}

                    {if $item.cityOstatki3}
                        <div class="modal-available-col">
                            {foreach $item.cityOstatki3 as $ost}
                                <div class="modal-available__item"><p>{$ost.city_name_1}</p><p>{$ost.supplier_ostatki_cnt_str} шт</p></div>
                            {/foreach}
                        </div>
                    {/if}

                    {if $item.cityOstatki4}
                        <div class="modal-available-col">
                            {foreach $item.cityOstatki4 as $ost}
                                <div class="modal-available__item"><p>{$ost.city_name_1}</p><p>{$ost.supplier_ostatki_cnt_str} шт</p></div>
                            {/foreach}
                        </div>
                    {/if}
                </div>
            </div>
        {/if}

        <div class="col-12 col-sm-4">
            <div class="product_container products__card_common"  data-price="{$item.price}"  data-innercode="{$item.innercode}" data-pid="{$item.pid}"  data-edizm="{$item.edizm}">
                <div class="products__card">
                    <div class="products__card-image_prod">
                        <a href="{$item.url}"><img src="{if $item.pic}{$item.pic}{else}/assets/images/catalog/defelectro_modules.png{/if}"></a>
                    </div>
                    <div class="products__card-content">
                        <div class="products__card-title"><a href="{$item.url}" class="products__card-title">{$item.title}</a></div>
                        <div class="products__card-price">
                            {if $item.price}
                                {$item.price} {if $item.edizm==1}₽{elseif $item.edizm==2}₽{elseif $item.edizm==3}₽{/if}
                            {else}
                                <span>Цена по запросу</span>
                            {/if}
                        </div>
                        <div class="products__wrapper products__wrapper-card">
                            <div class="card__buttons">
                                <div class="products__card-button button-buy">
                                    <span>Купить</span>
                                </div>
                                <a href="/cart/" class="to_cart products__card-button button-cart hide">
                                    <img src="/assets/icon/to-cart.svg">
                                    <span>В корзине</span>
                                </a>
                            </div>
                            <div class="products__card-counter products__card-counter--clearfix">
                                <div class="products__card-counter-minus products__card-counter-element ">-</div>
                                <input  class="numfield products__card-counter-num products__card-counter-element" data-posid="{$item.id}" type="number" placeholder="0">
                                <div class="products__card-counter-plus products__card-counter-element">+</div>
                            </div>
                        </div>
                        {if $item.price}
                            {if $item.stocksInfo}
                                {foreach from=$item.stocksInfo key=k item=v}
                                    <div class="product-card_available-block" data-cityname="{$v.city.city_name_1}" style="display:{$v.visible_short}">
                                        в {$v.city.city_name_2} - {$v.total_str} шт
                                    </div>
                                {/foreach}
                                <div class="product-card_check-available" onclick="openModal('#item_cities_main_{$item.pid}')">
                                    <p>Наличие <span>в городах</span></p>
                                    <div class="product-card_available-select">
                                        <svg width="12" height="7" viewBox="0 0 12 7" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M1 1L5.94975 5.94975L10.8995 1" stroke="#36A9E1"/>
                                        </svg>
                                    </div>
                                </div>
                            {else}
                                <div class="product-card__about-available">В наличии</div>
                            {/if}
                        {else}
                            <span class="product-card__about-order">В наличии</span>
                        {/if}
                    </div>
                </div>
            </div>
        </div>
    {/foreach}
{else}
    <b>Отсутствуют позиции, удовлетворяющие условиям поиска</b>
{/if}