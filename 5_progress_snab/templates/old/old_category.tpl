<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>{if $listing==0}{$title2} {if $city.id > 0}в {$city.name2}{/if}{else}{$title} {if $city.id > 0}в {$city.name2}{/if}{/if}</title>
    {include file='css_js.tpl'}


   <link rel="canonical" href="{$canonical}">
    <meta name="description" content="{$description}">

    {if $fullgeo==1}
    <meta name="googlebot" content="noindex, nofollow"/>
    {/if}
    
    {if $noindex==1}
		<meta name="robots" content="noindex, nofollow" />    
    {/if}
</head>
<body data-edizm="{$edizm}" data-sort-dir1="1" data-sort-dir2="{$sort_dir2}" data-sort-dir3="{$sort_dir3}"  data-sort-dir4="{$sort_dir4}" data-id="{if isset($pginfo.id)}{$pginfo.id}{/if}" data-sortf="{$sort_f}" data-curp="{$curpage}" data-totalp="{$totalpages}"  data-fg="{$fullgeo}" data-level="{$level}">
   
<section class="page-wrap"  data-power="{$power}"  {if isset($pginfo.markurl)}data-markurl="{$pginfo.markurl}"{/if}  data-expert="{$expert}">
	{include file='header.tpl'}

    <section class="pager">
        <div class="content">
            <a href="{$mainhost}/" class="pager__link">КПС</a>
            <span class="pager__colon">
                <svg class="svg-icon icon-arrow-pager"><use xlink:href="#icon-arrow-pager"></use></svg>
            </span>
            {if !$listing}
            {foreach from=$path item=p name=path}
            {if !$smarty.foreach.path.last}
            <a href="/catalog/{$razel0}/{$p.url}" class="pager__link">{$p.t}</a>
            	{if !$smarty.foreach.path.last}
            	<span class="pager__colon">
                <svg class="svg-icon icon-arrow-pager"><use xlink:href="#icon-arrow-pager"></use></svg>
            	</span>
            	{/if}
            {else}
            	<span class="pager__active">{$p.t}</span>
            {/if}	
			{/foreach}	
			{else}
				<span class="pager__active">{$title} {if $city.id == 0}во всей{else}в{/if} {$city.name2}</span>
			{/if}
        </div><!--content-->
    </section><!--pager-->

<!--
    <div class="banner-wrap content">
        <a href="#" class="banner banner-hr">
            <img class="mobile-none" src="/assets/images/banners/banner-1.jpg" alt="Баннер">
            <img class="mobile-block" src="/assets/images/banners/banner-2-mobile.jpg" alt="Баннер">
        </a>
    </div>
