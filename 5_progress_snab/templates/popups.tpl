<!--POP-UP'S-->

<!--register-->
<div class="register hide" id="register_block" data-type="close">
    <div class="register__container">
        <form class="register__form form" id="regform">
            <div class="register__form-content">
                <div class="register__form-title">Регистрация</div>
                <div class="closepopup register__form-close">
                    <svg data-type="close">
                        <use xlink:href="/assets/sprite.svg#close"></use>
                    </svg> 
                </div>
                <div class="register__form-input form-input">
                    <label for="name" class="popups__label">ФИО</label>
                    <input type="text" data-req="1" id="reg_fio" class="input popup-input input-valid" placeholder="">
                </div>
                <div class="form_error" id="reg_fio_error">
                </div>
                <div class="register__form-input form-input">
                    <label for="login" class="popups__label">E-mail</label>
                    <input type="text" data-req="1" id="reg_email" class="input popup-input input-valid" placeholder="">
                </div>
                <div class="form_error" id="reg_email_error">
                </div>
                <div class="register__form-input form-input">
                    <label for="password" class="popups__label">Пароль</label>
                    <input data-req="1" id="reg_passw1" type="password" class="input popup-input input-password input-valid" placeholder="">
                    <a href="#" class="password-control"></a>
                </div>
                <div class="form_error" id="reg_passw_error1">
                </div>
                <div class="register__form-input register__form-input--password form-input">
                    <label for="password" class="popups__label">Ещё раз пароль</label>
                    <input data-req="1" id="reg_passw2" type="password" class="input popup-input input-password input-valid" placeholder="">
                    <a href="#" class="password-control"></a>
                </div>
                <div class="form_error" id="reg_passw_error2">
                </div>
                <div class="register__form-nowrap">
                    <label class="order__form-label">
                        <input name="ch1" type="checkbox" class="order__form-checkbox checkbox">
                        <span id="agree" class="order__form-text">Согласен на <a href="/info/gdpr" class="register__agree-text-link">обработку персональных данных</a></span>
                    </label>
                </div>
                <div class="form_error" id="reg_agree_error">
                </div>

                <div class="register__form-nowrap">
                    <div class="register__form-button">
                        <button class="button-default submit button-default--width register-after__trigger" id="register_btn">Зарегистрироваться</button>
                    </div>
                    <div class="register__change">
                        <div class="cs_auth_btn register__change-trigger login-trigger" data-type="close">Я уже зарегистрирован</div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

<!--login-->
<div class="register login hide" id="login_block" data-type="close">
    <div class="register__container register__container-login">
        <form id="authform" class="register__form form">
            <div class="register__form-content">
                <div class="register__form-title">Вход</div>
                <div class="closepopup register__form-close register__form-close-login">
                    <svg data-type="close">
                        <use xlink:href="/assets/sprite.svg#close"></use>
                    </svg> 
                </div>
                <div class="register__form-input form-input">
                    <label for="login" class="popups__label">Логин или e-mail</label>
                    <input  data-req="1" id="auth_login" type="text" class="input popup-input input-valid" placeholder="">
                </div>
                <div class="form_error" id="auth_login_error">
                </div>
                <div id="auth_passw_f" class="register__form-input form-input">
                    <label for="password" class="popups__label">Пароль</label>
                    <input  data-req="1" id="auth_passw" type="password" class="input popup-input input-password input-valid" placeholder="">
                    <a href="#" class="password-control"></a>
                </div>
                <div class="form_error" id="auth_passw_error">
                </div>
                <div class="register__form-wrap-between">
                   <div  id="rmb_lbl" class="order__form-wrapper-checkbox"  tab-index="0">
                        <label class="order__form-label">
                            <input name="ch1" type="checkbox" data-checked="1"  checked="true" class="order__form-checkbox checkbox">
                            <span class="register__form-text">Запомнить меня</span>
                        </label>
                    </div>
                    <div class="cs_remind_btn register__form-forgot">Напомнить пароль</div>
                </div>
                <div class="register__form-nowrap">
                    <div class="register__form-button">
                        <button id="auth_btn" class="button-default button-default--width submit" id="authorization">Войти</button>
                    </div>
                    <div class="register__change register__change-login">
                        <div class="cs_reg_btn register__change-trigger login-trigger"  data-type="close">Зарегистрироваться</div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

<!--remind-->

