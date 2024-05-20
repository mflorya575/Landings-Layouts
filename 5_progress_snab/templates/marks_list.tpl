                	{if $items}
                	{foreach $items as $item}
                    <div class="catalog__item spacer_top">
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
                            
                        </div><!--catalog__item-left-->

                        <div class="catalog__item-center">
                            <a href="/catalog/{$item.url}" class="catalog__item-title" data-cid="{$item.id_mark}">{$item.prod_type_str} {$item.title} {if $item.power && $item.show_power}- {$item.power}кВ{/if}</a>

                            <p class="catalog__item-info"><!--Цена от 57,62 до 57,90 руб/м--></p>
							
							{if $item.description}		
                            <p class="catalog__item-desc">
                                {$item.description}
                                <a href="/catalog/{$item.url}">>>></a>
                            </p>
							{/if}
                        </div><!--catalog__item-center-->

						
                        <div class="catalog__item-right">
                            <a class="white-black-btn catalog__item-sizes" href="/catalog/{$item.url}">
                                {if $level<=2}
                                {$item.mrcount} {$item.varstr} сечений
                                {elseif $level==3}
                                {if $item.scnt >0 }
                                Есть на {$item.scnt} {$item.varstr} в {$city.name2}</a>
                                {else}
                                Отсутствует на складах в {$city.name2}</a>
                                {/if}
                                {/if}
                            </a>
                        </div><!--catalog__item-right-->
						
                    </div><!--catalog__item-->
					{/foreach}
					{else}
						<b style="font-weight:bold">Отсутствуют марки, удовлетворающие заданным условиям. Попробуйте расширить критерии поиска.</b>
					{/if}
