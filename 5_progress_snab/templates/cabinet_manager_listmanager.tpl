<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=1440px, initial-scale=1.0">
    <title>Список менеджеров - {$sitename}</title>
    {include file='manager_css_js.tpl'}
</head>

<body>
<div class="page" id="to-top">
    <!--FIXED-->
    {include file="loginblock.tpl"}

    <!--HEADER-->
    <header class="header">
        {include file='header.tpl'}
    </header>

    <!--MAIN-->

    <section class="lc-manager">
        <div class="container">
           <div class="settings__title">Настройки аккаунта</div>
            <div class="content-wrapper">
                <div class="sidebar-menu sidebar-menu__manager">
                    {include file='cabinet_manager_menu.tpl'}
                </div>
                <div class="settings-main">
                    <div class="settings" data-uid="{$uprofile.id}">
                        <div class="details__info">Имя пользователя: <span class="details__info-text">{$uprofile.fio}</span> [{if $uprofile.status==2}Менеджер{elseif $uprofile.status==3}Администратор{/if}]</div>
                        <div class="details__info">Логин/e-mail: <span class="details__info-text">{$uprofile.email}</span></div>
                        <div class="details__info">Пароль: <span class="details__info-text settings-password">{if $uprofile.passw_chng_date_str}Изменен {$uprofile.passw_chng_date_str}{else}Не менялся{/if}</span></div>
                        <form action="" id="mgr_changepsw_form" class="change-password form hide">
                            <div class="change-password__content">
                                <div class="change-password__backdrop"></div>
                                <div class="change-password__close">
                                    <svg>
                                        <use xlink:href="/assets/sprite.svg#close"></use>
                                    </svg> 
                                </div>
                                <div class="requisites__form-wrapper">
                                    <div class="requisites__form-name requisites__form-name--password">Текущий пароль:</div>
                                    <div class="form-input">
                                        <input type="password" data-req="1" id="mgr_curpsw" value=""
                                            class="settings__input-password settings__input-password--change input input-password input-valid"
                                            placeholder=''>
                                        <a href="#" class="password-control password-control--manager"></a>
                                    </div>
                                </div>
                                <div class="requisites__form-wrapper">
                                    <div class="requisites__form-name requisites__form-name--password">Новый пароль:</div>
                                    <div class="form-input">
                                        <input type="password" data-req="1" id="mgr_newpsw1" value="" class="settings__input-password   settings__input-password--change input-password input input-valid" placeholder=''>
                                        <a href="#" class="password-control password-control--manager"></a>
                                    </div>
                                </div>

                                <div class="requisites__form-wrapper">
                                    <div class="requisites__form-name requisites__form-name--password">Повторите новый пароль:</div>
                                    <div class="form-input">
                                        <input type="password"  data-req="1" id="mgr_newpsw2" value="" class="settings__input-password  settings__input-password--change input-password input input-valid" placeholder=''>
                                        <a href="#" class="password-control password-control--manager"></a>
                                    </div>
                                </div>
                                <div class="requisites__form-wrapper">
                                    <div class="requisites__form-name" id="mgr_passwchng_msg" style="font-weight:bold"></div>
                                    <div class="change-password-button">
                                        <button type="submit" id="mgr_changepassw_btn" class="button-default submit">Изменить пароль</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <div class="settings__content">
                            <div class="settings__content-title">Список менеджеров</div>
                            <div class="settings__content-table">
                                {foreach $managers_list as $mgr}
                                <div class="settings__content-item" data-uid="{$mgr.id}">
                                    <div class="settings__content-text settings__content-text--name">{$mgr.fio}</div>
                                    <div class="settings__content-text settings__content-text--mail">{$mgr.email}</div>
                                    <div class="sorting__price-dropdown settings-dropdown  settings__content-text--person custom__select">
                                        <div class="{if $uprofile.status>=3}mgrtype{/if} custom__select-title settings__content-text" {if $uprofile.status}{/if} data-status="{$mgr.status<3}">{if $mgr.status==2}Менеджер{elseif $mgr.status==3}Администратор{/if}</div>
                                        {if $uprofile.status>=3}
                                        <div class="custom__select-content hide">
                                            <div class="mgrtype_item custom__select-text {if $mgr.status==2}hide{/if}" data-type="2">Менеджер</div>
                                            <div class="mgrtype_item custom__select-text {if $mgr.status==3}hide{/if}" data-type="3">Администратор</div>
                                        </div>
                                        {/if}
                                    </div>
                                    <div class="sorting__price-dropdown settings-dropdown custom__select">
                                        <div class="{if $uprofile.status>=3}mgractive{/if} custom__select-title  {if $mgr.active==1}custom__select-title--green{elseif $mgr.active==0}custom__select-text--grey{/if}" {if $uprofile.status<3}{/if} data-active="{$mgr.active}">{if $mgr.active==1}Активен{elseif $mgr.active==0}Неактивен{/if}</div>
                                        {if $uprofile.status>=3}
                                        <div class="custom__select-content hide">
                                            <div class="mgractive_item custom__select-text custom__select-text--grey {if $mgr.active==0}hide{/if}" data-active="0">Неактивен</div>
                                            <div class="mgractive_item custom__select-text custom__select-text--green {if $mgr.active==1}hide{/if}"  data-active="1">Активен</div>
                                        </div>
                                        {/if}
                                    </div>
                                    {if $uprofile.status>=3}
                                    <div class="mgr_delete settings__content-delete">
                                        <svg>
                                            <use xlink:href="/assets/sprite.svg#cart-delete"></use>
                                        </svg>
                                    </div>
                                    {/if}
                                </div>
                                {/foreach}
                            </div>
                            {if $uprofile.status>=3}
                            <div id="add_manager_btn" class="settings__btn-add settings__content-text--green">Добавить сотрудника
                                <svg>
                                    <use xlink:href="/assets/sprite.svg#plus"></use>
                                </svg>
                            </div>
                            {/if}
                            <div class="mgr_addform settings__new form hide">
                                <div class="settings__content-title">Новый пользователь</div>
                                <div class="requisites__form-wrapper">
                                    <div class="requisites__form-name requisites__form-name--settings">ФИО пользователя:</div>
                                    <div class="form-input">
                                        <input type="text" id="add_mgr_fio" data-req="1"
                                            class="settings__input-name input input-valid"
                                            placeholder=''>
                                    </div>
                                </div>
                                <div class="requisites__form-wrapper">
                                    <div class="requisites__form-name requisites__form-name--settings">e-mail:</div>
                                    <div class="form-input">
                                        <input type="text" id="add_mgr_email"  data-req="1"
                                            class="settings__input-mail input input-valid"
                                            placeholder=''>
                                    </div>
                                </div>
                                <div class="requisites__form-wrapper">
                                    <div class="requisites__form-name requisites__form-name--settings">Пароль:</div>
                                    <div class="form-input">
                                        <input type="password"  id="add_mgr_newpassw1"  data-req="1"
                                            class="settings__input-password input input-valid"
                                            placeholder=''>
                                    </div>
                                </div>
                                <div class="requisites__form-wrapper">
                                    <div class="requisites__form-name requisites__form-name--settings">Повторите пароль:</div>
                                    <div class="form-input">
                                        <input  type="password"  id="add_mgr_newpassw2"  data-req="1"
                                            class="settings__input-password input input-valid"
                                            placeholder=''>
                                    </div>
                                </div>
                                <div id="addmgr_msg" class="requisites__form-wrapper" style="font-weight:bold; color:#CE0606;">
                                </div>
                                <div class="buttons-settings">
                                    <div class="settings__submit">
                                        <button id="submit_new_mgr" class="button-default submit" type="submit">Сохранить аккаунт сотрудника</button>
                                    </div>
                                    <div  id="cancel_new_mgr" class="button-settings-cancel">Отменить</div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

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