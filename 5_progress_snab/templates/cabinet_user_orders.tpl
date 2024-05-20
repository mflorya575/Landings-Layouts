<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=1440px, initial-scale=1.0">
    <title>Личный кабинет - {$sitename}</title>
    {include file='css_js.tpl'}
</head>
<body>
<input type="password" name="fake1" style="display:none">

    <div class="page" id="to-top">

    <!--FIXED-->
    {include file="loginblock.tpl"}

   <!--HEADER-->
    <header class="header">
        {include file='header.tpl'}
    </header>

    <!--MAIN-->
        
    <section class="cabinet-client">
      <div class="container">
        <div class="client">
          <div class="lc">
            <div class="lc__wrap">
              <div class="main__title-client">
                <h1>{$title}</h1>
              </div>
              <a href="/user/logout/" class="lc__exit">Выйти из аккаунта</a>
            </div>
          </div>
          <div class="client__edit">
            <div class="client__title">Информация о клиенте</div>
            <div class="client__edit-popup">
              <div class="button-blue-edit"  id="cabinet_show_profile" data-type="open">Редактировать профиль клиента</div>
               <svg width="24" height="24">
                    <use xlink:href="/assets/sprite.svg#edit-incom"></use>
                </svg>
            </div>
          </div>
          <div class="client__table">
            <div class="table__headline">
              <div class="table__text table__text-data table__text-data--detalpage table__text--bold">ФИО</div>
              <div class="table__text table__text-fz table__text--bold">Тип</div>

              <div class="table__text table__text-company table__text-company--client table__text--bold"  id="usertype_header">
                  {if $profile.fz_ur==1}Город{elseif $profile.fz_ur==2}Название компании{/if}
              </div>
              <div class="table__text table__text-inn table__text--bold {if $profile.fz_ur==1}hide{/if}" id="inn_header">ИНН</div>
              <div class="table__text table__text-phone table__text--bold">Телефон</div>
              <div class="table__text table__text-mail table__text--bold">Почта</div>
            </div>

            <div class="table__item table__item-client">
              <div class="table__text table__text-data table__text-data--detalpage table__text--title"  id="tbl_pr_fio">{$profile.fio}</div>
              <div class="table__text table__text-fz" id="tbl_pr_fzur">{if $profile.fz_ur==1}Физлицо{elseif $profile.fz_ur==2}Компания{/if}</div>

              <div class="table__text table__text-company table__text-company--client" id="tbl_pr_firmname"  style="">
                  {if $profile.fz_ur==1}
                      <div>{$profile.city}</div>
                  {elseif $profile.fz_ur==2}
                      <div>{$profile.firm_name}</div>
                      <div class="table__text--company">{$profile.city}</div>
                  {/if}
              </div>
              <div class="table__text table__text-inn  {if $profile.fz_ur==1}hide{/if}">{$profile.inn}</div>
              <div class="table__text table__text-phone"   id="tbl_pr_phone">{$profile.phone}</div>
              <div class="table__text table__text-mail" id="tbl_pr_email">{$profile.email}</div>
            </div>
          </div>
            <div class="client__title">Заказы клиента</div>
            {if $orders.items}
            <div class="client__table">
                <div class="table__headline">
                <div class="table__text table__text-order--detalpage table__text--bold">Номер заказа</div>
                <div class="table__text table__text-time--detalpage table__text--bold">Дата и время</div>
                <div class="table__text table__text-status--detalpage table__text--bold">Статус</div>
                <div class="table__text table__text-total--detalpage table__text--bold">Сумма</div>
                <div class="client__order-repeat"></div>
                </div>
                {include file='cabinet_user_orders_list.tpl'}
            </div>
            {else}
            <div class="table__text--inactive-order">У вас нет активных заказов!</div>
            {/if}
        </div>
      </div>
    </section>
    {include file='footer.tpl'}
  </div>

    <!--profile-->
    <div id="user_edit_profile" class="profile hide">
        <div class="profile__content">
            <div class="profile__close">
                <img src="/assets/icon/close.svg" alt="">
            </div>
            <div class="profile__title">
                Редактирование профиля клиента
            </div>
            <form class="profile__form form">
                <div class="profile__wrapper">
                    <div class="profile__name">ФИО</div>
                    <div class="profile__input">
                        <input data-req="1" name="pr_fio" class="input input-valid" type="text" value="{$profile.fio}">
                    </div>
                </div>
                <div class="profile__wrapper">
                    <div class="profile__name">Тип</div>
                    <div class="custom__select sorting__price-dropdown">
                        <div class="profile_fizur custom__select-title" data-fz="{$profile.fz_ur}">{if $profile.fz_ur==1}Физическое лицо{elseif $profile.fz_ur==2}Юридическое лицо{/if}</div>
                        <div class="custom__select-content"  style="display: none">
                            <div class="profile_fizur_item custom__select-text" data-fz="1">Физическое лицо</div>
                            <div class="profile_fizur_item custom__select-text" data-fz="2">Юридическое лицо</div>
                        </div>
                    </div>
                </div>

                <div class="profile__wrapper  {if $profile.fz_ur==1}hide{/if}" id="profile-company" data-fz="2">
                    <div class="profile__name">Компания</div>
                    <div class="profile__input">
                        <input data-req="2" class="input input-valid " name="pr_firm_name" type="text" value='{$profile.firm_name}'>
                    </div>
                </div>
                <div class="profile__wrapper" id="profile-city" data-fz="1">
                    <div class="profile__name">Город</div>
                    <div class="profile__input">
                        <input data-req="2" class="input input-valid "  name="pr_city" type="text" value="{$profile.city}">
                    </div>
                </div>
                <div class="profile__wrapper {if $profile.fz_ur==1}hide{/if}" id="profile-inn" data-fz="2">
                    <div class="profile__name">ИНН</div>
                    <div class="profile__input">
                        <input data-req="2" class="input input-valid " name="pr_inn" type="number" value="{$profile.inn}">
                    </div>
                </div>
                <div class="profile__wrapper" id="profile-phone">
                    <div class="profile__name">Телефон</div>
                    <div class="profile__input">
                        <input  data-req="1" class="input input-valid  input-phone" name="pr_phone" type="phone" value="{$profile.phone}">
                    </div>
                </div>
                <div class="profile__wrapper" id="profile-mail">
                    <div class="profile__name">Почта</div>
                    <div class="profile__input">
                        <input data-req="1" class="input input-valid " type="text" value="{$profile.email}"  name="pr_email">
                    </div>
                </div>
                <div class="profile__subtitle">
                    Изменить пароль
                </div>
                <div class="profile__wrapper">
                    <div class="profile__name--password">Изменить пароль</div>
                    <div class="profile__input">
                        <input class="input input-valid " name="new_passw1" type="password" value="">
                    </div>
                </div>
                <div class="profile__wrapper">
                    <div class="profile__name--password-repeat">Повторите новый пароль</div>
                    <div class="profile__input">
                        <input class="input input-valid " name="new_passw2" type="password" value="">
                    </div>
                </div>

                <div id="profile_msg" style="font-weight: bold;margin-bottom:10px;min-height:20px"></div>

                <div class="profile__submit">
                    <button class="button-default submit"  id="pr_save" type="submit">Сохранить</button>
                </div>
            </form>
        </div>
    </div>

    {include file='popups.tpl'}
    {include file='bottomjs.tpl'}
</body>

</html>