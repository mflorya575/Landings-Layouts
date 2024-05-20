                	{if $filter.pw|@count gt 0}
                    <div class="aside__block open">
                        <p class="aside__block-title">
                            <span>Напряжение</span>	
                            <svg class="svg-icon icon-block-arrow"><use xlink:href="#icon-block-arrow"></use></svg>
                        </p>
                        
                        <div class="filter__selected-list" data-filterlist="pw">
                        	 {foreach from=$filter.pw item=p}
                        	 	{if $p.ch}
									<div class="filter__selected">	
                                		<span class="filter__selected-desc">
                                    		<em>{$p.v}кВ</em>
                                		</span>

                                		<span class="filter__selected-delete" data-filter="pw" data-val="{$p.v}">
                                    		<svg class="svg-icon icon-selected-delete" ><use xlink:href="#icon-selected-delete"></use></svg>
                                		</span>
                            		</div>
                        	 	{/if}
							 {/foreach} 	
						</div>

                           
                        <div class="aside__block-content" data-ftype="pw"  data-usedesc="0" data-edizm="кВ">
                            <div>
                                {foreach from=$filter.pw item=p}
                                <div class="aside__block-col">
                                    <label class="checkbox">
                                        <input type="checkbox" class="filter_check" data-plist='{$p.prm}'  value="{$p.v}" {$p.ch} {$p.dsbl}>
                                        <span class="checkbox__btn {$p.dopcl}">
                                            <svg class="svg-icon icon-check"><use xlink:href="#icon-check"></use></svg>
                                        </span>
                                        <span class="checkbox__desc {$p.dopcl}">
                                            <em>{$p.v}</em>
                                        </span>
                                    </label>
								</div>
								{/foreach}
								
                            </div><!--spacer_top-->

                    	</div><!--aside__block-->
                    </div>               
                	{/if}
                	
                	{if $filter.mt|@count gt 0}
                    <div class="aside__block open">
                        <p class="aside__block-title">
                            <span>материал жилы</span>
                            <svg class="svg-icon icon-block-arrow"><use xlink:href="#icon-block-arrow"></use></svg>
                        </p>

                        <div class="filter__selected-list" data-filterlist="mt">
                        	 {foreach from=$filter.mt item=p}
                        	 	{if $p.ch}
									<div class="filter__selected">	
                                		<span class="filter__selected-desc">
                                    		<em>{$p.t}</em>
                                		</span>

                                		<span class="filter__selected-delete" data-filter="mt" data-val="{$p.id}">
                                    		<svg class="svg-icon icon-selected-delete" ><use xlink:href="#icon-selected-delete"></use></svg>
                                		</span>
                            		</div>
                        	 	{/if}
							 {/foreach} 
                        </div><!--filter__selected-list-->

                        <div class="aside__block-content" data-ftype="mt" data-usedesc="1">
                            {foreach from=$filter.mt item=p}
                            <label class="checkbox_one_line">
                                <input type="checkbox"  class="filter_check" data-plist='{$p.prm}' value="{$p.id}" {$p.ch}  {$p.dsbl}>
                                <span class="checkbox__btn {$p.dopcl}">
                                    <svg class="svg-icon icon-check"><use xlink:href="#icon-check"></use></svg>
                                </span>
                                <span class="checkbox__desc {$p.dopcl}">
                                    <em>{$p.t}</em>
                                </span>
                            </label>
							{/foreach}

                        </div><!--aside__block-content-->

                    </div><!--aside__block-->
					{/if}
					
					{if $filter.iz|@count gt 0}
                    <div class="aside__block open">
                        <p class="aside__block-title">
                            <span>изоляция</span>
                            <svg class="svg-icon icon-block-arrow"><use xlink:href="#icon-block-arrow"></use></svg>
                        </p>

                        <div class="filter__selected-list" data-filterlist="iz">
                        	 {foreach from=$filter.iz item=p}
                        	 	{if $p.ch}
									<div class="filter__selected">	
                                		<span class="filter__selected-desc">
                                    		<em>{$p.t}</em>
                                		</span>

                                		<span class="filter__selected-delete" data-filter="iz" data-val="{$p.id}">
                                    		<svg class="svg-icon icon-selected-delete" ><use xlink:href="#icon-selected-delete"></use></svg>
                                		</span>
                            		</div>
                        	 	{/if}
							 {/foreach} 
                        </div><!--filter__selected-list-->

                        <div class="aside__block-content" data-ftype="iz" data-usedesc="1">
                            {foreach from=$filter.iz item=p}
                            <label class="checkbox_one_line">
                                <input type="checkbox"  class="filter_check" data-plist='{$p.prm}' value="{$p.id}" {$p.ch}  {$p.dsbl}>
                                <span class="checkbox__btn {$p.dopcl}">
                                    <svg class="svg-icon icon-check"><use xlink:href="#icon-check"></use></svg>
                                </span>
                                <span class="checkbox__desc {$p.dopcl}">
                                    <em>{$p.t}</em>
                                </span>
                            </label>
							{/foreach}

                        </div><!--aside__block-content-->

                    </div><!--aside__block-->
                    {/if}
                    
					{if $filter.armor[0].v || $filter.ekran[0].v}
                    <div class="aside__block open">
                        <p class="aside__block-title">
                            <span>Броня и экран</span>
                            <svg class="svg-icon icon-block-arrow"><use xlink:href="#icon-block-arrow"></use></svg>
                        </p>

                        <div class="filter__selected-list" data-filterlist="ar">
                        	 {if $filter.noarek[0].ch}
								<div class="filter__selected">	
                               		<span class="filter__selected-desc">
                                   		<em>
                                		{if $filter.armor[0].v && $filter.ekran[0].v}
                                    		Без брони и экрана
                                    	{elseif $filter.armor[0].v && !$filter.ekran[0].v}
                                    		Без брони
                                    	{elseif !$filter.armor[0].v && $filter.ekran[0].v}
                                    		Без экрана
                                    	{/if}
                                   		</em>
                               		</span>

                               		<span class="filter__selected-delete" data-filter="ar" data-val="1">
                                   		<svg class="svg-icon icon-selected-delete" ><use xlink:href="#icon-selected-delete"></use></svg>
                               		</span>
                            	</div>
                        	{/if}

                        	{if $filter.armor[0].ch}
								<div class="filter__selected">	
                               		<span class="filter__selected-desc">
                                   		<em>Бронированный</em>
                               		</span>

                               		<span class="filter__selected-delete" data-filter="ar" data-val="2">
                                   		<svg class="svg-icon icon-selected-delete" ><use xlink:href="#icon-selected-delete"></use></svg>
                               		</span>
                            	</div>
                        	{/if}

                        	{if $filter.ekran[0].ch}
								<div class="filter__selected">	
                               		<span class="filter__selected-desc">
                                   		<em>Экранированный</em>
                               		</span>

                               		<span class="filter__selected-delete" data-filter="ar" data-val="3">
                                   		<svg class="svg-icon icon-selected-delete" ><use xlink:href="#icon-selected-delete"></use></svg>
                               		</span>
                            	</div>
                        	{/if}

                        </div><!--filter__selected-list-->

                        <div class="aside__block-content" data-ftype="ar" data-usedesc="1">
                        	
                            <label class="checkbox_one_line">
                                <input type="checkbox" class="filter_check" name="noarek_ch" value="1" data-plist='{$filter.noarek[0].prm}'  {$filter.noarek[0].ch} {$filter.noarek[0].dsbl}>
                                <span class="checkbox__btn {$filter.noarek[0].dopcl}">
                                    <svg class="svg-icon icon-check"><use xlink:href="#icon-check"></use></svg>
                                </span>
                                <span class="checkbox__desc {$filter.noarek[0].dopcl}">
                                	{if $filter.armor[0].v && $filter.ekran[0].v}
                                    <em>Без брони и экрана</em>
                                    {elseif $filter.armor[0].v && !$filter.ekran[0].v}
                                    <em>Без брони</em>
                                    {elseif !$filter.armor[0].v && $filter.ekran[0].v}
                                    <em>Без экрана</em>
                                    {/if}
                                </span>
                            </label>
							
							
							{if $filter.armor[0].v}
                            <label class="checkbox_one_line">
                                <input type="checkbox" class="filter_check" name="armor_ch" value="2" data-plist='{$filter.armor[0].prm}' {$filter.armor[0].ch} {$filter.armor[0].dsbl}>
                                <span class="checkbox__btn {$filter.armor[0].dopcl}">
                                    <svg class="svg-icon icon-check"><use xlink:href="#icon-check"></use></svg>
                                </span>
                                <span class="checkbox__desc {$filter.armor[0].dopcl}">
                                    <em>Бронированный</em>
                                </span>
                            </label>
							{/if}
							
							{if $filter.ekran[0].v}		
                            <label class="checkbox_one_line">
                                <input type="checkbox" class="filter_check" name="ekran_ch" value="3" data-plist='{$filter.ekran[0].prm}' {$filter.ekran[0].ch} {$filter.ekran[0].dsbl}>
                                <span class="checkbox__btn {$filter.ekran[0].dopcl}">
                                    <svg class="svg-icon icon-check"><use xlink:href="#icon-check"></use></svg>
                                </span>
                                <span class="checkbox__desc {$filter.ekran[0].dopcl}">
                                    <em>Экранированный</em>
                                </span>
                            </label>
							{/if}	
                        </div><!--aside__block-content-->

                    </div><!--aside__block-->
					{/if}
					
					{if $filter.tp|@count gt 0}
                    <div class="aside__block open">
                        <p class="aside__block-title">
                            <span>Тип кабеля</span>
                            <svg class="svg-icon icon-block-arrow"><use xlink:href="#icon-block-arrow"></use></svg>
                        </p>


                        <div class="filter__selected-list" data-filterlist="tp">
                        	 {foreach from=$filter.tp item=p}
                        	 	{if $p.ch}
									<div class="filter__selected">	
                                		<span class="filter__selected-desc">
                                    		<em>{$p.t}</em>
                                		</span>

                                		<span class="filter__selected-delete" data-filter="tp" data-val="{$p.id}">
                                    		<svg class="svg-icon icon-selected-delete" ><use xlink:href="#icon-selected-delete"></use></svg>
                                		</span>
                            		</div>
                        	 	{/if}
							 {/foreach} 
                        </div><!--filter__selected-list-->
						
						
                        <div class="aside__block-content"  data-ftype="tp" data-usedesc="1">
                            {foreach from=$filter.tp item=p}
                            <label class="checkbox_one_line">
                                <input type="checkbox"  class="filter_check" value="{$p.id}" data-plist='{$p.prm}' {$p.ch} {$p.dsbl}>
                                <span class="checkbox__btn {$p.dopcl}">
                                    <svg class="svg-icon icon-check"><use xlink:href="#icon-check"></use></svg>
                                </span>
                                <span class="checkbox__desc {$p.dopcl}">
                                    <em>{$p.t}</em>
                                    <span class="tooltip-wr">
                                        <svg data-t="2" class="svg-icon icon-info"><use xlink:href="#icon-info"></use></svg>
                                        <span class="tooltip2 tooltip_left">
                                            <span class="tooltip__text2">
                                                {$p.d}
                                            </span>
                                        </span>
                                    </span>

                                </span>
                            </label>
							{/foreach}

                        </div><!--aside__block-content-->

                    </div><!--aside__block-->
					{/if}
					
					{if $filter.tm}
                    <div class="aside__block open">
                        <p class="aside__block-title">
                            <span>Температурный режим</span>
                            <svg class="svg-icon icon-block-arrow"><use xlink:href="#icon-block-arrow"></use></svg>
                        </p>


                        <div class="filter__selected-list" data-filterlist="tm">
                        	 {foreach from=$filter.tm item=p}
                        	 	{if $p.ch}
									<div class="filter__selected">	
                                		<span class="filter__selected-desc">
                                    		<em>{$p.t}</em>
                                		</span>

                                		<span class="filter__selected-delete" data-filter="tm" data-val="{$p.id}">
                                    		<svg class="svg-icon icon-selected-delete" ><use xlink:href="#icon-selected-delete"></use></svg>
                                		</span>
                            		</div>
                        	 	{/if}
							 {/foreach} 
                        </div><!--filter__selected-list-->
						
						
                        <div class="aside__block-content"  data-ftype="tm" data-usedesc="1">
                            {foreach from=$filter.tm item=p}
                            <label class="checkbox_one_line">
                                <input type="checkbox"  class="filter_check" value="{$p.id}" data-plist='{$p.prm}' {$p.ch} {$p.dsbl}>
                                <span class="checkbox__btn {$p.dopcl}">
                                    <svg class="svg-icon icon-check"><use xlink:href="#icon-check"></use></svg>
                                </span>
                                <span class="checkbox__desc {$p.dopcl}">
                                    <em>{$p.t}</em>
                                    <small>({$p.d})</small>
                                </span>
                            </label>
							{/foreach}

                        </div><!--aside__block-content-->

                    </div><!--aside__block-->
					{/if}

                    {if $filter.pr|@count gt 0}
                        <div class="aside__block open">
                            <p class="aside__block-title">
                                <span>Количество пар</span>
                                <svg class="svg-icon icon-block-arrow"><use xlink:href="#icon-block-arrow"></use></svg>
                            </p>

                            <div class="filter__selected-list" data-filterlist="pr">
                                {foreach from=$filter.pr item=p}
                                    {if $p.ch}
                                        <div class="filter__selected">
                                		<span class="filter__selected-desc">
                                    		<em>{$p.v}</em>
                                		</span>

                                            <span class="filter__selected-delete" data-filter="pr" data-val="{$p.v}">
                                    		<svg class="svg-icon icon-selected-delete" ><use xlink:href="#icon-selected-delete"></use></svg>
                                		</span>
                                        </div>
                                    {/if}
                                {/foreach}
                            </div><!--filter__selected-list-->

                            <div class="aside__block-content"  data-ftype="pr"  data-usedesc="0">
                                <div>
                                    {foreach from=$filter.pr item=p}
                                        <div class="aside__block-col">
                                            <label class="checkbox">
                                                <input type="checkbox" class="filter_check" value="{$p.v}"  data-plist='{$p.prm}' {$p.ch} {$p.dsbl}>
                                                <span class="checkbox__btn {$p.dopcl}">
                                                    <svg class="svg-icon icon-check"><use xlink:href="#icon-check"></use></svg>
                                                </span>
                                                <span class="checkbox__desc {$p.dopcl}">
                                                    <em>{$p.v}</em>
                                                </span>
                                            </label>
                                        </div><!--aside__block-col-->
                                    {/foreach}
                                </div><!--spacer_top-->

                            </div><!--aside__block-content-->

                        </div><!--aside__block-->
                    {/if}

					{if $filter.zi|@count gt 0}
                    <div class="aside__block open">
                        <p class="aside__block-title">
                            <span>Количество жил</span>
                            <svg class="svg-icon icon-block-arrow"><use xlink:href="#icon-block-arrow"></use></svg>
                        </p>
                        
                        <div class="filter__selected-list" data-filterlist="zi">
                        	 {foreach from=$filter.zi item=p}
                        	 	{if $p.ch}
									<div class="filter__selected">	
                                		<span class="filter__selected-desc">
                                    		<em>{$p.v}</em>
                                		</span>

                                		<span class="filter__selected-delete" data-filter="zi" data-val="{$p.v}">
                                    		<svg class="svg-icon icon-selected-delete" ><use xlink:href="#icon-selected-delete"></use></svg>
                                		</span>
                            		</div>
                        	 	{/if}
							 {/foreach} 
                        </div><!--filter__selected-list-->

                        <div class="aside__block-content"  data-ftype="zi" data-csp='{$filter.csp}' data-usedesc="0">
                            <div>
                               	{foreach from=$filter.zi item=p}
                                <div class="aside__block-col">
                                    <label class="checkbox">
                                        <input type="checkbox" class="filter_check" value="{$p.v}"  data-plist='{$p.prm}' {$p.ch} {$p.dsbl}>
                                        <span class="checkbox__btn {$p.dopcl}">
                                            <svg class="svg-icon icon-check"><use xlink:href="#icon-check"></use></svg>
                                        </span>
                                        <span class="checkbox__desc {$p.dopcl}">
                                            <em>{$p.v}</em>
                                        </span>
                                    </label>
                                </div><!--aside__block-col-->
								{/foreach}		
                            </div><!--spacer_top-->

                        </div><!--aside__block-content-->

                    </div><!--aside__block-->
					{/if}

					{if $filter.sc|@count gt 0}
                    <div class="aside__block open">
                        <p class="aside__block-title">
                            <span>Сечение</span>
                            <span class="tooltip-wr">
                                <svg class="svg-icon icon-info"><use xlink:href="#icon-info"></use></svg>
                                <span class="tooltip tooltip_left">
                                    <span class="tooltip__text">
                                        Площадь поперечного сечения одной токопроводящей жилы (мм<sup>2</sup>)
                                    </span>
                                </span>
                            </span>
                            <svg class="svg-icon icon-block-arrow"><use xlink:href="#icon-block-arrow"></use></svg>
                        </p>

                        <div class="filter__selected-list" data-filterlist="sc">
                        	 {foreach from=$filter.sc item=p}
                        	 	{if $p.ch}
									<div class="filter__selected">	
                                		<span class="filter__selected-desc">
                                    		<em>{$p.v}</em>
                                		</span>

                                		<span class="filter__selected-delete" data-filter="sc" data-val="{$p.v}"  data-plist='{$p.prm}' {$p.dsbl}>
                                    		<svg class="svg-icon icon-selected-delete" ><use xlink:href="#icon-selected-delete"></use></svg>
                                		</span>
                            		</div>
                        	 	{/if}
							 {/foreach} 
                        </div><!--filter__selected-list-->

                        <div class="aside__block-content"  data-ftype="sc" data-usedesc="0"  data-edizm="мм<sup>2</sup>">
                            <div>
                               	{foreach from=$filter.sc item=p}
                                <div class="aside__block-col">
                                    <label class="checkbox">
                                        <input type="checkbox" class="filter_check" value="{$p.v}"  data-plist='{$p.prm}' {$p.ch} {$p.dsbl}>
                                        <span class="checkbox__btn {$p.dopcl}">
                                            <svg class="svg-icon icon-check"><use xlink:href="#icon-check"></use></svg>
                                        </span>
                                        <span class="checkbox__desc {$p.dopcl}">
                                            <em>{$p.v}</em>
                                        </span>
                                    </label>
                                </div><!--aside__block-col-->
								{/foreach}
                            </div><!--spacer_top-->

                        </div><!--aside__block-content-->

                    </div><!--aside__block-->
					{/if}

                    {if $filter.s2|@count gt 0}
                        <div class="aside__block open">
                            <p class="aside__block-title">
                                <span>Сечение несущей жилы</span>
                                <span class="tooltip-wr">
                                <svg class="svg-icon icon-info"><use xlink:href="#icon-info"></use></svg>
                                <span class="tooltip tooltip_left">
                                    <span class="tooltip__text">
                                        Площадь поперечного сечения одной несущей жилы (мм<sup>2</sup>)
                                    </span>
                                </span>
                            </span>
                                <svg class="svg-icon icon-block-arrow"><use xlink:href="#icon-block-arrow"></use></svg>
                            </p>

                            <div class="filter__selected-list" data-filterlist="s2">
                                {foreach from=$filter.s2 item=p}
                                    {if $p.ch}
                                        <div class="filter__selected">
                                		<span class="filter__selected-desc">
                                    		<em>{$p.v}</em>
                                		</span>

                                            <span class="filter__selected-delete" data-filter="s2" data-val="{$p.v}"  data-plist='{$p.prm}' {$p.dsbl}>
                                    		<svg class="svg-icon icon-selected-delete" ><use xlink:href="#icon-selected-delete"></use></svg>
                                		</span>
                                        </div>
                                    {/if}
                                {/foreach}
                            </div><!--filter__selected-list-->

                            <div class="aside__block-content"  data-ftype="s2" data-usedesc="0"  data-edizm="мм<sup>2</sup>">
                                <div>
                                    {foreach from=$filter.s2 item=p}
                                        <div class="aside__block-col">
                                            <label class="checkbox">
                                                <input type="checkbox" class="filter_check" value="{$p.v}"  data-plist='{$p.prm}' {$p.ch} {$p.dsbl}>
                                                <span class="checkbox__btn {$p.dopcl}">
                                            <svg class="svg-icon icon-check"><use xlink:href="#icon-check"></use></svg>
                                        </span>
                                                <span class="checkbox__desc {$p.dopcl}">
                                            <em>{$p.v}</em>
                                        </span>
                                            </label>
                                        </div><!--aside__block-col-->
                                    {/foreach}
                                </div><!--spacer_top-->

                            </div><!--aside__block-content-->

                        </div><!--aside__block-->
                    {/if}

                    {if $filter.s3|@count gt 0}
                        <div class="aside__block open">
                            <p class="aside__block-title">
                                <span>Сечение жилы освещения</span>
                                <span class="tooltip-wr">
                                <svg class="svg-icon icon-info"><use xlink:href="#icon-info"></use></svg>
                                <span class="tooltip tooltip_left">
                                    <span class="tooltip__text">
                                        Площадь поперечного сечения одной жилы освещения (мм<sup>2</sup>)
                                    </span>
                                </span>
                            </span>
                                <svg class="svg-icon icon-block-arrow"><use xlink:href="#icon-block-arrow"></use></svg>
                            </p>

                            <div class="filter__selected-list" data-filterlist="s3">
                                {foreach from=$filter.s3 item=p}
                                    {if $p.ch}
                                        <div class="filter__selected">
                                		<span class="filter__selected-desc">
                                    		<em>{$p.v}</em>
                                		</span>

                                            <span class="filter__selected-delete" data-filter="s3" data-val="{$p.v}"  data-plist='{$p.prm}' {$p.dsbl}>
                                    		<svg class="svg-icon icon-selected-delete" ><use xlink:href="#icon-selected-delete"></use></svg>
                                		</span>
                                        </div>
                                    {/if}
                                {/foreach}
                            </div><!--filter__selected-list-->

                            <div class="aside__block-content"  data-ftype="s3" data-usedesc="0"  data-edizm="мм<sup>2</sup>">
                                <div>
                                    {foreach from=$filter.s3 item=p}
                                        <div class="aside__block-col">
                                            <label class="checkbox">
                                                <input type="checkbox" class="filter_check" value="{$p.v}"  data-plist='{$p.prm}' {$p.ch} {$p.dsbl}>
                                                <span class="checkbox__btn {$p.dopcl}">
                                            <svg class="svg-icon icon-check"><use xlink:href="#icon-check"></use></svg>
                                        </span>
                                                <span class="checkbox__desc {$p.dopcl}">
                                            <em>{$p.v}</em>
                                        </span>
                                            </label>
                                        </div><!--aside__block-col-->
                                    {/foreach}
                                </div><!--spacer_top-->

                            </div><!--aside__block-content-->

                        </div><!--aside__block-->
                    {/if}

                    {if $filter.ek|@count gt 0}
                        <div class="aside__block open">
                            <p class="aside__block-title">
                                <span>Экран</span>
                                <span class="tooltip-wr">
                                <svg class="svg-icon icon-info"><use xlink:href="#icon-info"></use></svg>
                                <span class="tooltip tooltip_left">
                                    <span class="tooltip__text">
                                        Площадь поперечного сечения всех экранирующих жил (мм<sup>2</sup>)
                                    </span>
                                </span>
                            </span>
                                <svg class="svg-icon icon-block-arrow"><use xlink:href="#icon-block-arrow"></use></svg>
                            </p>

                            <div class="filter__selected-list" data-filterlist="ek">
                                {foreach from=$filter.ek item=p}
                                    {if $p.ch}
                                        <div class="filter__selected">
                                		<span class="filter__selected-desc">
                                    		<em>{$p.v}</em>
                                		</span>

                                            <span class="filter__selected-delete" data-filter="ek" data-val="{$p.v}">
                                     		<svg class="svg-icon icon-selected-delete" ><use xlink:href="#icon-selected-delete"></use></svg>
                                		</span>
                                        </div>
                                    {/if}
                                {/foreach}
                            </div><!--filter__selected-list-->

                            <div class="aside__block-content"  data-ftype="ek"  data-usedesc="0">
                                <div>
                                    {foreach from=$filter.ek item=p}
                                        <div class="aside__block-col">
                                            <label class="checkbox">
                                                <input type="checkbox" class="filter_check" value="{$p.v}"  data-plist='{$p.prm}' {$p.ch} {$p.dsbl}>
                                                <span class="checkbox__btn {$p.dopcl}">
                                                    <svg class="svg-icon icon-check"><use xlink:href="#icon-check"></use></svg>
                                                </span>
                                                <span class="checkbox__desc {$p.dopcl}">
                                                    <em>{$p.v}</em>
                                                </span>
                                            </label>
                                        </div><!--aside__block-col-->
                                    {/foreach}
                                </div><!--spacer_top-->
                            </div><!--aside__block-content-->
                        </div><!--aside__block-->
                    {/if}