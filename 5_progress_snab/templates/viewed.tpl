<!--watched-->
{if $viewed}
    <div class="container">
        <div class="watched">
            <div class="watched__content">
                <div class="watched__title">Вы смотрели</div>
                <div class="watched__container">
                    <div class="watched__wrapper swiper-wrapper">
                        {foreach $viewed as $item}
                            <div class="product_container products-card swiper-slide" data-price="{$item.price}" data-innercode="{$item.innercode}"  data-pid="{$item.pid}">
                                {if $item.allsum_str}
                                    <div class="products-card__availability">
                                        <div class="products__card-text">
                                            <span class="products__card-text--grey">На складе:</span>
                                            <span>{$item.allsum_str} {$item.edizm_str}</span>
                                        </div>
                                    </div>
                                {/if}
                                <div class="products-card__image">
                                    <img src="{if $item.pic}{$item.pic}{else}/assets/images/default.svg{/if}" alt="">
                                </div>
                                <div class="products__card-specification">
                                    <div class="products__card-title"><a href="{$item.url}" class="products__card-title">{$item.position}</a></div>

                                    {if $item.brand}
                                        <div class="products__card-text">
                                            <span class="products__card-text--grey">Бренд:</span>
                                            <span class="products__card-text--orange">{$item.brand}</span>
                                        </div>
                                    {/if}
                                    {if $item.artikul}
                                        <div class="products__card-text">
                                            <span class="products__card-text--grey">Артикул:</span>
                                            <span>{$item.artikul}</span>
                                        </div>
                                    {/if}
                                    {if $item.innercode}
                                        <div class="products__card-text">
                                            <span class="products__card-text--grey">Код ЕА:</span>
                                            <span>{$item.innercode}</span>
                                        </div>
                                    {/if}
                                    <div class="products__card-text">
                                        <span class="products__card-text--grey">Категория: </span>
                                        <span class="products__card-text--orange">{$item.ctg_type}</span>
                                    </div>
                                </div>
                                <div class="products-card__price">
                                    {if $item.price_status}
                                        {$item.price} руб/{$item.edizm_str}
                                    {else}
                                        По запросу
                                    {/if}
                                </div>

                                <div class="products__wrapper products__wrapper-card">
                                    <div class="products__card-counter products__card-counter--clearfix">
                                        <div class="products__card-counter-minus products__card-counter-element products__card-counter-element--vika">-</div>
                                        <div class="products__card-counter-num products__card-counter-element products__card-counter-element--vika">
                                            <input type="text" data-posid="{$item.id}" class="numfield inp_amount" value="0">
                                        </div>
                                        <div class="products__card-counter-plus products__card-counter-element products__card-counter-element--vika">+</div>
                                    </div>
                                    <div class="products__card-info">
                                        <div class="card__buttons">
                                            <div class=" button-buy button-buy--small">
                                                <span>
                                                    <svg>
                                                       <use xlink:href="/assets/sprite.svg#cart"></use>
                                                    </svg>
                                                </span>
                                            </div>
                                            <div class="to_cart button-cart button-cart--small hide">
                                                <a href="/cart/">
                                                    <svg>
                                                        <use xlink:href="/assets/sprite.svg#cart-arrow"></use>
                                                    </svg>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        {/foreach}
                    </div>

                    {if $viewed|@count gt 4}
                    <div class="watched-button watched-button-prev"></div>
                    {/if}
                    {if $viewed|@count gt 4}
                    <div class="watched-button watched-button-next"></div>
                    {/if}
                </div>
            </div>
        </div>
    </div>
{/if}
