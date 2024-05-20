<!DOCTYPE html>
<html lang="ru">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=1440px, initial-scale=1.0">
  <title>Заказ N{$oid}</title>
  {include file='css_js_lc.tpl'}
</head>

<body>
  <div class="page" id="to-top">
    {include file="loginblock.tpl"}

    {include file='header.tpl'}


    <section class="cabinet-client">
      <div class="container">
        {if $order}
        <div class="client">
          <div class="main__title main__title-client">
            <h1>{$title}</h1>
          </div>
          <div class="client__edit">
            <div class="client__title">Информация о заказе</div>
            <div><a class="to_orders_link" href="/user/cabinet/">К списку заказов</a></div>
          </div>
          <div class="client__table">
            <div class="table__headline">
              <div class="table__text table__text-order--detalpage table__text--bold">Номер заказа</div>
                <div class="table__text  table__text-number--order table__text--bold">Сумма</div>
              <div class="table__text table__text-time--detalpage table__text--bold">Дата и время</div>
              <div class="table__text table__text-status--detalpage table__text--bold">Статус</div>
            </div>
            <div class="table__item table__item--detalpage table__item--detalpage-inactive">   
              <div class="table__text table__text-order--detalpage table__text--size">№ {$order.public_id}</div>
                <div class="table__text  table__text-number--order">
                    {$order.total_sum_str} {if $order.total_sum}руб{/if}
                </div>
              <div class="table__text table__text-time--detalpage table__text--time">
                <div class="table__text table__text--date">{$order.ord_date}</div>
                <div>{$order.ord_time}</div>
              </div>

              <div class="table__text table__text-status--detalpage    {if $order.osts==0}table__text--red {elseif $order.osts==1}table__text--grey{elseif $order.osts==2}table__text--green{elseif $order.osts==3}table__text--orange{elseif $order.osts==4}table__text--green{/if}">
                  {if $order.osts==0}Не обработан{elseif $order.osts==1}В обработке{elseif $order.osts==2}Счёт отправлен{elseif $order.osts==3}Счёт оплачен{elseif $order.osts==4}Товар отгружен{/if}
              </div>
            </div>
          </div>

          <div class="client__title">Состав заказа</div>
          <div class="client__table">
            <div class="table__headline">
              <div class="table__text table__text-code--detalpage table__text--bold">Артикул</div>
              <div class="table__text table__text-order--detalpage table__text--bold">Наименование</div>
              <div class="table__text table__text-number--order table__text--bold">Цена</div>
              <div class="table__text table__text-quantity--detalpage table__text--bold">Количество</div>
              <div class="table__text table__text-common--detalpage table__text--bold">Сумма</div>
            </div>
            {foreach $order.items as $item}
            <div class="table__item table__item--detalpage">
              <div class="table__text table__text-code--detalpage">{$item.innercode}</div>
              <div class="table__text table__text-order--detalpage table__text--size"><a class="table__text--size-link" href="{$item.produrl}">{$item.title}</a></div>
              <div class="table__text table__text-number--order">{$item.price_shop_str}</div>
              <div class="table__text table__text-quantity--detalpage">{$item.amount} {$item.edizm_str}</div>
              <div class="table__text table__text-common--detalpage">{$item.position_sum_str}</div>
            </div>
            {/foreach}
             <div class="client__total">
                 <span class="client__total-text">Общая стоимость без учета доставки : </span>
                 <span class="client__total-price">{$order.total_sum_str} {if $order.total_sum}руб{/if}</span>
             </div>

          </div>

          <div class="details">
            {if $order.attach_list}
              <div class="details__info">Вложенные файлы:</div>
                 <div class="details__download-wrap">
                      {foreach $order.attach_list as $file}
                      <a href="/user/download/?oid={$order.public_id}&ix={$file.ix}" class="details__info-download">{$file.name}</a>
                        <div class="details__info-download-icon">
                        <svg width="18" height="18">
                          <use xlink:href="/assets/sprite.svg#download"></use>
                        </svg>
                      </div>
                      {/foreach}
                  </div>
              </div>
            {/if}
            {if $order.user_comment}
                <div class="details__info">Комментарий к заказу: <span class="details__info-text">{$order.user_comment}</span></div>
            {/if}
            {if $order.osts>=2 || $order.invoice_url}
            <div class="details__button">
              <a href="/user/download_invoice/?oid={$oid}"  class="button-bill">Счет по заказу № {$order.public_id} от {$order.ord_date}
                <svg>
                  <use xlink:href="/assets/sprite.svg#download"></use>
                </svg>
              </a>
            </div>
            {/if}
            <div class="client__title client__title--detalpage">Контактные данные</div>
            <div class="details__info">ФИО: <span class="details__info-text">{$order.user_name}</span></div>
            {if $order.user_company}
                <div class="details__info">Компания: <span class="details__info-text">{$order.user_company},
                       {$order.user_city}</span>
                </div>
            {else}
                {if $order.user_city}<div class="details__info">Город: <span class="details__info-text">{$order.user_city}</span></div>{/if}
            {/if}

            {if $order.user_inn}
            <div class="details__info">ИНН: <span class="details__info-text">{$order.user_inn}</span></div>
            {/if}
            <div class="details__info">Телефон: <span class="details__info-text--highlight">{$order.user_phone}</span></div>
            <div class="details__info">Почта: <span class="details__info-text--highlight">{$order.user_email}</span></div>

            {if $order.mgr_fio}
            <div class="details-page__manager">
              <div class="client__title client__title--detalpage">Менеджер</div>
              <div class="details__info">Ваш менеджер: <span class="details__info-text">{$order.mgr_fio}</span></div>
              {if $order.mgr_phone}
              <div class="details__info">Телефон: <span class="details__info-text--highlight">{$order.mgr_phone}</span></div>
              {/if}
              {if $order.mgr_email}
              <div class="details__info">Почта: <span class="details__info-text--highlight">{$order.mgr_email}</span></div>
              {/if}
            </div>
            {/if}
            <div class="details__info details__info--note">Вы можете оставить заметку к этому заказу, она сохранится автоматически.</div>
            <textarea class="details__textarea" placeholder="Напишите ваш комментарий к заказу" type="text" id="manager_note">{$order.manager_notes}</textarea>
          </div>
          </div>
          {else}
            <b style="color: #CE0606">Заказ N{$oid} не найден</b>
          {/if}
        </div>
      </div>
    </section>

   {include file='footer.tpl'}
  </div>

  {include file='popups.tpl'}
  {include file='bottomjs.tpl'}
</body>
</html>