-->

    <section class="page page_catalog content">
        <div class="page__top spacer_top">

            <div class="bannertop">
                {$banner_1}
            </div>

            <h1 data-city="{$city.pek_id}">
            	{if $listing==0}
                {$title} {if $admin}{if $city.id == 0}во всей{else}в{/if} <a id="selCityLink" href="#" class="blue-link">{$city.name2}</a>{/if}
                {else}
                {$title} {if $admin}{if $city.id == 0}во всей{else}в{/if} <a id="selCityLink" href="#" class="blue-link">{$city.name2}</a>{/if}
                {/if}
            </h1>

            {if 1==0}
            <span class="info">
                <span>Как купить кабель</span>
                <svg class="svg-icon icon-info"><use xlink:href="#icon-info"></use></svg>
            </span>
            {/if}
        </div><!--page__top-->

        <p class="catalog__info">
            {if $min_price}
            <span id="price_diap">Цена за {if $edizm==1}метр{elseif $edizm==2}килограмм{/if} {if $min_price!=$max_price}от {$min_price} до {$max_price}
                {else}{$max_price}{/if}  руб.</span>
            {/if}
            <span class="catalog__info-count">{if $min_price}(по{else}По{/if} данному запросу {$cnt_totalItems_frmt} {$predl_str}{if $min_price}){/if}
                {if 1==0}{if $total_zavod_mrs_count}(плюс {$total_zavod_mrs_count} {$zavod_predl_str} от {$zavod_cnt} {$zavod_cnt_str}){/if}){/if}

            </span>
        </p>
		
		{if (($listing==0) && ($has_har==1))}
        <a href="{$har_url}" target="_blank" class="catalog__link">Характеристики {$pginfo.full_title}</a>
		{/if}
			
        <div class="page__wrap spacer_top">
            <aside class="aside">
            	{if $listing==0}
				<div class="aside__product">
                    <div class="aside__product-photo">
                        <img src="{if $pginfo.pic}{$pginfo.pic}{else}/assets/images/catalog/default.svg{/if}" alt="Фото">
                    </div><!--aside__product-photo-->

                    <div class="tags">
                        {if $pginfo.armor > 1}
                        <div class="tags__tag tooltip-wr">
                        	<svg class="svg-icon icon-tag-b"><use xlink:href="#icon-tag-b"></use></svg>
                            <span class="tooltip tooltip_top">
                                Броня защищает кабель от <br> механических повреждений
                            </span>
                         </div><!--tags__tag-->
						 {/if}
								
                         {if $pginfo.ekran}
                         <div class="tags__tag tooltip-wr">
                              <svg class="svg-icon icon-tag-e"><use xlink:href="#icon-tag-e"></use></svg>
                              <span class="tooltip tooltip_top">
                                  Экран защищает <br>
                                  электрические цепи от <br>
                                  влияния внешних <br>
                                  электрических полей
                               </span>
                          </div><!--tags__tag-->
						  {/if}
								
						  {if $pginfo.frls || $pginfo.frlsltx}
						  <div class="tags__tag tooltip-wr">
                              <svg class="svg-icon icon-tag-fr"><use xlink:href="#icon-tag-fr"></use></svg>
                              <span class="tooltip tooltip_top">
                                  Огнестойкий
                              </span>
                          </div><!--tags__tag-->
                          {/if}
                                
                          {if $pginfo.hf || $pginfo.frhf}
                          <div class="tags__tag tooltip-wr">
                              <svg class="svg-icon icon-tag-hf"><use xlink:href="#icon-tag-hf"></use></svg>
                              <span class="tooltip tooltip_top">
                                  Не содержит галогенов в <br>
                                  материалах изоляции и <br>
                                  оболочки
                              </span>
                          </div><!--tags__tag-->
                          {/if}    
                                
                          {if $pginfo.hl}
                          <div class="tags__tag tooltip-wr">
                              <svg class="svg-icon icon-tag-hl"><use xlink:href="#icon-tag-hl"></use></svg>
                              <span class="tooltip tooltip_top">
                                  Холодостойкий
                              </span>
                          </div><!--tags__tag-->                            
                          {/if}
                                
                          {if $pginfo.ls || $pginfo.frls}
                          <div class="tags__tag tooltip-wr">
                              <svg class="svg-icon icon-tag-ls"><use xlink:href="#icon-tag-ls"></use></svg>
                              <span class="tooltip tooltip_top">
                                   С пониженным дымо- и <br>
                                   газовыделением
                              </span>
                          </div><!--tags__tag-->
                          {/if}        
                                
                          {if $pginfo.lsltx || $pginfo.frlsltx}
                          <div class="tags__tag tooltip-wr">
                               <svg class="svg-icon icon-tag-ltx"><use xlink:href="#icon-tag-ltx"></use></svg>
                               <span class="tooltip tooltip_top">
                                   С низкой токсичностью <br>
                                   продуктов горения
                               </span>
                           </div><!--tags__tag-->
                           {/if}             
                                
                           {if $pginfo.ng}
                           <div class="tags__tag tooltip-wr">
                               <svg class="svg-icon icon-tag-ng"><use xlink:href="#icon-tag-ng"></use></svg>
                               <span class="tooltip tooltip_top">
                                   Не поддерживает горение <br>
                                   при групповой прокладке
                                </span>
                           </div><!--tags__tag-->
                           {/if}                                           
                    </div><!--tags-->

                    {if (($listing==0) && ($has_har==1))}
                    <a href="{$har_url}" target="_blank" class="aside__link">Характеристики {$pginfo.full_title}</a>
                    {/if}
                </div>            
                {/if}
                
                <form action=".php" class="filter">
                	{include file="filter_column.tpl"}
				</form>
                <div class="aside__links-block">
                	{include file="links_column.tpl"}
                </div><!--aside__links-block-->
            </aside>


            <div class="page__content">
                {if !$hide_anons}
                <div class="anonsblock">
                    <img src="/assets/images/decor/close.svg" id="closeanons" class="closepopup">
                    <div  style="margin-top:-13px">
                    <span>Мы обновили функционал страницы со складскими остатками <br>
                        Более удобный интерфейс для профессионалов в “Эксперте”</span>
                    </div>
                </div>
                <div class="strelka1" style="margin-top:-60px;margin-left: 620px">

                </div>
                {/if}
                <div class="catalog__top-desktop spacer" {if !$hide_anons}style="margin-top:10px"{/if}>
                    <div class="sort">
                        <span class="sort__title">Сортировать:</span>
                        <div class="sort__links">

                            <a href="{$sort_url_4}"   data-mob="0"  data-cursort="{$sort_dir4}" data-sortf="p" data-atype="4" class="sort__link">
                                <span {if $sort_f=='p'}style="color:#2F99CC"{/if}>по цене</span>
                                {if $sort_f=='p'}
                                    {if $sort_dir4==1}
                                        <svg class="svg-icon icon-sort-up"><use xlink:href="#icon-sort-down"></use></svg>
                                    {else}
                                        <svg class="svg-icon icon-sort-down"><use xlink:href="#icon-sort-up"></use></svg>
                                    {/if}
                                {else}
                                    <svg class="svg-icon icon-sort-default"><use xlink:href="#icon-sort-default"></use></svg>
                                {/if}
                            </a>

                            <a href="{$sort_url_3}"    data-mob="0" data-cursort="{$sort_dir3}"  data-sortf="n"  data-atype="3" class="sort__link">
                                <span {if $sort_f=='n'}style="color:#2F99CC"{/if}>по количеству</span>
                                {if $sort_f=='n'}
                                    {if $sort_dir3==1}
                                	    <svg class="svg-icon icon-sort-up"><use xlink:href="#icon-sort-down"></use></svg>
                                    {else}
    									<svg class="svg-icon icon-sort-down"><use xlink:href="#icon-sort-up"></use></svg>
                                    {/if}
                                {else}
                                    <svg class="svg-icon icon-sort-default"><use xlink:href="#icon-sort-default"></use></svg>
                                {/if}
                            </a>
                        </div><!--sort__links-->

                    </div><!--sort-->

                    {if $level>=3}
                    <div class="view_normal">
                        <span class="view__title">Вид:</span>
                        <div class="view__switch">
                            <a href="" id="standardURL" onClick="return false;" class="view__switch-link {if $expert==0}active{/if}">Стандартный</a>
                            <span class="tooltip-wr2">
                            <a href="" id="expertURL" class="view__switch-link  {if $expert==1}active{/if}" data-ostatki="{$cnt_ostatki}">Эксперт</a>

                                <span class="tooltip tooltip_top2" id="no_sklad_info">
                                    <span class="tooltip__text2">Складские остатки для этой позиции отсутствуют</span>
                                </span>

                            </span>
                        </div><!--view__switch-->
                    </div><!--view-->
                    {/if}
                </div><!--catalog__top-desktop-->

                <div class="catalog__top spacer">
                    <div class="catalog__top-left spacer">
                        <span class="filter__btn">
                            <span>Фильтр</span>
                            <i class="filter__btn-count">{$filter.sel_count}</i>
                            <i class="icon-filter"></i>
                        </span>

                        <div class="sort-select">
                            <p class="sort-select__selected">
                                <span {if $sort_f!='def'}style="color:#2F99CC"{/if}>
									{if $sort_f=='v'}по популярности
                                    {elseif $sort_f=='n'}по количеству
                                    {elseif $sort_f=='p'}по цене
                                    {else}по цене
                                    {/if}                                	
                                </span>
                                {if ($sort_dir3==1 || $sort_dir4==1 || $sort_dir2==1) }
                                	<svg class="svg-icon icon-sort-up"><use xlink:href="#icon-sort-down"></use></svg>
                                {else}	
									<svg class="svg-icon icon-sort-down"><use xlink:href="#icon-sort-up"></use></svg>               
                                {/if}
                            </p>

                            <svg class="svg-icon icon-arrow-select"><use xlink:href="#icon-arrow-select"></use></svg>

                            <div class="sort-select__list">
                                <p class="sort-select__item">
                            		<a href="{$sort_url_3}"   data-mob="1" data-cursort="{$sort_dir3}" data-sortf="n"  data-atype="3" class="sort__link">
                                		<span>по количеству</span>
                               			 {if $sort_dir3==1}
        		                        	<svg class="svg-icon icon-sort-up"><use xlink:href="#icon-sort-down"></use></svg>       
		                                {else}	
											<svg class="svg-icon icon-sort-down"><use xlink:href="#icon-sort-up"></use></svg>       
		                                {/if}                                
        		                    </a>
                                </p>

                                <p class="sort-select__item">
                            		<a href="{$sort_url_4}"   data-mob="1" data-cursort="{$sort_dir4}" data-sortf="p" data-atype="4"  class="sort__link">
                                		<span>по цене</span>
                               			 {if $sort_dir4==1}
        		                        	<svg class="svg-icon icon-sort-up"><use xlink:href="#icon-sort-down"></use></svg>       
		                                {else}	
											<svg class="svg-icon icon-sort-down"><use xlink:href="#icon-sort-up"></use></svg>       
		                                {/if}                                
        		                    </a>
                                </p>

                                {if 1==0}
                                <p class="sort-select__item">
                            		<a href="{$sort_url_2}"    data-mob="1"  data-cursort="{$sort_dir2}" data-sortf="v"  data-atype="2"  class="sort__link">
                                		<span>по популярности</span>
                               			{if $sort_dir2==1}
        		                        	<svg class="svg-icon icon-sort-up"><use xlink:href="#icon-sort-down"></use></svg>       
		                                {else}	
											<svg class="svg-icon icon-sort-down"><use xlink:href="#icon-sort-up"></use></svg>       
		                                {/if}                                
        		                    </a>
                                </p>
                                {/if}
                            </div><!--sort-select__list-->

                        </div><!--sort-select-->

                    </div><!--catalog__top-left-->

                    {if $level>=3}
                    <div class="view_normal">
                        <span class="view__title">Вид:</span>
                        <div class="view__switch">
                            <a href="#" id="standardURL2" class="view__switch-link   {if $expert==0}active{/if}">Стандартный</a>
                            <a href="" id="expertURL2" class="view__switch-link  {if $expert==1}active{/if}" data-ostatki="{$cnt_ostatki}" {if $cnt_ostatki==0}title="Складские остатки для этой позиции отсутствуют"{/if}>Эксперт</a>
                        </div><!--view__switch-->
                    </div><!--view-->
                    {/if}

                </div><!--catalog__top-->

                <!--
                <div class="price__header">
                    <div class="price__col">Маркоразмер</div>
                    <div class="price__col">Количество</div>
                    <div class="price__col">Компания</div>
                    <div class="price__col">Город</div>
                </div>
                -->
                <ul class="expert_header"  style="margin-top:2px;{if $expert==0}display:none{/if}">
                    <li class="table__list-item table__list-item--blue">
                        <div class="table__list-wrapper">
                            <div class="table__list-title table__list-title--mark">Маркоразмер</div>
                            <div class="table__list-title table__list-title--amount">Кол-во</div>
                           <!-- <div class="table__list-title table__list-title--sum"></div>-->
                        </div>
                        <div class="table__list-title table__list-title--company">Компания</div>
                        <div class="table__list-title table__list-title--city table__list-title--city-font">Город</div>
                    </li>
                </ul>

                <div class="catalog" id="items_list">
                    {if $expert==0}
                        {include file='mr_stocks_list.tpl'}
                    {else}
                        {include file='expert_mr_stocks_list.tpl'}
                    {/if}
                </div><!--catalog-->

                <div class="pages">

                    <div class="pages__else" style="margin-bottom:5px{if $curpage >= $totalpages};display:none{/if}">
                        <span id="showMore" class="blue-link">Показать ещё {$num_items_on_page}</span>
                        <span class="pages__else-count">(показано <span id="curShownCnt" data-cs="{$cnt_shownItems}">{$cnt_shownItems}</span> из <span id="totCnt" data-tot="{$cnt_totalItems}">{$cnt_totalItems}</span>)</span>
                    </div>


                	{if $city.id>0}
                    {if ((($fullgeo==0) && ($total_another>0)) || ($fullgeo==1))}
                    <div class="another_geo">
                        <a id="showGeo" href="{$another_geo_url}" class="blue-link">
                        	{if (($fullgeo==0) && ($total_another>0))}
                        		Показать склады в других городах
                        	{elseif ($fullgeo==1)}
                        		Показать склады  в {$city.name2}
                        	{/if}	
                        </a>
                    </div>
                    {/if}
                    {/if}                
                    
                    <div class="pages__list" id="paginator">
                    	{if $paginator && $items}
							{$paginator}
						{/if}	
                    </div><!--pages__list-->

                </div><!--pages-->


            </div><!--page__content-->

        </div><!--page__wrap-->

    </section><!--page-->

