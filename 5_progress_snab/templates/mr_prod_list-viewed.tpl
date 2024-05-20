{if $viewed}
    {foreach $viewed as $item}
        <div class="col-12 col-sm-3">
            <div class="product_container products__card_common"  data-price="{$item.price}"  data-innercode="{$item.innercode}" data-pid="{$item.pid}"  data-edizm="{$item.edizm}">
                <div class="products__card">
                    <div class="products__card-image_prod">
                        <a href="{$item.url}"><img src="{if $item.pic}{$item.pic}{else}/assets/images/default.svg{/if}"></a>
                    </div>
                    <div class="products__card-content">
                        <div class="products__card-title"><a href="{$item.url}">{$item.title}</a></div>
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
                                <input  class="numfield products__card-counter-num products__card-counter-element" data-posid="{$item.id}"  id="inp{$item.id}" type="number" placeholder="0">
                                <div class="products__card-counter-plus products__card-counter-element">+</div>
                            </div>
                        </div>
                        {if $item.status==1}
                            {if $isAdmin}<a href="https://k-ps.ru/agg/search/redirect/?id={$item.pid}&t=1&m=8&e=1" target="_blank">{/if}
                            <div class="product-card__about-available">Есть в наличии</div>
                            {if $isAdmin}</a>{/if}
                        {elseif $item.status==2}
                            <span class="product-card__about-order">Под заказ</span>
                        {/if}
                    </div>
                </div>
            </div>
        </div>
    {/foreach}
{/if}