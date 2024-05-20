<!DOCTYPE html>
<html lang="ru">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=1440px, initial-scale=1.0">
  <title>Заказ N{$oid}</title>
  {include file='css_js_lc.tpl'}
</head>

<body  data-oid="{$oid}" data-mgr-fio="{$uprofile.fio}">
  <div class="page" id="to-top">
      {include file="loginblock.tpl"}
      {include file='header.tpl'}

    <section class="lc-manager">
        <div class="container">
            <div class="lc">
              <div class="lc__wrap lc__wrap--order">
                <div class="lc__order">Заказ № {$oid}</div>
                <div class="lc__add" data-status="0" id="takeorder">Взять заказ в работу <span>+</span></div>
              </div>
            </div>
            <div class="content-wrapper">
                <div class="sidebar-menu sidebar-menu__manager">
                    {include file='cabinet_manager_menu.tpl'}
                </div>

                <div class="client__orders">
                  <div class="client__orders">
                    <div class="client__orders-content">
                        <div class="client__title">Информация о заказе</div>
                        <div class="client__table">
                            <div class="table__headline">
                              <div class="table__text table__text-name--manager table__text--bold">Номер заказа</div>
                              <div class="table__text table__text-number--order table__text--bold">Название компании</div>
                              <div class="table__text table__text-time--detalpage table__text--bold">Дата и время</div>
                              <div class="table__text table__text-status--manager table__text--bold">Статус</div>
                            </div>

                            <div class="table__item table__item--detalpage">   
                              <div class="table__text table__text-name--manager table__text--size"><a href="">№ {$order.public_id}</a></div>
                              <div class="table__text table__text-company--order">
                                 {if $order.user_company}
                                     <div>{$order.user_company}</div>
                                 {else}
                                     <div>{$order.user_name}</div>
                                 {/if}
                                 <div class="table__text--company">{$order.user_city}</div>
                              </div>
                              <div class="table__text table__text-time--detalpage table__text--time">
                                <div class="table__text table__text--date">{$order.ord_date}</div>
                                <div>{$order.ord_time}</div>
                              </div>
                              <div class="table__text table__text-status--manager   {if $order.osts==0}table__text--red {elseif $order.osts==1}table__text--grey{elseif $order.osts==2}table__text--green{elseif $order.osts==3}table__text--orange{elseif $order.osts==4}table__text--green{/if}">
                                  {if $order.osts==0}Не обработан{elseif $order.osts==1}В обработке{elseif $order.osts==2}Счёт отправлен{elseif $order.osts==3}Счёт оплачен{elseif $order.osts==4}Товар отгружен{/if}
                                  {if $order.mgr_fio}
                                      <br>
                                      (Менеджер {$order.mgr_fio})
                                  {/if}
                              </div>
                            </div>
                        </div>
                        <div class="client__title">Состав заказа</div>
                        <div class="client__table">
                          <div class="table__headline">
                            <div class="table__text table__text-name--manager table__text--bold">Наименование</div>
                            <div class="table__text table__text-number--manager table__text--bold">Цена</div>
                            <div class="table__text table__text-quantity--detalpage table__text--bold">Количество</div>
                            <div class="table__text table__text-common--detalpage table__text--bold">Сумма</div>
                          </div>
                          {foreach $order.items as $item}
                          <div class="table__item table__item--detalpage">
                            <div class="table__text table__text-name--manager table__text--size"><a href="{$item.produrl}">{$item.title}</a></div>
                            <div class="table__text table__text-number--manager">{$item.price_shop_str}</div>
                            <div class="table__text table__text-quantity--detalpage">{$item.amount} {$item.edizm_str}</div>
                            <div class="table__text table__text-common--detalpage">{$item.position_sum_str}</div>
                          </div>
                          {/foreach}
                          <div class="client__total">
                               <span class="client__total-text">Общая стоимость без учета доставки: </span>
                              <span class="client__total-price">{$order.total_sum_str} {if $order.total_sum}руб{/if} </span>
                          </div>
                        </div>

                        <div class="details">
                         <div class="details__check">
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
                          {if $order.user_comment}
                          <div class="details__info">Комментарий к заказу: <span class="details__info-text">{$order.user_comment}</span></div>
                          {/if}

                          <div class="buttons-details  {if $order.osts==0}hide{/if}">
                            <div class="button-sent">
                              <label for="send_invoice_btn">Отправить счет
                                <svg>
                                  <use xlink:href="/assets/sprite.svg#file"></use>
                                </svg>
                              </label>
                              <input type="file" id="send_invoice_btn">
                            </div>
                            <div class="button-manager" id="invoice_sent"></div>
                          </div>
                          <div class="invoice_sent_info details__check  {if !$order.invoice_url}hide{/if}">
                            <div class="details__info">Счет отправлен:</div>
                            <div class="details__download-wrap">
                                <a href="/user/download_invoice/?oid={$oid}"><span class="details__info-download">{$order.invoice_name}</span></a>
                                <div class="details__info-download-icon">
                                  <svg width="24" height="24">
                                    <use xlink:href="/assets/sprite.svg#download-icon"></use>
                                  </svg>
                                </div>
                                 <div><span class="details__info-text details__info-text--time">{$order.invoice_date_show}</span></div>
                            </div>
                          </div>
                          <!--<div class="details__info-manager hide">Счет отправлен по почте менеджера</div>-->
                            <div class="details__info">ФИО: <span class="details__info-text">{$order.user_name}</span></div>

                            {if $order.user_company}
                                <div class="details__info">Компания: <span class="details__info-text">{$order.user_company},
                                        {$order.user_city}</span></div>
                            {else}
                                {if $order.user_city}<div class="details__info">Город: <span class="details__info-text">{$order.user_city}</span></div>{/if}
                            {/if}

                            {if $order.user_inn}
                                <div class="details__info">ИНН: <span class="details__info-text">{$order.user_inn}</span></div>
                            {/if}
                            <div class="details__info">Телефон: <span class="details__info-text--highlight">{$order.user_phone}</span></div>
                            <div class="details__info">Почта: <span class="details__info-text--highlight">{$order.user_email}</span>
                            </div>
                            <div class="details__info details__info--note">Вы можете оставить заметку к этому заказу, она сохранится
                                автоматически.</div>
                            <textarea class="details__textarea" placeholder="Напишите ваш комментарий к заказу"  type="text" id="manager_note">{$order.manager_notes}</textarea>

                    </div>
                </div>
            </div>
        </div>
    </section>

   {include file='footer.tpl'}
  </div>

   {include file='popups.tpl'}
  {include file='mgr_bottomjs.tpl'}
</body>


</html>