<div class="register login remind hide" id="remind_block" data-type="close">
    <div class="register__container register__container-remind">
        <form class="register__form form"  id="remindForm">
            <div class="register__form-content">
                <div class="register__form-title">Восстановление пароля</div>
                <div class="closepopup register__form-close register__form-close-login">
                    <svg data-type="close">
                        <use xlink:href="/assets/sprite.svg#close"></use>
                    </svg> 
                </div>
                <div class="register__form-input form-input">
                    <label for="login" class="popups__label">Логин или e-mail</label>
                    <input  data-req="1" id="remind_login" type="text" class="input popup-input input-valid" placeholder="">
                </div>

                <div class="form_error" id="remind_error"></div>

                <div class="register__form-nowrap">
                    <div class="register__form-button register__form-button--remind">
                        <button id="remind_btn" class="button-default button-default--width submit">Восстановить пароль</button>
                    </div>
                    <div class="register__form-wrap" style="min-height: 30px">
                        <div id="remind_result_message"></div>
                    </div>
                    <div class="register__change register__change-login  register__change-login--remind">
                        <div class="cs_auth_btn register__change-trigger login-trigger" data-type="close">Войти</div>
                    </div>
                    <div class="register__change register__change-login">
                        <div class="cs_reg_btn register__change-trigger login-trigger" data-type="close">Зарегистрироваться</div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

<!--after-->

<div id="afterreg_block" class="register-after hide" data-type="close">
    <div class="register-after__container" data-type="close">
        <div id="reg_after_content" class="register-after__content">
            <div class="register-after__text">Регистрация прошла успешно!<br> Приятных покупок.</div>
            <div class="closepopup register__form-close  register-after__close" >
                <svg data-type="close">
                    <use xlink:href="/assets/sprite.svg#close"></use>
                </svg> 
            </div>
        </div>
    </div>
</div>

<div class="fast-order login hide" id="fast_order_form">
    <div class="fast-order__content">
        <div class="fast-order__close popcl">
            <img src="/assets/icon/close.svg" alt="">
        </div>
        <form action="" class="order__form fast-order__form form">
            <div class="order__title fast-order__title ">Оформить заказ</div>
            <div class="fast-order__subtitle">Заполнение формы займет не более 1 минуты.</div>
            <div class="order__form-wrapper">
                <div class="order__form-name">ФИО:<sup class="input-error-text">*</sup></div>
                <div class="form-input">
                    <input data-req="1" name="fast_user_name" type="text" class="order__form-input input-orange input input-valid" placeholder="ФИО">
                </div>
            </div>
            <div class="order__form-wrapper">
                <div class="order__form-name">Телефон:<sup class="input-error-text">*</sup></div>
                <div class="form-input">
                    <input data-req="1" type="phone"  name="fast_user_phone" class="order__form-input input input-orange input-valid input-phone" placeholder="+7(987) 654-32-10">
                </div>
            </div>
            <div class="order__form-wrapper">
                <div class="order__form-name">E-mail:<sup class="input-error-text">*</sup></div>
                <div class="form-input">
                    <input data-req="1" type="text"  name="fast_user_email" class="order__form-input input input-orange input-valid" placeholder="mail@yandex.ru">
                </div>
            </div>
            <div class="order__form-wrapper">
                <div class="order__form-name order__form-name--flexstart">Комментарий к заказу:</div>
                <div class="form-input">
                    <textarea  name="fast_user_comment"  class="order__form-input input-orange order__form-textarea input input-valid" placeholder=""></textarea>
                </div>
            </div>
            <!--
            <div class="requisites__upload-file requisites__upload-file--price">
                <input type="file" id="file_btn">
                <label for="file_btn">Прикрепить файл
                    <svg>
                        <use xlink:href="/assets/sprite.svg#file"></use>
                    </svg>
                </label>
            </div>
            -->

            <div class="order__form-wrapper">
                <div class="order__form-name">
                    <label for="add_agg-upload-1" class="popup_small_form_upload">
                        <img src="/assets/icon/upload.svg" style="display: inline-block">
                        <div  style="display: inline-block">
                            <span id="add_agg_flbl1">Прикрепить файл</span>
                        </div>
                    </label>
                </div>

                <div class="form-input fasto">
                    <input id="add_agg-upload-1" type="file"/>
                    <span id="add_agg_filename1"></span>

                    <div style="display:none;vertical-align: middle" id="add_agg_delf1">
                        <span class="delfile">×</span>
                    </div>
                </div>
            </div>

            <div class="order__form-wrapper" style="visibility:hidden"  id="add_agg-attach2-box">
                <div class="order__form-name">
                    <label for="add_agg-upload-2" class="popup_small_form_upload">
                        <img src="/assets/icon/upload.svg" style="display: inline-block">
                        <div  style="display: inline-block">
                            <span id="add_agg_flbl2">+</span>
                        </div>
                    </label>
                </div>
                <div class="form-input fasto">

                    <input id="add_agg-upload-2" type="file"/>
                    <span id="add_agg_filename2"></span>

                    <div style="display:none;vertical-align: middle" id="add_agg_delf2">
                        <span class="delfile">×</span>
                    </div>
                </div>
            </div>

            <div class="order__form-wrapper-checkbox">
                <label class="order__form-label">
                    <input name="ch1" type="checkbox" class="order__form-checkbox checkbox"  checked>
                    <span id="agree" class="order__form-text">Согласен на обработку персональных данных</span>
                </label>
            </div>

            <div class="order__form-wrapper">
                <div class="order__form-name order__form-name--flexstart"  style="width: 400px !important;"><sup class="input-error-text">*</sup>Обязательные поля для заполнения</div>
            </div>

            <div class="order__form-wrapper">
                <div class="order__form-name order__form-name--flexstart" id="fast_order_msg" style="color:#F1971E; width: 400px !important;"></div>
            </div>
            <!--
            <div class="fast-order__footer">
                <div class="order__footer-text"><sup class="input-error-text">*</sup>Обязательные поля для заполнения</div>
            </div>
            -->
            <div class="fast-order__form-submit">
                <button type="submit" id="fast_order_submit" class="button-default  submit button-default--cart register-trigger">Отправить</button>
            </div>
        </form>
    </div>