<!--
    <div class="banner-wrap banner-wrap_bottom content">
        <a href="#" class="banner banner-hr">
            <img class="mobile-none" src="/assets/images/banners/banner-2.jpg" alt="Баннер">
            <img class="mobile-block" src="/assets/images/banners/banner-2-mobile.jpg" alt="Баннер">
        </a>
    </div>
-->

	{include file='footer.tpl'}
	
    <div class="filter-popup">
        <div class="filter-popup__top">
        	<div style="display:inline-block">
            	<span class="filter-popup__set">Применить</span>
            </div>	
            <div class="filter-popup__title" style="display:inline-block">
            	Фильтр
			</div>
            <span class="filter-popup__close">
                <svg class="svg-icon icon-filter-close" style="cursor:pointer"><use xlink:href="#icon-filter-close"></use></svg>
            </span>

        </div><!--filter-popup__top-->
	
        <form action=".php" class="filter-popup__form">
           	{include file="filter_column.tpl"}        

            <div class="aside__links-block">
              	{include file="links_column.tpl"}
            </div><!--aside__links-block-->
		</form> 
	</div>

    <div class="calc" data-weight="0">
    {include file="weight_calc.tpl"}
    </div>
</section><!--page-wrap-->

{include file='sel_city_form.tpl'}
{include file='delivery_calc.tpl'}
{include file='bottomjs.tpl'}

</body>
</html>