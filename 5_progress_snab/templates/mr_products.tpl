<!DOCTYPE html>
<html lang="ru">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>{$title2}</title>
  {if $ctgid}
  <meta name="description" content="Узнать оптовую цену на {$title3} из наличия в СПб. Купить со скидкой по прайсу">
  {else}
      {if 1==0}<!--Результаты вывода по поисковому запросу не индексируем -->{/if}
      <META NAME="robots" CONTENT="noindex,nofollow"/>

  {/if}
  {include file='css_js.tpl'}
</head>

<body data-changed="0" data-ptype="prodlist" data-id="{$ctgid}"  data-curp="{$curpage}" data-totalp="{$totalpages}"  data-curShownCnt="{$cnt_shownItems}" data-level="{$level}">
  <div class="page" id="to-top">
  {include file="loginblock.tpl"}

  {include file='header.tpl'}

    <div class="modules-mobile">
      <div class="container">
        <div class="modules-mobile__title">{$title}</div>
      </div>
    </div>

    <div class="sidebar__mobile">
      <div class="container">
        <div class="sidebar__element-title sidebar__element-title--mobile filter-fixed">Фильтр<span class="sidebar__element-title--open">Развернуть</span></div>
      </div>
    </div>

      <!--MAIN-->
      <section class="catalog__modules">
        <div class="container">
          <div class="row">
            <!--sidebar-->
            <div class="col-12 col-sm-3">

                {if $filters.filters}
                <div class="sidebar">
                    <div class="sidebar__element2">
                        <div class="filter_ob sidebar__title">Фильтр</div>
                        <div id="fil_ob" class="sidebar__element-wrapper  {if !$mobile}show{/if}" data-shown="{if $mobile}0{else}1{/if}">
                                {include file="product_filter_column.tpl"}
                        </div>
                    </div>
                </div>
                {/if}

                {if 1==0}
                <div class="sidebar sidebar__nav">
                    <div class="sidebar__title-category">Категории</div>
                    {foreach  from=$filter.another item=p}
                        <div class="sidebar__element-link"><a href="/catalog/{$p.uri}">{$p.t}</a></div>
                    {/foreach}
                </div>
                {/if}
            </div>

            <div class="col-12 col-sm-9 sorting-modules">
              <div class="sorting">
                <div class="main__title  main__title-longlist-mobile">
                  <h1>{$title}</h1>
                </div>

                <div class="sorting__container">
                  <div class="list-catalog">
                    <div class="found-items">
                        {$found_goods_cnt_str} {$cnt_totalItems} {$goods_cnt_str}
                    </div>
                    <div data-viewmode="long"  class="list-catalog__item list-catalog__item--longlist {if $viewmode=='long'}list-catalog__item--longlist-active{/if}">
                        <a href=""></a>
                    </div>
                    <div data-viewmode="modules" class="list-catalog__item list-catalog__item--modules {if $viewmode=='modules'}list-catalog__item--modules-active{/if}">
                        <a href=""></a>
                    </div>
                  </div>
                </div>

              </div>
              <div class="products products-list">
                <div class="row" id="items_list">
                    {include file="mr_prod_list_{$viewmode}.tpl"}
                </div>
               </div>

              <div class="page-pagination" style="margin-bottom:20px">
                <div class="page-pagination__container">
                  <ul class="page-pagination__list" id="paginator">
                      {$paginator}
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
    </section>


    {if $viewed}
    <section class="analogs">
      <div class="container">
        <div class="analogs__title">Вы смотрели</div>
        <div class="row">
              {include file="mr_prod_list-viewed.tpl"}
        </div>
      </div> 
    </section>
    {/if}


    {include file='personal-manager.tpl'}
    {include file='footer.tpl'}
  </div>


  {include file='popups.tpl'}
  {include file='bottomjs.tpl'}

</body>


</html>