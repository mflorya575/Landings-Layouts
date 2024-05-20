                	{if $items}
                	{foreach $items as $item}                
                    <div data-posid="{$item.id}"  data-pid="{$item.pid}" class="catalog__item spacer_top" data-pay="{if $item.external_url}1{else}0{/if}" data-cid="{$item.cid}" data-sid="{$item.sid}" data-pid="{$item.pid}" data-url="{if $item.external_url}{$item.external_url}{else}{$item.url}{/if}">
                        <div class="catalog__item-left">
                            <div class="catalog__item-photo">
                                <img src="{if $item.pic}{$item.pic}{else}/assets/images/catalog/default.svg{/if}">
                            </div><!--catalog__item-photo-->

                            <div class="tags">
                                {if $item.armor > 1}
                                <div class="tags__tag tags__tag_small tooltip-wr">
                                    <svg class="svg-icon icon-tag-b"><use xlink:href="#icon-tag-b"></use></svg>
                                    <span class="tooltip tooltip_top">
                                        Броня защищает кабель от <br> механических повреждений
                                    </span>
                                </div><!--tags__tag-->
								{/if}
								
                                {if $item.ekran}
                                <div class="tags__tag tags__tag_small tooltip-wr">
                                    <svg class="svg-icon icon-tag-e"><use xlink:href="#icon-tag-e"></use></svg>
                                    <span class="tooltip tooltip_top">
                                        Экран защищает <br>
                                        электрические цепи от <br>
                                        влияния внешних <br>
                                        электрических полей
                                    </span>
                                </div><!--tags__tag-->
								{/if}
								
								{if $item.frls || $item.frlsltx}
								<div class="tags__tag tags__tag_small tooltip-wr">
                                    <svg class="svg-icon icon-tag-fr"><use xlink:href="#icon-tag-fr"></use></svg>
                                    <span class="tooltip tooltip_top">
                                        Огнестойкий
                                    </span>
                                </div><!--tags__tag-->
                                {/if}
                                
                                {if $item.hf || $item.frhf}
                                <div class="tags__tag tags__tag_small tooltip-wr">
                                    <svg class="svg-icon icon-tag-hf"><use xlink:href="#icon-tag-hf"></use></svg>
                                    <span class="tooltip tooltip_top">
                                        Не содержит галогенов в <br>
                                        материалах изоляции и <br>
                                        оболочки
                                    </span>
                                </div><!--tags__tag-->
                                {/if}    
                                
                                {if $item.hl}
                                <div class="tags__tag tags__tag_small tooltip-wr">
                                    <svg class="svg-icon icon-tag-hl"><use xlink:href="#icon-tag-hl"></use></svg>
                                    <span class="tooltip tooltip_top">
                                        Холодостойкий
                                    </span>
                                </div><!--tags__tag-->                            
                                {/if}
                                
                                {if $item.ls || $item.frls}
                                <div class="tags__tag tags__tag_small tooltip-wr">
                                    <svg class="svg-icon icon-tag-ls"><use xlink:href="#icon-tag-ls"></use></svg>
                                    <span class="tooltip tooltip_top">
                                        С пониженным дымо- и <br>
                                        газовыделением
                                    </span>
                                </div><!--tags__tag-->
                                {/if}        
                                
                                {if $item.lsltx || $item.frlsltx}
                                <div class="tags__tag tags__tag_small tooltip-wr">
                                    <svg class="svg-icon icon-tag-ltx"><use xlink:href="#icon-tag-ltx"></use></svg>
                                    <span class="tooltip tooltip_top">
                                        С низкой токсичностью <br>
                                        продуктов горения
                                    </span>
                                </div><!--tags__tag-->
                                {/if}             
                                
                                {if $item.ng}
                                <div class="tags__tag tags__tag_small tooltip-wr">
                                    <svg class="svg-icon icon-tag-ng"><use xlink:href="#icon-tag-ng"></use></svg>
                                    <span class="tooltip tooltip_top">
                                        Не поддерживает горение <br>
                                        при групповой прокладке
                                    </span>
                                </div><!--tags__tag-->
                                {/if}
                           </div><!--tags-->

                            <div class="catalog__item-controls">
								{if $item.ves}
                                <a href="#" data-w="{$item.ves}" data-city="{$item.realcityId}" class="add-calc">
                                    <svg class="svg-icon icon-calc"><use xlink:href="#icon-calc"></use></svg>
                                    <span>
                                        <i>Рассчитать вес <br> и доставку</i>
                                    </span>
                                </a>
								{/if}
                                {if $item.techURL}
                                <a href="{$item.techURL}" target="_blank" class="add-favorite">
      	                    		<svg class="svg-icon icon-tech"><use xlink:href="#icon-control-2"></use></svg>
                                    <span><i>Технические<br>характеристики</i></span>
                                </a>
                                {/if}
                            </div><!--catalog__item-controls-->

                            {if $item.external_url}
                               <div class="{if $item.hasicon}reklblock_icon{else}reklblock{/if}">
                                    <span  class="reklama">Реклама</span>
                                </div>
                            {/if}
                        </div><!--catalog__item-left-->

                        <div class="catalog__item-center">
                            <a data-cid="{$item.cid}" {if $item.external_url}data-url="{$item.external_url}"{/if} href="{if $item.external_url}#{else}{$item.url}{/if}" onClick="return goToProductURL(this);" class="catalog__item-title" data-pid="{$item.pid}" target="_blank">{$item.title}{if $item.show_power} - {$item.power}кВ{/if}</a>
                            <!--<p class="catalog__item-company" data-firmname="{$item.firm_type} «{$item.firm}» {if $item.firm_tm}({$item.firm_tm}){/if}">-->
                                <!--<svg class="svg-icon icon-verified"><use xlink:href="#icon-verified"></use></svg>-->
                                <table class="catalog__item-company">
                                    <table>
                                        <tr>
                                            <td>
                                                <span class="catalog-company-name">
                                                    {$item.firm_type} «{$item.firm}» {if $item.firm_tm}({$item.firm_tm}){/if}
                                                </span>
                                             </td>
                                             {if $item.external_url}
                                             <td class="ext_link" style="vertical-align:bottom;padding-left:3px" >
                                                <div class="table__list-info2 tooltip-wr">
                                                    <img class="table__list-link2" src="/assets/images/decor/link.svg"  onClick="return goToProductURL(this);">
                                                    <span class="tooltip tooltip_bottom"  style="cursor:default !important">
                                                        <span class="tooltip__text2">Данная ссылка ведёт на сайт продавца</span>
                                                    </span>
                                                </div>
                                             </td>
                                             {/if}
                                        </tr>
                                </table>

                            <!--</p>-->
                            <p class="catalog__item-city">
                                <svg class="svg-icon icon-city-mark"><use xlink:href="#icon-city-mark"></use></svg>
                                <span>{$item.city.name}</span>
                            </p>

							{if $item.verified}
                            <p class="verified tooltip-wr">
                                <svg class="svg-icon icon-verified"><use xlink:href="#icon-verified"></use></svg>
                                <span>проверенный поставщик</span>
                                <span class="tooltip tooltip_left">
                                    <span class="tooltip__text">Сотрудничество с компанией безопасно</span>
                                </span>
                            </p>
							{/if}
							
                            <p class="catalog__item-desc">
								{$item.firm_descr}
                                {if $showfirm_link}<a href="{$item.firm_url}" target="_blank" target="_blank">>>></a>{/if}
                            </p>

                        </div><!--catalog__item-center-->

                        <div class="catalog__item-right">
                            <div class="catalog__item-price" data-edizm="{$item.edizm}">
                                {if $item.price}
                                {$item.price} {if $item.edizm==1}руб/м{elseif $item.edizm==2}руб/кг{/if}
                                {/if}

                                <div class="catalog__item-count tooltip-wr {if $item.count}dotted_amount_1{/if}" data-allsum="{$item.allsum_str}" data-counts="{$item.count}">
                                    {if $item.allsum_str}
                                        На складе {$item.allsum_str} {if $item.edizm==1}м{elseif $item.edizm==2}кг{/if}
                                    {/if}

                                    {if $item.count}
                                        <span class="tooltip tooltip_right">
                                            <span class="tooltip__text">Длины: {$item.count}</span>
                                        </span>
                                    {/if}
                                </div>
                            </div>

                            <div class="tooltip-wr">
                                <span class="catalog__item-count {if $item.count}dotted_amount_1{/if}" data-allsum="{$item.allsum_str}" data-counts="{$item.count}">
                                    {if $item.allsum_str}
                                    На складе {$item.allsum_str} {if $item.edizm==1}м{elseif $item.edizm==2}кг{/if}
                                    {/if}
                                </span>

                                {if $item.count}
                                <span class="tooltip tooltip_right">
                                    <span class="tooltip__text">Длины: {$item.count}</span>
                                </span>
                                {/if}
                            </div>


                            <a data-cid="{$item.cid}" {if $item.external_url}data-url="{$item.external_url}"{/if} href="{if $item.external_url}#{else}{$item.url}{/if}" onClick="return goToProductURL(this);" target="_blank" class="white-blue-btn catalog__item-link">
                                <span>Карточка товара</span>
                                {if $item.external_url}
                                <svg class="svg-icon icon-link"><use xlink:href="#icon-link"></use></svg>
                                {/if}
                            </a>

                            <div class="plus_minus">
                                <span class="count__minus"></span>
                                <input type="text" class="count__field" value="0">
                                <span class="count__plus"></span>
                            </div>

                            <button class="catalog__item-buy">
                                В корзину
                            </button>

                            {if $item.external_url}
                                <div class="reklblock2">
                                    <span  class="reklama2">Реклама</span>
                                </div>
                            {/if}

                        </div><!--catalog__item-right-->
                    </div><!--catalog__item-->

                    {/foreach}
                    {else}
                    <b>Этот кабель на складах отсутствует</b>
                    {/if}

