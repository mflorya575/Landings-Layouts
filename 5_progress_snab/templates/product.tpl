<!DOCTYPE html>
<html lang="ru">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Купить {$title2}. Цена за метр кабеля по ГОСТ</title>
  {include file='css_js.tpl'}

  <link rel="stylesheet" href="/assets/css/swiper-bundle.css" />
  <script src="/assets/js/swiper-bundle.js"></script>

  <link rel="canonical" href="{$canonical}">
  <meta name="description" content="Узнать оптовую цену за метр {$title0}{$meta_pwr} из наличия в СПб. Купить со скидкой по прайсу {$title3}. Диаметр сечения по ГОСТ.">
  <link rel="stylesheet" href="/assets/css/selectize.default.css">
</head>

<body data-ptype="product" user-status="{$userStatus}" pgid="{$instock.pid}" data-currcityid="{$currCityId}" data-producttype="cable">
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
              <img src="{if $pginfo.pic}{$pginfo.pic}{else}/assets/images/catalog/defcable_long.svg{/if}" itemprop="image">
            </div>
            <div class="product-card__more-wrap">
              <h4 class="product-card__more-wrap_title">Краткое описание товара</h4>
              <div class="product-card__more-text-wrap">
                <div class="product-card__more-text">Серия</div>
                <span class="product-card__more-text--black">
                  <span class="product-card__more-series">
                          <a href="/catalog/cable/{$pginfo.mark.id_razdel}/{$pginfo.mark.id_categ}/{$pginfo.mark.id_mark}/">{$pginfo.mark.title}</a>
                  </span>
                </span>
              </div>
              {if $numCoresStr}
                <div class="product-card__more-text-wrap">
                  <div class="product-card__more-text">Количество жил</div>
                  <span class="product-card__more-text--black">{$numCoresStr}</span>
                </div>
              {/if}
              {if $pginfo.crossSection}
                <div class="product-card__more-text-wrap">
                  <div class="product-card__more-text">Сечение</div>
                  <span class="product-card__more-text--black">{$pginfo.crossSection} мм<sup>2</sup></span>
                </div>
              {/if}
              {if $pginfo.power}
                <div class="product-card__more-text-wrap">
                  <div class="product-card__more-text">Номинальное напряжение</div>
                  <span class="product-card__more-text--black">{$pginfo.power} кВ</span>
                </div>
              {/if}
              <div class="product-card__more-text-wrap">
                <div class="product-card__more-text">Изоляция</div>
                <span class="product-card__more-text--black">{$pginfo.izol_type}</span>
              </div>
              {* {if $instock.allsum_str}
                <div class="product-card__more-text">На складе: <span class="product-card__more-text--black">{$instock.allsum_str} м</span></div>
              {/if} *}
              <div class="product-card__more-text-wrap">
                <div class="product-card__more-text">Материал жилы</div>
                <span class="product-card__more-text--black">{$pginfo.material_type}</span>
              </div>
            </div>
            <div class="product-card__about">
              <div class="product-card__about-wrap">
                <div class="product-card__about-sum">
                  <meta itemprop="name" content="{$prod_type} {$pginfo.full_title}">

                  <meta itemprop="priceCurrency" content="RUB"/>
                  <meta itemprop="price" content="{$instock.schema_price}"/>
                  {if $instock.price}
                    <div class="product-card__about-sum-top">
                      {$instock.price} {if $edizm==1}₽{elseif $edizm==2}₽{/if}
                      <p class="product-card__about-sum_cheaper fast_order_link">Нашли дешевле?</p> </div>
                      <div class="price-actual">Цена указана за метр с учётом НДС 20% </div>
                      <div class="product-card__about-sum_itog">
                        <img src="/assets/images/shots_2260908.png">
                        <p>{if $instock.brand}Цена производителя "{$instock.brand}"{else}Итоговая цена зависит от количества заказываемого товара{/if}</p>
                      </div>
                  {else}
                    Цена по запросу
                  {/if}
                </div>
              </div>
              <div class="products__card_count">
                {if $cable_ves}
                  <div class="product-card__calculator">
                    <div class="product-card__calculator-title">Рассчитать вес</div>
                    <div class="product-card__calculator-popup--all hide">
                      <div class="product-card__calculator--backdrop"></div>
                      <div class="product-card__calculator-popup">
                        <div class="product-card__calculator-arrow"></div>
                        <div class="product-card__calculator__wrap">
                          <div class="product-card__calculator-close closepopup">
                            <svg>
                              <use xlink:href="/assets/sprite.svg#close"></use>
                            </svg>
                          </div>
                          <div class="product-card__calculator-name" id="dostavka_cable_name">{$pginfo.full_title}</div>
                          <div class="product-card__calculator-number">
                            <input class="input product-card__calculator-input" id="calc_mr_len" value="" type="number" placeholder="Количество, м">
                          </div>
                          <div class="calculator__dropdown product-card__calculator-dropdown">
                            <div class="calculator__dropdown-backdrop hide"></div>
                            <div class="calculator__dropdown-wrapper">
                              <div class="calculator__dropdown-title" data-w="0" data-ob="0">№ барабана</div> <!-- № барабана -->
                              <div class="calculator__dropdown-arrow">
                                <img src="/assets/icon/drop-arrow.svg"/>
                              </div>
                            </div>
                            <div class="calculator__dropdown-content hide">
                              <div  data-w="0" data-ob="0,08" class="calculator__dropdown-text">
                                <span>В бухте </span>
                                <img src="/assets/icon/hover-arrow.svg"/>
                              </div>
                              <div data-w="43" data-ob="0,21" class="calculator__dropdown-text">
                                <span>8</span>
                                <img src="/assets/icon/hover-arrow.svg"/>
                              </div>
                              <div  data-w="51" data-ob="0,26" class="calculator__dropdown-text">
                                <span>8а</span>
                                <img src="/assets/icon/hover-arrow.svg"/>
                              </div>
                              <div data-w="53" data-ob="0,35" class="calculator__dropdown-text">
                                <span>8б</span>
                                <img src="/assets/icon/hover-arrow.svg"/>
                              </div>
                              <div  data-w="56" data-ob="0,5" class="calculator__dropdown-text">
                                <span>10</span>
                                <img src="/assets/icon/hover-arrow.svg"/>
                              </div>
                              <div  data-w="132" data-ob="0,74" class="calculator__dropdown-text">
                                <span>12</span>
                                <img src="/assets/icon/hover-arrow.svg"/>
                              </div>
                              <div  data-w="151" data-ob="1,06" class="calculator__dropdown-text">
                                <span>12а</span>
                                <img src="/assets/icon/hover-arrow.svg"/>
                              </div>
                              <div  data-w="217" data-ob="1,37" class="calculator__dropdown-text">
                                <span>14</span>
                                <img src="/assets/icon/hover-arrow.svg"/>
                              </div>
                              <div  data-w="320" data-ob="1,53" class="calculator__dropdown-text">
                                <span>16а</span>
                                <img src="/assets/icon/hover-arrow.svg"/>
                              </div>
                              <div  data-w="367" data-ob="2,17" class="calculator__dropdown-text">
                                <span>17</span>
                                <img src="/assets/icon/hover-arrow.svg"/>
                              </div>
                              <div  data-w="535" data-ob="2,92" class="calculator__dropdown-text">
                                <span>18</span>
                                <img src="/assets/icon/hover-arrow.svg"/>
                              </div>
                              <div  data-w="763" data-ob="4" class="calculator__dropdown-text">
                                <span>20</span>
                                <img src="/assets/icon/hover-arrow.svg"/>
                              </div>
                              <div  data-w="965" data-ob="4,84" class="calculator__dropdown-text">
                                <span>22</span>
                                <img src="/assets/icon/hover-arrow.svg"/>
                              </div>
                            </div>
                          </div>
                          <div class="product-card__calculator-about">
                            <div class="calculator__info">
                              <div class="calculator__info-text">Вес 1 метра: <span id="cable_ves" data-cableves="{$cable_ves_num}">{$cable_ves}</span> <span>кг</span></div>
                              <div class="calculator__info-text">Объем: <span id="cable_vol">0</span> <span>м<sup>3</sup></span></div>
                            </div>
                            <div class="calculator__weight">
                              <div class="calculator__weight-title">Вес:</div>
                              <div class="calculator__weight-text" id="total_ves">0<span> кг</span></div>
                            </div>
                          </div>
                          <div id="calc_error" style="margin-top:10px;visibility: hidden;color:red">
                            Выберите барабан и укажите длину кабеля
                          </div>
                          <button class="calculator__button" onclick="openDeliveryCalc()">Рассчитать доставку</button>
                        </div>
                      </div>
                    </div>
                  </div>
                {/if}
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
                  {foreach from=$stocksInfo.full key=k item=v}
                    <div class="product-card_available-block" data-cityid="{$v.city.id}" style="display:{$v.visible_short}">
                      <p>Склад  г. {$v.city.city_name_1}</p>
                      <p>{$v.total_str} м</p>
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
            {foreach from=$stocksInfo.full key=k item=v}
            <div class="product-card_table" data-cityid="{$v.city.id}" style="display:{$v.visible}">
            <h4 class="product-card_table-title">Наличие у поставщиков <span onclick="openModal('.modal-available')">{$v.city.city_name_2}</span></h4>

            <div class="product-card_table-block">
            <table>
            <tbody>
            <tr class="title-row">
              <td></td>
              <td></td>
              <td>Производитель</td>
              {if $userStatus > 1}
              <td>Поставщик</td>
              <td>Цена</td>
              {/if}
              <td>Доступно</td>
              <td>Дата обновления</td>
            </tr>
            {foreach $v.all as $stock}
              <tr>
                <td>{$stock.n}</td>
                <td><a href="https://etm.ru/cat/nn/{$stock.supplier_code}" class="etm_link" target="_blank">{$stock.supplier_product_name}</a></td>
                <td>{$stock.brand_name}</td>
                {if $userStatus > 1}
                <td>{$stock.supplier_name}</td>
                <td>{$stock.supplier_pricewnds}</td>
                {/if}
                <td>{$stock.supplier_ostatki_cnt_str} м</td>
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
                  {if $opisanie}
                    <div class="product-card__tabs-item" tab-index="2">Описание</div>
                  {/if}
                  {if $primenenie}
                    <div class="product-card__tabs-item" tab-index="3">Применение</div>
                  {/if}
                  {if $construction}
                    <div class="product-card__tabs-item" tab-index="4">Конструкция</div>
                  {/if}
                  {if $decoding}
                    <div class="product-card__tabs-item" tab-index="5">Расшифровка</div>
                  {/if}
                  {if $exploitation}
                    <div class="product-card__tabs-item" tab-index="6">Условия эксплуатации</div>
                  {/if}
                  {if ($gost_main || $gost_also)}
                    <div class="product-card__tabs-item" tab-index="7">Документация</div>
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
                                  <div class="product-card__more-text">{$h.caption} ... <span class="product-card__more-text--black">{$h.value} {$h.edizm}</span></div>
                                {/foreach}
                              </div>
                            {/if}
                            {if  $harlist2}
                              <div class="product-card__tabs-wrap">
                                {foreach $harlist2 as $h}
                                  <div class="product-card__more-text">{$h.caption} ... <span class="product-card__more-text--black">{$h.value} {$h.edizm}</span></div>
                                {/foreach}
                              </div>
                            {/if}
                          </div>
                        </div>
                      </div>
                    {/if}
                  </div>
                  {if $opisanie}
                    <div class="product-card__tabs-more">
                      <div class="product-card__tabs-more-title" tab-index="2">Описание</div>
                      <div class="product-card__tabs-content hide" tab-index="2">
                        <div class="product-card__tabs-content-title">Описание</div>
                        <div class="product-card__tabs-common">
                          {$opisanie}
                        </div>
                      </div>
                    </div>
                  {/if}

                  {if $primenenie}
                    <div class="product-card__tabs-more">
                      <div class="product-card__tabs-more-title" tab-index="3">Применение</div>
                      <div class="product-card__tabs-content hide" tab-index="3">
                        <div class="product-card__tabs-content-title">Применение</div>
                        <div class="product-card__tabs-common">
                          {$primenenie}
                        </div>
                      </div>
                    </div>
                  {/if}

                  {if $construction}
                    <div class="product-card__tabs-more">
                      <div class="product-card__tabs-more-title" tab-index="4">Конструкция</div>
                      <div class="product-card__tabs-content hide" tab-index="4">
                        <div class="product-card__tabs-content-title">Конструкция</div>
                        <div class="product-card__tabs-common">
                          {foreach $constr_list as $c}
                            <div class="product-card__tabs-point">{$c.text}</div>
                          {/foreach}
                        </div>
                      </div>
                    </div>
                  {/if}

                  {if $decoding}
                    <div class="product-card__tabs-more">
                      <div class="product-card__tabs-more-title" tab-index="5">Расшифровка</div>
                      <div class="product-card__tabs-content hide" tab-index="5">
                        <div class="product-card__tabs-content-title">Расшифровка</div>
                        <div class="product-card__tabs-common">
                          <ul class="product-card__tabs-content-list-empty">
                            {$decoding}
                          </ul>
                        </div>
                      </div>
                    </div>
                  {/if}

                  {if $exploitation}
                    <div class="product-card__tabs-more">
                      <div class="product-card__tabs-more-title" tab-index="6">Условия эксплуатации</div>
                      <div class="product-card__tabs-content hide" tab-index="6">
                        <div class="product-card__tabs-content-title">Условия эксплуатации</div>
                        <div class="product-card__tabs-common">
                          {$exploitation}
                        </div>
                      </div>
                    </div>
                  {/if}


                  {if ($gost_main || $gost_also)}
                    <div class="product-card__tabs-more">
                      <div class="product-card__tabs-more-title" tab-index="7">Документация</div>
                      <div class="product-card__tabs-content hide" tab-index="7">
                        <div class="product-card__tabs-content-title">Документация</div>
                        <div class="product-card__tabs-common">
                          <div class="product-card__tabs-doc-block">
                            {foreach $gost_main as $g}
                              <a href="{$g['longtitle']}"  class="product-card__tabs-doc__elem" target="blank"><img src="/assets/icon/doc-pdf.svg">
                                {$g['pagetitle']}. {$g['description']}
                              </a>
                            {/foreach}
                          </div>
                        </div>
                      </div>
                    </div>
                  {/if}

                </div>
              </div>
            </div>
          </div>

          {if $analogs}
            <section class="analogs">
              <div class="container">
                <div class="analogs__title">Аналоги по характеристикам</div>
                <div class="row">
                  {include file="mr_prod_list_modules-analogs.tpl"}
                </div>
              </div>
            </section>
          {/if}
        </div>а
      </div>
    </div>

    <div class="modal modal-available" id="in_cities_main">
      <div class="modal-content">
        <div class="close-modal" onclick="closePopup()">
          <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" clip-rule="evenodd" d="M0.398862 0.398862C0.730807 0.0669159 1.269 0.0669159 1.60094 0.398862L6.9999 5.79782L12.3989 0.398862C12.7308 0.0669159 13.269 0.0669159 13.6009 0.398862C13.9329 0.730807 13.9329 1.269 13.6009 1.60094L8.20198 6.9999L13.6009 12.3989C13.9329 12.7308 13.9329 13.269 13.6009 13.6009C13.269 13.9329 12.7308 13.9329 12.3989 13.6009L6.9999 8.20198L1.60094 13.6009C1.269 13.9329 0.730807 13.9329 0.398862 13.6009C0.0669159 13.269 0.0669159 12.7308 0.398862 12.3989L5.79782 6.9999L0.398862 1.60094C0.0669159 1.269 0.0669159 0.730807 0.398862 0.398862Z" fill="#1F2937"/>
          </svg>
        </div>

        {if $stocksInfo.short.cityOstatki1}
          <div class="modal-available-col">
            {foreach $stocksInfo.short.cityOstatki1 as $ost}
              <div class="modal-available__item" style="cursor:pointer"  data-main="1" data-cityid="{$ost.id}" data-cityname="{$ost.city_name_1}"><p>{if ($userStatus>1)}<b>{/if}{$ost.city_name_1}{if ($userStatus>1)}</b>{/if}</p><p>{$ost.supplier_ostatki_cnt_str} м</p></div>
            {/foreach}
          </div>
        {/if}

        {if $stocksInfo.short.cityOstatki2}
          <div class="modal-available-col">
            {foreach $stocksInfo.short.cityOstatki2 as $ost}
              <div class="modal-available__item" style="cursor:pointer"  data-main="1" data-cityid="{$ost.id}" data-cityname="{$ost.city_name_1}"><p>{if ($userStatus>1)}<b>{/if}{$ost.city_name_1}{if ($userStatus>1)}</b>{/if}</p><p>{$ost.supplier_ostatki_cnt_str} м</p></div>
            {/foreach}
          </div>
        {/if}

        {if $stocksInfo.short.cityOstatki3}
          <div class="modal-available-col">
            {foreach $stocksInfo.short.cityOstatki3 as $ost}
              <div class="modal-available__item" style="cursor:pointer"  data-main="1" data-cityid="{$ost.id}" data-cityname="{$ost.city_name_1}"><p>{if ($userStatus>1)}<b>{/if}{$ost.city_name_1}{if ($userStatus>1)}</b>{/if}</p><p>{$ost.supplier_ostatki_cnt_str} м</p></div>
            {/foreach}
          </div>
        {/if}

        {if $stocksInfo.short.cityOstatki4}
          <div class="modal-available-col">
            {foreach $stocksInfo.short.cityOstatki4 as $ost}
              <div class="modal-available__item" style="cursor:pointer"  data-main="1" data-cityid="{$ost.id}" data-cityname="{$ost.city_name_1}"><p>{if ($userStatus>1)}<b>{/if}{$ost.city_name_1}{if ($userStatus>1)}</b>{/if}</p><p>{$ost.supplier_ostatki_cnt_str} м</p></div>
            {/foreach}
          </div>
        {/if}
      </div>
    </div>

    <div class="modal modal-delivery">
      <div class="modal-content" id="delivery_form">

        <div class="modal-delivery-top" >
          <h4>Расчет стоимости доставки</h4>
          <div class="close-modal" onclick="closePopup()">
            <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path fill-rule="evenodd" clip-rule="evenodd" d="M0.398862 0.398862C0.730807 0.0669159 1.269 0.0669159 1.60094 0.398862L6.9999 5.79782L12.3989 0.398862C12.7308 0.0669159 13.269 0.0669159 13.6009 0.398862C13.9329 0.730807 13.9329 1.269 13.6009 1.60094L8.20198 6.9999L13.6009 12.3989C13.9329 12.7308 13.9329 13.269 13.6009 13.6009C13.269 13.9329 12.7308 13.9329 12.3989 13.6009L6.9999 8.20198L1.60094 13.6009C1.269 13.9329 0.730807 13.9329 0.398862 13.6009C0.0669159 13.269 0.0669159 12.7308 0.398862 12.3989L5.79782 6.9999L0.398862 1.60094C0.0669159 1.269 0.0669159 0.730807 0.398862 0.398862Z" fill="#1F2937"/>
            </svg>
          </div>
        </div>

        <div class="modal-delivery-info">
          <div class="modal-delivery-title-col">
            <div class="modal-delivery-title__block" data-w="0" data-ob="0">
              <h5>Данные о грузе</h5>
              <p id="cargo_name"></p>
              <p id="cargo_baraban"></p>
            </div>
            <div class="modal-delivery-title__block">
              <h5>Направление</h5>
              <span>Отправление из</span>
            </div>
            <div class="modal-delivery-title__block">
              <span>Прибытие в</span>
            </div>
            <div class="modal-delivery-title__block">
              <h5>Дополнительные услуги</h5>
            </div>
          </div>
          <div class="modal-delivery-calc">
            <div class="delivery-calc-block">
              <div class="delivery-input-block">
                <div class="modal-delivery-input__amount">
                  <p>Количество, м</p>
                  <input type="number" name="calc-amount" id="calc-amount" value="">
                </div>
                <div class="modal-delivery-input__dimensions">
                  <p>Габариты (ДхШхВ),м</p>
                  <input type="text" name="calc-dimensions" data-l="0" data-w="0" data-h="0"  id="calc-dimensions" value="">
                </div>
                <div class="modal-delivery-input__volume">
                  <p>Объём, м³</p>
                  <input type="number" name="calc-volume" id="calc-volume" value="">
                </div>
                <div class="modal-delivery-input__weight">
                  <p>Вес, кг</p>
                  <input type="number" name="calc-weight" id="calc-weight" value="">
                </div>
                <div class="modal-delivery-input__empty">
                  <p>Очистить</p>
                </div>
              </div>
              <div class="delivery-total-block">
                <div class="delivery-total">
                  <p class="total-weight">Общий вес:</p>
                  <p class="total-volume">Общий объём:</p>
                </div>
                <div class="delivery-value">
                  <p class="total-weight" id="total_weight" data-w="0"></p>
                  <p class="total-volume" id="total_volume" data-v="0"></p>
                </div>
              </div>
            </div>

            <div class="modal-delivery__direction">
              <div class="delivery-direction__block">
                <!--
                <select class="delivery-direction__block-title" id="city_from">
                </select>
                -->
                <input type="text" class="delivery-direction__block-title inputcity" data-city_id="0" id="point_from">
                <div class="city_results" data-type="point_from"></div>

                <label class="delivery-direction__block-label" for="direction-from-1">
                  <input type="radio" name="direction-from" id="direction-from-1" value="0" checked>
                  <div class="radio-input">
                    <span></span>
                  </div>
                  Сдать груз в отделении
                </label>
                <label class="delivery-direction__block-label" for="direction-from-2">
                  <input type="radio" name="direction-from" id="direction-from-2" value="1">
                  <div class="radio-input">
                    <span></span>
                  </div>
                  Забрать по адресу
                </label>
              </div>

              <div class="delivery-direction__block">
                <!--
                <select class="delivery-direction__block-title" id="city_to">
                </select>
                -->
                <input type="text" class="delivery-direction__block-title inputcity" data-city_id="0" id="point_to">
                <div class="city_results" data-type="point_to"></div>
                <label class="delivery-direction__block-label" for="direction-to-1">
                  <input type="radio" name="direction-to" id="direction-to-1"  value="0" checked>
                  <div class="radio-input">
                    <span></span>
                  </div>
                  Получить груз в отделении
                </label>
                <label class="delivery-direction__block-label" for="direction-to-2">
                  <input type="radio" name="direction-to" id="direction-to-2" value="1" >
                  <div class="radio-input">
                    <span></span>
                  </div>
                  Доставить по адресу
                </label>
              </div>

              <div class="delivery-direction__block">
                <label class="delivery-direction__block-label" for="direction-add-1">
                  <input type="checkbox" name="srv1" value="1" id="direction-add-1">
                  <div class="radio-input">
                    <span></span>
                  </div>
                  Защитная транспортная упаковка
                </label>
                <label class="delivery-direction__block-label" for="direction-add-2">
                  <input type="checkbox"  name="srv2" value="2" id="direction-add-2">
                  <div class="radio-input">
                    <span></span>
                  </div>
                  Пломбировка груза
                </label>
                <label class="delivery-direction__block-label" for="direction-add-3">
                  <input type="checkbox"  name="srv3" value="3" id="direction-add-3">
                  <div class="radio-input">
                    <span></span>
                  </div>
                  Перевозка сопроводительных документов
                </label>
              </div>
            </div>
            <div style="visibility:visible;margin-top: 10px; color:red; height:20px" id="errormsg">

            </div>
            <button class="modal-delivery-btn" id="calc_delivery_btn" onclick="GetDeliveryPrices()">Рассчитать</button>
          </div>
        </div>

        <div class="modal-delivery-method">
          <div class="modal-delivery-method__elem" id="dellin_info">
            <img src="/assets/images/Lodo_DL.png">
            <p class="preliminary-price">Предварительная цена доставки <span id="dellin_delivery_price"></span></p>
            <p>Срок доставки <span id="dellin_delivery_term"></span></p>
             <button class="modal-delivery-btn order_delivery" id="dellin_order" href="">Оформить доставку</button>
          </div>
          <div class="modal-delivery-method__elem" id="pek_info">
            <img src="/assets/images/logo_pik.png">
            <p class="preliminary-price">Предварительная цена доставки <span id="pek_delivery_price"></span></p>
            <p> Срок доставки <span id="pek_delivery_term"></span></p>
            <button class="modal-delivery-btn order_delivery" href="https://pecom.ru/services-are/shipping-request/">Оформить доставку</button>
          </div>
        </div>

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