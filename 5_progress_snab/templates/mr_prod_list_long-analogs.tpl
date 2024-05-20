{if $items}
    {foreach $items as $item}
        <div class="col-12 col-sm-3">
            <div class="product_container products__card_common"  data-price="{$item.price}"  data-innercode="{$item.innercode}" data-pid="{$item.pid}"  data-edizm="{$item.edizm}">
                <div class="products__card">
                    <div class="products__card-image_prod">
                        <a href="{$item.url}"><img src="{if $item.pic}{$item.pic}{else}/assets/images/default.svg{/if}"></a>
                    </div>
                    <div class="products__card-title"><a href="{$item.url}">{$item.title}</a></div>
                    <div class="products__card-price">
                        {if $item.price}
                            {$item.price} {if $item.edizm==1}₽{elseif $item.edizm==2}₽{/if}
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
                            <input  class="numfield products__card-counter-num products__card-counter-element" data-posid="{$item.pos_id}"  id="inp{$item.pos_id}" value="{$item.amount}" type="number" placeholder="0">
                            <div class="products__card-counter-plus products__card-counter-element">+</div>
                        </div>
                    </div>
                    <div class="products__card-text-catalog">
                        <span class="products__card-text--grey">В Санкт-Петербурге:</span>
                        <span class="products__card-text--blue">920 м</span>
                    </div>
                    <div class="products__card-text-catalog">
                        <span class="products__card-text--grey">В Москве:</span>
                        <span class="products__card-text--blue">555 м</span>
                    </div>
                </div>
            </div>
        </div>
    {/foreach}
{else}
    <b>Отсутствуют позиции, удовлетворяющие условиям поиска</b>
{/if}