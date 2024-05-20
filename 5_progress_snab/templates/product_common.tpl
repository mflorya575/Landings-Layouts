<!DOCTYPE html>
<html lang="ru">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>{$title2} купить с доставкой | ПрогрессСнаб</title>
  {include file='css_js.tpl'}

  <link rel="stylesheet" href="/assets/css/swiper-bundle.css" />
  <script src="/assets/js/swiper-bundle.js"></script>

  <link rel="canonical" href="{$canonical}">
  <link rel="stylesheet" href="/assets/css/selectize.default.css">
</head>

<body data-ptype="product" user-status="{$userStatus}" {if $userStatus>1}data-etmcode="{$etmCode}"{/if} pgid="{$instock.pid}"  data-currcityname="{$currCityName}"  data-currcityid="{$currCityId}" data-producttype="elektro">
<div class="page" id="to-top">
  {include file="loginblock.tpl"}
  {include file='header.tpl'}

  <div class="main__title main__title--product">
    <div class="container">
      <h1>{$title}</h1>
    </div>
  </div>

  <div class="product-card-main">
    <div class="product_container product-card__container" data-price="{$instock.price}" data-innercode="{$instock.innercode}" data-pid="{$instock.pid}" data-edizm="{$edizm}">

      <div class="product-card"  itemscope itemtype="http://schema.org/Product">
        <div class="container">
          <div class="product-card__characteristics  product-card__characteristics-cable">
            <div class="product-card__image product-card__image-сable">
              <div class="product-card__image-text">Код товара : {$instock.innercode}</div>
              <img src="{if $pginfo.pic}{$pginfo.pic}{else}/assets/images/catalog/default.svg{/if}" itemprop="image">
            </div>
            <div class="product-card__more-wrap">
              <h4 class="product-card__more-wrap_title">Краткое описание товара</h4>

              <div class="product-card__more-text-wrap">
                <div class="product-card__more-text">Серия</div>
                <span class="product-card__more-text--black">
                  <span class="product-card__more-series">
                          <a href="{$series_url}">{$series}</a>
                  </span>
                </span>

              </div>

              <div class="product-card__more-text-wrap">
                <div class="product-card__more-text">Производитель</div>
                <span class="product-card__more-text--black">{$brand.brand}</span>
              </div>

              <div class="product-card__more-text-wrap">
                <div class="product-card__more-text">Раздел</div>
                <span class="product-card__more-text--black">Электрика</span>
              </div>

              <div class="product-card__more-text-wrap">
                <div class="product-card__more-text">Артикул</div>
                <span class="product-card__more-text--black">{$instock.artikul}</span>
              </div>

            </div>
            <div class="product-card__about">
              <div class="product-card__about-wrap">
                <div class="product-card__about-sum">
                  <meta itemprop="name" content="{$prod_type} {$pginfo.full_title}">

                  <meta itemprop="seller" content="{$seller_name}">
                  <meta itemprop="priceCurrency" content="RUB"/>
                  <meta itemprop="price" content="{$instock.schema_price}"/>

                  {if $instock.price}
                    <div class="product-card__about-sum-top">
                      {$instock.price} {if $edizm==1}₽{elseif $edizm==2}₽{elseif $edizm==3}₽{/if}
                      <p class="product-card__about-sum_cheaper fast_order_link">Нашли дешевле?</p> </div>
                      <div class="product-card__about-sum_itog">
                        <img src="/assets/images/shots_2260908.png">
                        <p>Итоговая цена зависит от количества заказываемого товара </p>
                      </div>
                  {else}
                    Цена по запросу
                  {/if}
                </div>
              </div>
              <div class="products__card_count">
                <div class="products__card-counter products__card-counter--clearfix">
                  <div class="products__card-counter-minus products__card-counter-element">-</div>
                  <input  class="numfield products__card-counter-num products__card-counter-element" data-posid="{$instock.id}"  placeholder="0" type="number">
                  <div class="products__card-counter-plus products__card-counter-element">+</div>
                </div>
              </div>
              <div class="products__wrapper">
                <div class="products__card-info">
                  <div class="card__buttons">
                    <div class="products__card-button button-buy button-buy--product">
                      <span>Купить</span>
                    </div>
                    <a href="/cart/" class="to_cart products__card-button button-cart button-cart--product hide">
                      <img src="/assets/icon/to-cart.svg">
                      <span>В корзине</span>
                    </a>
                  </div>
                </div>
              </div>
              <div class="product-card_available">
                {if $stocksInfo && $instock.price}
                  <span class="product-card_available-title">Доступно:</span>
                  {foreach from=$stocksInfo key=k item=v}
                    <div class="product-card_available-block" data-cityname="{$v.city.city_name_1}" style="display:{$v.visible_short}">
                      <p>Склад  г. {$v.city.city_name_1}</p>
                      <p>{$v.total_str} шт</p>
                    </div>
                  {/foreach}

                  <div class="product-card_check-available" onclick="openModal('#in_cities_main')">
                    <p>Наличие <span>в городах</span></p>
                    <div class="product-card_available-select">
                      <svg width="12" height="7" viewBox="0 0 12 7" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M1 1L5.94975 5.94975L10.8995 1" stroke="#36A9E1"/>
                      </svg>
                    </div>
                  </div>
                {else}
                  <span class="product-card_available-title fast_order_link" style="cursor:pointer">Уточнить доступное количество</span>
                {/if}
              </div>
            </div>
          </div>

          {if $userStatus > 1}
            {foreach from=$stocksInfo key=k item=v}
              <div class="product-card_table"  data-cityname="{$v.city.city_name_1}" style="display:{$v.visible}">
                <h4 class="product-card_table-title">Наличие у поставщиков в <span onclick="openModal('.modal-available')">{$v.city.city_name_2}</span></h4>
                <div class="product-card_table-block">
                  <table>
                    <tbody>
                    <tr class="title-row">
                      <td></td>
                      <td></td>
                      <td>Поставщик</td>
                      <td>Доступно</td>
                      <td>Стоимость</td>
                      <td>Прогноз</td>
                      <td>Срок доставки на склад, дней</td>
                      <td>Дата обновления</td>
                    </tr>
                    {foreach $v.all as $stock}
                      <tr>
                        <td>{$stock.n}</td>
                        <td>{if $stock.supplier_id == 1}<a href="https://etm.ru/cat/nn/{$stock.supplier_code}" class="etm_link" target="_blank">{/if}{$stock.sklad_name}{if $stock.supplier_id == 1}</a>{/if}</td>
                        <td>{$stock.supplier_name}</td>
                        <td>{$stock.supplier_ostatki_cnt_str} </td>
                        <td>{$stock.supplier_price}</td>
                        <td>{$stock.forecast_date}</td>
                        <td>{$stock.delivery_time}</td>
                        <td>{$stock.supplier_ostatki_date}</td>
                      </tr>
                    {/foreach}
                    </tbody>
                  </table>
                </div>
              </div>
            {/foreach}
          {/if}

          <div class="product-card__tabs-all">
            <div class="product-card__tabs-wrapper">
              <div class="product-card__tabs">
                <div class="product-card__tabs-nav">
                  {if ($harlist1)}
                    <div class="product-card__tabs-item product-card__tabs-item--active" tab-index="1">Характеристики</div>
                  {/if}
                  {if $description}
                    <div class="product-card__tabs-item" tab-index="2">Описание</div>
                  {/if}
                  {if $advantage}
                    <div class="product-card__tabs-item" tab-index="3">Преимущества</div>
                  {/if}
                </div>
              </div>
              <div class="product-card__wrap">
                <div class="container">
                  <div class="product-card__tabs-more">
                    {if $harlist1}
                      <div class="product-card__tabs-more-title arrow--active" tab-index="1">Полные характеристики</div>
                      <div class="product-card__tabs-content" tab-index="1">
                        <div class="product-card__tabs-content-title">Характеристики</div>
                        <div class="product-card__tabs-common">
                          <div class="product-card__tabs-characteristics">
                            {if  $harlist1}
                              <div class="product-card__tabs-wrap">
                                {foreach $harlist1 as $h}
                                  <div class="product-card__more-text">{$h.ftitle}: <span class="product-card__more-text--black">{$h.fval} {$h.edizm_ru}</span></div>
                                {/foreach}
                              </div>
                            {/if}
                            {if  $harlist2}
                              <div class="product-card__tabs-wrap">
                                {foreach $harlist2 as $h}
                                  <div class="product-card__more-text">{$h.ftitle}: <span class="product-card__more-text--black">{$h.fval} {$h.edizm_ru}</span></div>
                                {/foreach}
                              </div>
                            {/if}
                          </div>
                        </div>
                      </div>
                    {/if}
                  </div>

                  {if $description}
                    <div class="product-card__tabs-more">
                      <div class="product-card__tabs-more-title" tab-index="2">Описание</div>
                      <div class="product-card__tabs-content hide" tab-index="2">
                        <div class="product-card__tabs-content-title">Описание</div>
                        <div class="product-card__tabs-common">
                          {$description}
                        </div>
                      </div>
                    </div>
                  {/if}

                  {if $advantage}
                    <div class="product-card__tabs-more">
                      <div class="product-card__tabs-more-title" tab-index="3">Преимущества</div>
                      <div class="product-card__tabs-content hide" tab-index="3">
                        <div class="product-card__tabs-content-title">Преимущества</div>
                        <div class="product-card__tabs-common">
                          {$advantage}
                        </div>
                      </div>
                    </div>
                  {/if}

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="modal modal-available" id="in_cities_main">
      <div class="modal-content">
        <div class="close-modal" onclick="closePopup()">
          <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" clip-rule="evenodd" d="M0.398862 0.398862C0.730807 0.0669159 1.269 0.0669159 1.60094 0.398862L6.9999 5.79782L12.3989 0.398862C12.7308 0.0669159 13.269 0.0669159 13.6009 0.398862C13.9329 0.730807 13.9329 1.269 13.6009 1.60094L8.20198 6.9999L13.6009 12.3989C13.9329 12.7308 13.9329 13.269 13.6009 13.6009C13.269 13.9329 12.7308 13.9329 12.3989 13.6009L6.9999 8.20198L1.60094 13.6009C1.269 13.9329 0.730807 13.9329 0.398862 13.6009C0.0669159 13.269 0.0669159 12.7308 0.398862 12.3989L5.79782 6.9999L0.398862 1.60094C0.0669159 1.269 0.0669159 0.730807 0.398862 0.398862Z" fill="#1F2937"/>
          </svg>
        </div>

        {if $cityOstatki1}
          <div class="modal-available-col">
            {foreach $cityOstatki1 as $ost}
              <div class="modal-available__item" {if ($userStatus>1 && $ost.main)}style="cursor:pointer"{/if} data-main="{$ost.main}" data-cityid="{$ost.id}" data-cityname="{$ost.city_name_1}"><p>{if ($userStatus>1 && $ost.main)}<b>{/if}{$ost.city_name_1}{if ($userStatus>1 && $ost.main)}</b>{/if}</p><p>{$ost.supplier_ostatki_cnt_str} шт</p></div>
            {/foreach}
          </div>
        {/if}

        {if $cityOstatki2}
          <div class="modal-available-col">
            {foreach $cityOstatki2 as $ost}
              <div class="modal-available__item" {if ($userStatus>1 && $ost.main)}style="cursor:pointer"{/if} data-main="{$ost.main}" data-cityid="{$ost.id}" data-cityname="{$ost.city_name_1}"><p>{if ($userStatus>1 && $ost.main)}<b>{/if}{$ost.city_name_1}{if ($userStatus>1 && $ost.main)}</b>{/if}</p><p>{$ost.supplier_ostatki_cnt_str} шт</p></div>
            {/foreach}
          </div>
        {/if}

        {if $cityOstatki3}
          <div class="modal-available-col">
            {foreach $cityOstatki3 as $ost}
              <div class="modal-available__item" {if ($userStatus>1 && $ost.main)}style="cursor:pointer"{/if} data-main="{$ost.main}" data-cityid="{$ost.id}" data-cityname="{$ost.city_name_1}"><p>{if ($userStatus>1 && $ost.main)}<b>{/if}{$ost.city_name_1}{if ($userStatus>1 && $ost.main)}</b>{/if}</p><p>{$ost.supplier_ostatki_cnt_str} шт</p></div>
            {/foreach}
          </div>
        {/if}

        {if $cityOstatki4}
          <div class="modal-available-col">
            {foreach $cityOstatki4 as $ost}
              <div class="modal-available__item" {if ($userStatus>1 && $ost.main)}style="cursor:pointer"{/if} data-main="{$ost.main}" data-cityid="{$ost.id}" data-cityname="{$ost.city_name_1}"><p>{if ($userStatus>1 && $ost.main)}<b>{/if}{$ost.city_name_1}{if ($userStatus>1 && $ost.main)}</b>{/if}</p><p>{$ost.supplier_ostatki_cnt_str} шт</p></div>
            {/foreach}
          </div>
        {/if}
      </div>
    </div>


    <script src="/assets/js/selectize.min.js"></script>
    {include file='personal-manager.tpl'}
    {include file='footer.tpl'}
  </div>

  {include file='popups.tpl'}
  {include file='bottomjs.tpl'}

</body>


</html>