</div>

{if 1==0}
<div class="fast-order hide" data-type="close"  id="fast_order_form">
    <div class="fast-order__content">
        <div class="closepopup fast-order__close">
            <img src="/assets/icon/close.svg" alt="" data-type="close">
        </div>
        <div class="fast-order__title">Быстрый заказ</div>

        <div class="fast-order__text">Представьтесь, мы вам перезвоним.</div>
        <form action="" class="fast-order__form form">
            <div class="fast-order__form-input form-input">
                <label for="email" class="popups__label">E-mail<sup class="input-error-text">*</sup></label>
                <input data-req="1" type="text"  name="fast_user_email" class="input input-valid" placeholder="">
            </div>
            <div class="fast-order__form-input form-input">
                <label for="name" class="popups__label">Ваше имя</label>
                <input name="fast_user_name" type="text" class="input input-valid" placeholder="">
            </div>
            <div class="fast-order__form-input form-input">
                <label for="phone" class="popups__label">Телефон<sup class="input-error-text">*</sup></label>
                <input data-req="1" type="phone"  name="fast_user_phone" class="input input-valid input-phone" placeholder="">
            </div>
            <div class="fast-order__form-input form-input">
                <label for="email" class="popups__label">Комментарий</label>
                <textarea  name="fast_user_comment" class="input input-valid" placeholder=""></textarea>
            </div>
            <div class="fast-order__upload-file">
                <input type="file" id="add_agg-upload-1">
                <label for="add_agg-upload-1">
                    <svg width="24" height="24">
                        <use xlink:href="/assets/sprite.svg#add-file"></use>
                    </svg>
                    Прикрепить файл
                </label>
                <div style="display: inline-block;width:170px;margin-top:-20px;">
                    <span id="add_agg_filename1" style="margin-left:10px;color:#333333;font-size:12px"></span>
                        <div style="display:none;float:right;margin-top:0px;vertical-align: middle" id="add_agg_delf1">
                            <span class="delfile">×</span>
                    </div>
                </div>
            </div>
            <div class="order__form-wrapper">
                <div class="order__form-name order__form-name--flexstart" id="fast_order_msg" style="font-weight: bold; width: 400px !important;">
                </div>
            </div>
               <div class="register__form-nowrap">
                    <div  id="rmb_lbl" class="register__switch" tab-index="0">
                        <label class="cs_switch_remember  register__switch-label">
                            <span class="register__switch-handle"></span>
                            <input name="ch1" class="register__switch-input" data-checked="1" type="checkbox" checked="true">
                        </label>
                        <div class="register__switch-title"> Я согласен на <a href="/info/gdpr"  target="_blank">обработку персональных данных</a></div>
                    </div>
                </div>
            <div class="fast-order__form-button">
                <button type="submit" id="fast_order_submit" class="button-default submit">Отправить</button>
            </div>
        </form>
    </div>
</div>
{/if}

{include file='sel_city_form.tpl'}