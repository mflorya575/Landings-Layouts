{if $items}
    {foreach $items as $item}
        <div class="catalog-shortlist__card"   data-price="{$item.price}"  data-innercode="{$item.innercode}" data-pid="{$item.pid}"  data-edizm="{$item.edizm}">
            <div class="catalog-shortlist__image">
                <a href="{$item.url}"><img src="{if $item.pic}{$item.pic}{else}/assets/images/default.svg{/if}"></a>
            </div>
            <div class="catalog-shortlist__name"><a href="{$item.url}">{$item.title}{if $item.show_power} - {$item.power}кВ{/if}</a></div>
            <div class="catalog-shortlist__wrapper">
                {if $item.allsum_str}
                <div class="catalog-shortlist__text">
                    <span class="catalog-shortlist__text--black">На складе: </span>
                    <span class="catalog-shortlist__text--grey">{$item.allsum_str} {if $item.edizm==1}м{elseif $item.edizm==2}кг{/if}</span>
                </div>
                {/if}
                <div class="catalog-shortlist__price">
                    {if $item.price}
                        {$item.price} {if $item.edizm==1}₽{elseif $item.edizm==2}₽{elseif $item.edizm==3}₽{/if}
                    {else}
                        По запросу
                    {/if}

                </div>
                <div class="products__card-button button-card-more">
                    <a href="">Узнать больше</a>
                </div>
            </div>
        </div>
    {/foreach}
{else}
    <b>Отсутствуют позиции, удовлетворяющие условиям поиска</b>
{/if}