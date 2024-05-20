<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Корзина - {$sitename}</title>

  {include file='css_js.tpl'}
</head>
<body data-ptype="cart">
<div class="page" id="to-top">
    <!--FIXED-->
    {include file="loginblock.tpl"}

    <!--HEADER-->
   
    {include file='header.tpl'}

    <!--MAIN-->

    <main class="main">
      <!--cart-list-->
      {if $mode==1}
      <div class="cart-list">
        <div class="container cart__content">
        <div class="cart-list__wrap">
          <div class="cart-list__title">Ваша корзина {if $cart2.cnt==0}пуста{/if}</div>
          {if $cart2.cnt > 0}
          <div class="cart-list__delete">
            <div class="cart-list__delete-icon">
              <svg>
                  <use xlink:href="/assets/sprite.svg#delete-cart"></use>
              </svg> 
            </div>
            <div class="cart-list__delete-title">Очистить корзину</div>
          </div>
            <div id="delete-agree" class="delete-agree hide">
              <div class="delete-agree__backdrop"></div>
              <div class="delete-agree__container">
                  <div id="delete-agreeContent" class="delete-agree__content">
                    <div class="closepopup register__form-close" >
                      <svg>
                        <use xlink:href="/assets/sprite.svg#close"></use>
                      </svg> 
                    </div>
                    <div class="delete-agree__text">Хотите очистить корзину?</div>
                    <div class="delete-agree__actions">
                      <div class="delete-agree__button">
                        <button class="button-default accept-cart-btn" type="submit">Да</button>
                      </div>
                      <div class="delete-agree__button">
                        <button class="cancel-btn" type="submit">Нет</button>
                      </div>
                    </div>
                  </div>
              </div>
            </div>
          {/if}
        </div>
          {if $cart2.cnt > 0}
          <div id="cartblock">
          <ul id="cart_table" class="cart_container cart-list__items">
            <li class="cart-list__headline">
              <div class="cart-list__item-code cart-list__item-text">Артикул</div>
              <div class="cart-list__item-name cart-list__item-text"> Наименование</div>
              <div class="cart-list__item-price cart-list__item-text">Цена</div>
              <div class="cart-list__item-count cart-list__item-text">Количество</div>
              <div class="cart-list__item-measure cart-list__item-text">ЕИ</div>
              <div class="cart-list__item-summ cart-list__item-text" id="sum_title">Сумма</div>
            </li>
            {foreach $cart2.items as $item}
            <li class="product_container realitem cart-list__item pc_container">
              <div class="cart-list__item-code">{$item.innercode}</div>
              <div class="cart-list__item-name"><a class="cart-list__item-name-link" href="/product/{$item.prodtype}/{$item.innercode}">{$item.title}</a></div>
              <div class="cart-list__item-price"  data-price-id="{$item.pos_id}" data-price="{$item.price}"><span class="cart-list__item-price--mobile">Цeна: </span>{$item.price_str}</div>
              <div class="cart-list__item-count">
                <div class="products__card-counter products__card-counter--clearfix">
                  <div class="products__card-counter-minus products__card-counter-element ">-</div>
                  <input  class="numfield products__card-counter-num products__card-counter-element" data-client="pc" data-posid="{$item.pos_id}"  value="{$item.amount}" type="number" placeholder="0">
                  <div class="products__card-counter-plus products__card-counter-element ">+</div>
                </div>
              </div>
              <div class="cart-list__item-measure">
                <span>{if $item.edizm==1}м{elseif $item.edizm==2}кг{elseif $item.edizm==3}шт{/if}</span>
              </div>
              <div class="cart-list__item-summ">
                  <span id="cart_summ{$item.pos_id}"  data-itsum="sum_{$item.pos_id}">{$item.sum_str}</span>
             </div>

              <div class="cart-list__item-delete">
                <svg width="25" height="24">
                  <use xlink:href="/assets/sprite.svg#cart-delete"></use>
                </svg>              
              </div>
            </li>
            {/foreach}
            {foreach $cart2.items as $item}
            <li class="product_container realitem cart-list__item  cart-list__item--mobile">
              <div class="cart-list__item-name"><a class="cart-list__item-name-link" href="/product/{$item.prodtype}/{$item.innercode}">{$item.title}</a></div>
              <div class="cart-list__item-code"><span class="cart-list__item-code--mobile">Арт:</span>{$item.innercode}</div>
              <div class="cart-list__item-mobile-wrap">
                <div class="cart-list__item-price"  data-price-id="{$item.pos_id}" data-price="{$item.price}"><span class="cart-list__item-price--mobile">Цeна: </span>{$item.price_str}</div>
                <div class="cart-list__item-count">
                  <div class="products__card-counter products__card-counter--clearfix">
                    <div class="products__card-counter-minus products__card-counter-element ">-</div>
                    <input  class="numfield products__card-counter-num products__card-counter-element"  data-client="mob" data-posid="{$item.pos_id}"  value="{$item.amount}" type="number" placeholder="0">
                    <div class="products__card-counter-plus products__card-counter-element ">+</div>
                  </div>
                </div>
                <div class="cart-list__item-measure">
                  <span>м</span>
                </div>
              </div>
              <div class="cart-list__item-summ">
                  <span class="cart-list__item-price--mobile">Сумма: </span><span data-itsum="sum_{$item.pos_id}">{$item.sum_str}</span>
              </div>
              <div class="cart-list__item-delete">
                <svg width="25" height="24">
                  <use xlink:href="/assets/sprite.svg#cart-delete"></use>
                </svg>              
              </div>
            </li>
            {/foreach}
          </ul>
          <div class="cart-list__total">
              <span class="cart-list__total-text">Общая стоимость без учета доставки:</span>
              <span class="cart-list__total-price" data-ftype="totalsum">{$cart2.totalsum_str}</span>
          </div>
          {/if}
          </div>
        </div>
      </div>

       {if $cart2.cnt > 0}
      <!--order-->
      <div class="order">
        <div class="container">
          <div class="order__content">
            <form id="orderform" action="" class="order__form form">
              <div class="order__title">Оформление заказа</div>
              <div class="order__form-wrapper">
                <div class="order__form-name">ФИО</div>
                <div class="form-input">
                  <input value="{$reguser.fio}" data-req="1" name="user_name" type="text" class="order__form-input input input-valid input-headline" placeholder="ФИО">
                  <div class="order_error" id="order_fio_error"></div>
                </div>
              </div>
              <div class="order__form-wrapper">
                <div class="order__form-name">Телефон</div>
                <div class="form-input">
                  <input value="{$reguser.phone}"  data-req="1"  name="user_phone" type="phone" class="order__form-input input input-valid input-phone input-headline" placeholder="Телефон">
                  <div class="order_error" id="order_phone_error"></div>
                </div>
              </div>
              <div class="order__form-wrapper">
                <div class="order__form-name">Электронная почта</div>
                <div class="form-input">
                  <input value="{$reguser.email}" data-req="1" name="user_email" type="text" class="order__form-input input input-valid input-headline" placeholder="Email">
                  <div class="order_error" id="order_email_error"></div>
                </div>
              </div>

              <div class="order__form-container">
                <div class="order__form-wrapper order__form-wrapper--margin">
                  <div class="order__form-name">ИНН</div>
                  <div class="form-input">
                    <input value="{$reguser.inn}" name="user_inn" type="number" class="order__form-input input input-valid input-headline" placeholder="ИНН">
                    <div class="order_error" id="order_inn_error"></div>
                  </div>
                </div>
                <div class="order__form-help">
                  Заполнение ИНН обязательно для выставления счета на юридическое лицо
                </div>
              </div>

              <div class="order__form-wrapper">
                <div class="order__form-name order__form-name--flexstart">Комментарий к заказу</div>
                <div class="form-input">
                  <textarea name="user_comment" placeholder="напишите свой комментарий к заказу......" class="order__form-input order__form-textarea input input-valid"></textarea>
                </div>
              </div>
              <div class="order__form-wrapper">
                  <div class="form-input">
                       <input id="add_agg-upload-1" type="file"/>
                       <span id="add_agg_filename1"></span>

                        <div style="display:none;vertical-align: middle" id="add_agg_delf1">
                            <span class="delfile">×</span>
                        </div>
                  </div>
              </div>

              <div class="order__form-wrapper" style="visibility:hidden"  id="add_agg-attach2-box">
                  {* <div class="order__form-name">
                       <label for="add_agg-upload-2" class="popup_small_form_upload">
                          <img src="/assets/icon/upload.svg" style="display: inline-block">
                          <div  style="display: inline-block">
                            <span id="add_agg_flbl2">+</span>
                          </div>
                       </label>
                  </div> *}
                  <div class="form-input">

                      <input id="add_agg-upload-2" type="file"/>
                      <span id="add_agg_filename2"></span>

                      <div style="display:none;vertical-align: middle" id="add_agg_delf2">
                         <span class="delfile">×</span>
                      </div>
                  </div>
              </div>

              {if $user.uid==0}
              <div class="order__form-wrapper-checkbox">
                  <label class="order__form-label">
                      <input name="ch1" type="checkbox" class="order__form-checkbox checkbox">
                      <span id="agree" class="order__form-text">Согласен на <a href="/info/gdpr" class="register__agree-text-link">обработку персональных данных</a></span>
                  </label>
              </div>

              <div class="order__form-wrapper-checkbox">
                <label class="order__form-label">
                  <input  name="ch2" type="checkbox" class="order__form-checkbox checkbox">
                  <span class="order__form-text">Создать Личный кабинет и сохранить заказ</span>
                </label>
              </div>
              {/if}
                <div class="order_error" id="order_common_error">
                </div>

                <div class="order__form-submit">
                <button type="submit" id="submitCart" class="button-default submit">Оформить</button>
              </div>
            </form>
          </div>
        </div>
      </div>
       {/if}
      {elseif $mode==2}
          <!--done-->
        <div class="complete">
            <div class="container">
                <div class="complete__text">
                    Спасибо! Ваш заказ <b>№ {$oid}</b> сформирован и отправлен нашим менеджерам.
                    Мы свяжемся с вами как можно скорее.

                    {if $reg}
                        <br><br>Также вы были зарегистрированы на нашем сайте. Логин и пароль для доступа в личный
                        кабинет отправлены вам отдельным письмом.
                    {/if}
                </div>
            </div>
        </div>
      {/if}

    </main>
    <!--FOOTER-->
    {include file='footer.tpl'}
</div>

{include file='popups.tpl'}
{include file='bottomjs.tpl'}

</body>
</html>