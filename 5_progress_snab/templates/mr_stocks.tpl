<!DOCTYPE html>
<html lang="ru">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>{$title2}</title>
    {include file='css_js.tpl'}

</head>

<body data-changed="0" data-sort-dir1="1" data-sort-dir2="{$sort_dir2}" data-sort-dir3="{$sort_dir3}"  data-sort-dir4="{$sort_dir4}" data-id="{if isset($pginfo.id)}{$pginfo.id}{/if}" data-sortf="{$sort_f}" data-curp="{$curpage}" data-totalp="{$totalpages}"  data-fg="{$fullgeo}" data-level="{$level}">
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
       <div class="sidebar__element-title sidebar__element-title--mobile filter-fixed">Фильтр<span class="sidebar__element-title--open"></span></div>
      </div>
    </div>

      <!--MAIN-->
      <section class="catalog__modules">
        <div class="container">
          <div class="row">
            <!--sidebar-->
            <div class="col-12 col-sm-3">
                <div class="sidebar">
                    <div class="sidebar__element-filter">
                        <div class="filter_ob sidebar__title">Фильтры</div>
                        <div id="fil_ob" class="sidebar__element-wrapper  {if !$mobile}show{/if}" data-shown="{if $mobile}0{else}1{/if}">
                            {include file="filter_column.tpl"}
                        </div>
                    </div>
                </div>
                <div class="sidebar sidebar__nav">
                    <div class="sidebar__title-category">Категории</div>
                    {foreach  from=$filter.another item=p}
                        <div class="sidebar__element-link"><a href="/catalog/{$p.uri}">{$p.t}</a></div>
                    {/foreach}
                </div>
            </div>

            <div class="col-12 col-sm-9 sorting-modules">
              <div class="sorting">
                <div class="main__title  main__title-longlist-mobile">
                  <h1>{$title}</h1>
                </div>

                <div class="sorting__container">
                  {* <div class="sorting__price">
                    <div class="sorting__price-text">Сортировка: </div>
                    <div class="sorting__price-dropdown custom__select">
                      <div class="custom__select-title ">
                          {if $sort_dir4==1}по возрастанию цены{elseif $sort_dir4==2}по убыванию цены{/if}
                      </div>
                      <div class="custom__select-content hide">
                        <div  data-sortf="p" data-atype="4" data-cursort="1"  class="sortmode custom__select-text">по возрастанию цены</div>
                        <div data-sortf="p" data-atype="4" data-cursort="2" class="sortmode custom__select-text">по убыванию цены</div>
                      </div>
                    </div>
                  </div>
                  <div class="register__switch register__switch-modules" tab-index="0">
                    <label class="register__switch-label">
                      <span class="register__switch-handle"></span>
                      <input data-sortf="n" data-atype="3" class="sortmode register__switch-input" data-checked="1" type="checkbox" checked="checked">
                    </label>
                    <div class="register__switch-title">В наличии</div>
                  </div> *}
                  <div class="list-catalog">
                   <div class="found-items">
                       {$found_goods_cnt_str} {$cnt_totalItems} {$goods_cnt_str}
                    </div>
                    <div class="list-catalog__item list-catalog__item--longlist {if $viewmode=='long'}list-catalog__item--longlist-active{/if}" data-viewmode="long">
                      <a href=""></a>
                    </div>
                    <div class="list-catalog__item list-catalog__item--modules {if $viewmode=='modules'}list-catalog__item--modules-active{/if}" data-viewmode="modules">
                       <a href=""></a>
                    </div>
                  </div>
                </div>

              </div>
              <div class="products products-list">
                <div class="row" id="items_list">
                    {include file="mr_stocks_list_{$viewmode}.tpl"}
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
  <button id="filter_btn" class="accept-button" style="display: none">Показать</button>

</body>


</html>