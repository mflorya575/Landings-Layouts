{if $items}
    {foreach $items as $item}
        <div class="col-12 col-sm-4 products__card-pad">
            <div class="product_container products__card_common"  data-price="{$item.price}"  data-innercode="{$item.innercode}" data-pid="{$item.pid}"  data-edizm="{$item.edizm}">
                <div class="products__card-wrapper">
                    <div class="products__card__code">
                        {if ($item.allsum && (1==0))}
                            На складе: {$item.allsum_str} {if $item.edizm==1}м{elseif $item.edizm==2}кг{elseif $item.edizm==3}шт{/if}
                        {/if}
                    </div>
                    <div class="products__card-image_prod">
                        <a href="{$item.url}"><img src="{if $item.pic}{$item.pic}{else}/assets/images/default.svg{/if}"></a>
                    </div>
                    <a href="{$item.url}" class="products__card-title">{$item.title}</a>
                    <div class="products__card-text-catalog">
                        <span class="products__card-text--grey">Производитель: </span>
                        <span class="products__card-text--blue">{$item.brand}</span>
                    </div>
                    <div class="products__card-text-catalog">
                        <span class="products__card-text--grey">Код:</span>
                        <span>{$item.innercode}</span>
                    </div>
                    <div class="products__card-text-catalog">
                        <span class="products__card-text--grey">Категория: </span>
                        <a href="/catalog/{$item.ctg_url}"><span class="products__card-text--blue">{$item.ctg_name}</span></a>
                    </div>

                    <div class="products__card-price">
                        {if $item.price}
                            {$item.price} {if $item.edizm==1}₽{elseif $item.edizm==2}₽{elseif $item.edizm==3}₽{/if}
                        {else}
                            Цена по запросу
                        {/if}
                    </div>
                    <div class="products__wrapper products__wrapper-hover">
                        <div class="products__card-counter">
                            <input data-posid="{$item.id}"  class="numfield products__card-counter-num products__card-counter-element"  placeholder="1"/>
                        </div>
                        <div class="card__buttons">
                            <div class="products__card-button button-buy">
                                <span>Купить</span>
                            </div>
                            <div class="to_cart products__card-button button-cart hide">
                                <a href="/cart/">В корзине</a>
                            </div>
                        </div>
                    </div>
                    <div class="products__card-button-more button-card-more">
                        <a href="{$item.url}">Узнать больше</a>
                    </div>
                </div>
            </div>
        </div>
    {/foreach}
{else}
    <b>Отсутствуют позиции, удовлетворяющие условиям поиска</b>
{/if}