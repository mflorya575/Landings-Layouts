<!DOCTYPE html>
<html lang="ru">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=1170px, initial-scale=1.0">
  <title>Заказ N{$oid}</title>
  {include file='css_js.tpl'}
</head>

<body>
  <div class="page" id="to-top">
    <!--FIXED-->
    {include file="loginblock.tpl"}

    <header class="header">
        {include file='header.tpl'}
    </header>

    <main class="main">
         <div class="client">
              <div class="container">
                  {if $order}
                  <div class="client__download">
                      <div class="client__title">Информация о заказе</div>
                      <div class="client__download-link--user"><a  href="/user/cabinet/">К списку заказов</a></div>
                  </div>
                  <div class="storage__table storage__table--order">
                      <div class="storage__headline">
                          <div class="storage__text storage__text-number--user storage__text--bold">Номер заказа</div>
                          <div class="storage__text storage__text-time--user storage__text--bold">Дата и время</div>
                          <div class="storage__text storage__text-company--user storage__text--bold">
                              {if $order.user_company}Название компании{else}Город{/if}
                          </div>
                          <div class="storage__text storage__text--bold">Статус</div>
                      </div>

                      <div class="client__item">
                          <div class="storage__text-number--user storage__text--sub">№ {$order.public_id}</div>
                          <div class="storage__text-time--user storage__text--sub storage__text--time">
                              <div class="storage__text--date">{$order.ord_date}</div>
                              <div>{$order.ord_time}</div>
                          </div>
                          <div class="storage__text storage__text-company--user storage__text--sub">
                              {if $order.user_company}
                              <div>{$order.user_company}</div>
                              <div class="storage__text--sub-company">{$order.user_city}</div>
                              {else}
                                  <div>{$order.user_city}</div>
                              {/if}

                          </div>
                          <div class="storage__text--sub  {if $order.osts==0}storage__text--red {elseif $order.osts==1}storage__text--gray{elseif $order.osts==2}storage__text--green{elseif $order.osts==3}storage__text--orange{elseif $order.osts==4}storage__text--green{/if}"  style="margin-left:-8px">
                              {if $order.osts==0}Не обработан{elseif $order.osts==1}В обработке{elseif $order.osts==2}Счёт отправлен{elseif $order.osts==3}Счёт оплачен{elseif $order.osts==4}Товар отгружен{/if}
                          </div>

                      </div>
                  </div>

                  <div class="client__title client__title--order">Состав заказа</div>
                  <div class="cart-list cart-list--order">
                      <div class="container">
                          <ul class="cart-list__items">
                              <li class="cart-list__item cart-list__headline">
                                  <div class="cart-list__item-name cart-list__item-name--user cart-list__item-text"> Наименование</div>
                                  <div class="cart-list__item-price cart-list__item-price--user cart-list__item-text">Цена</div>
                                  <div class="cart-list__item-count--user cart-list__item-text">Количество</div>
                                  <div class="cart-list__item-summ--user cart-list__item-text" >Сумма</div>
                              </li>
                              {foreach $order.items as $item}
                              <li class="cart-list__item">
                                  <div class="cart-list__item-name cart-list__item-name--user"><a href="{$item.produrl}">{$item.title}</a></div>
                                  <div class="cart-list__item-price  cart-list__item-price--user"><span class="cart-list__item-price--mobile">Цeна: </span>{$item.price_shop_str}</div>
                                  <div class="cart-list__item-count--user">{$item.amount} {$item.edizm_str}</div>
                                  <div class="cart-list__item-summ--user"><span class="cart-list__item-price--mobile">Сумма: </span>{$item.position_sum_str}</div>
                              </li>
                              {/foreach}
                          </ul>
                          <div class="cart-list__total">
                              <span class="cart-list__total-text">Общая стоимость без учета доставки: </span>
                              <span class=cart-list__total-price>{$order.total_sum_str} {if $order.total_sum}руб{/if} </span>
                          </div>
                      </div>
                  </div>

                  <div class="details">
                      {if $order.attach_list}
                      <div class="details__info"><div style="display: inline-block">Вложенные файлы:</div>
                          <div style="display: inline-block;vertical-align: top">
                              {foreach $order.attach_list as $file}
                                  <a href="/user/download/?oid={$order.public_id}&ix={$file.ix}" class="details__info-download">{$file.name}</a><br>
                              {/foreach}
                          </div>
                      </div>
                      {/if}
                      {if $order.user_comment}
                      <div class="details__info">Комментарий к заказу: <span class="details__info-text">{$order.user_comment}</span></div>
                      {/if}
                      <table>
                       <tr>
                         <td style="vertical-align: top">
                            <div class="buttons-details user {if $order.osts<2 || !$order.invoice_url}hide{/if}">
                                <div class="button-details-download">
                                  <a href="/user/download_invoice/?oid={$oid}">
                                  Счет по заказу № {$order.public_id} от {$order.ord_date}
                                  <svg>
                                      <use xlink:href="/assets/sprite.svg#download"></use>
                                  </svg>
                                  </a>
                                </div>
                            </div>
                         </td>
                         <td style="vertical-align: top">
                             {if $order.mgr_fio}
                                 <div class="details__info">Ваш менеджер: <span class="details__info-text">{$order.mgr_fio}</span></div>

                                {if $order.mgr_phone}
                                    <div class="details__info">Телефон: <a class="details__info-text details__info-text--orange" href="tel:{$order.mgr_phone}">{$order.mgr_phone}</a></div>
                                {/if}
                                {if $order.mgr_email}
                                    <div class="details__info">Email: <a class="details__info-text details__info-text--orange" href="mailto:{$order.mgr_email}">{$order.mgr_email}</a></div>
                                {/if}
                             {/if}
                         </td>
                        </tr>
                      </table>

                      <div class="client__title client__title--top">Контактные данные</div>
                      <div class="details__info">ФИО: <span class="details__info-text">{$order.user_name}</span></div>
                      {if $order.user_company}
                      <div class="details__info">Компания: <span class="details__info-text">{$order.user_company},
                              {$order.user_city}</span></div>
                      {else}
                          {if $order.user_city}<div class="details__info">Город: <span class="details__info-text">{$order.user_city}</span></div>{/if}
                      {/if}

                      <div class="details__info">ИНН: <span class="details__info-text">{$order.user_inn}</span></div>
                      <div class="details__info">Телефон: <span class="details__info-text--orange">{$order.user_phone}</span></div>
                      <div class="details__info">Почта: <span class="details__info-text--orange">{$order.user_email}</span></div>
                  </div>
                  {else}
                      <b style="color:red">Заказ N{$oid} не найден</b>
                  {/if}
              </div>
          </div>
      </main>

    {include file='footer.tpl'}

  </div>
  {include file='popups.tpl'}
  {include file='bottomjs.tpl'}
</body>

</html>