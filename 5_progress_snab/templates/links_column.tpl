                	{if 'subcategs'|array_key_exists:$filter}
                	{if $filter.subcategs}
                    <div class="aside__block open">
                        <p class="aside__block-title">
                            <span>Категории</span>
                            <svg class="svg-icon icon-block-arrow"><use xlink:href="#icon-block-arrow"></use></svg>
                        </p>

                        <div class="aside__block-content">
                            <ul class="aside__links">
                            	{foreach  from=$filter.subcategs item=p}
                                <li style="display:{$p.display}" data-hide="{if $p.display=='none'}1{else}0{/if}">
                                    <a href="/catalog/{$razel0}/{$p.uri}">{$p.t}</a>
                                    <span>({$p.cnt})</span>
                                </li>
								{/foreach}
                            </ul>

                            {if $filter.subcategs|@count gt 10}
                            <button class="else" id="show_subctg">
                                <span>Показать ещё</span>
                                <svg class="svg-icon icon-arrow-else"><use xlink:href="#icon-arrow-down"></use></svg>
                            </button>
                            {/if}
                        </div><!--aside__block-content-->

                    </div><!--aside__block-->
                    {/if}
                    {/if}
                                    
                    <div class="aside__block open">
                        <p class="aside__block-title">
                            <span>Другие разделы</span>
                            <svg class="svg-icon icon-block-arrow"><use xlink:href="#icon-block-arrow"></use></svg>
                        </p>

                        <div class="aside__block-content">
                            <ul class="aside__links">
                            	{foreach  from=$filter.another item=p}
                                <li style="display:{$p.display}" data-hide="{if $p.display=='none'}1{else}0{/if}">
                                    <a href="/catalog/{$p.uri}">{$p.t}</a>
                                    <span>({$p.cnt})</span>
                                </li>
								{/foreach}
                            </ul>


                            <button class="else" id="show_another">
                                <span>Показать ещё</span>
                                <svg class="svg-icon icon-arrow-else"><use xlink:href="#icon-arrow-down"></use></svg>
                            </button>

                        </div><!--aside__block-content-->

                    </div><!--aside__block-->

					{if $filter.prop|@count gt 0}
                    <div class="aside__block open">
                        <p class="aside__block-title">
                            <span>Свойства</span>
                            <svg class="svg-icon icon-block-arrow"><use xlink:href="#icon-block-arrow"></use></svg>
                        </p>

                        <div class="aside__block-content">
                            <ul class="aside__links">
                            	{foreach  from=$filter.prop item=p}
                                <li>
                                    <a href="{$pageuri}?{$p.p}">{$p.t}</a>
                                    <span>({$p.cnt})</span>
                                </li>
								{/foreach}
                            </ul>
                        </div><!--aside__block-content-->

                    </div><!--aside__block-->
					{/if}
