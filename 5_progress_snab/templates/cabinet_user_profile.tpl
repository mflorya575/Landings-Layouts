<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=1170px, initial-scale=1.0">
    <title>Профиль - {$sitename}</title>
    {include file='css_js.tpl'}
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

      <main class="main">
        <div class="container">
          <div class="storage_content-wrapper">
            <div class="sidebar-menu">
              {include file='user_cabinet_menu.tpl'}
            </div>
             <div class="profile_content-wrapper">
              <form action="" class="form profile_form" id="profile_form">
                  <div class="requisites">
                      <div class="requisites__title">Профиль</div>
                      <div class="requisites__form-wrapper">
                          <div class="requisites__form-name">ФИО<sup
                                      class="input-error-text">*</sup></div>
                          <div class="form-input">
                              <input type="text" data-req="1" class="order__form-input input-orange input input-valid" name="pr_fio"
                                     value='{$uprofile.fio}'>
                          </div>
                      </div>
                      <div class="requisites__form-wrapper">
                          <div class="requisites__form-name">Email<sup
                                      class="input-error-text">*</sup></div>
                          <div class="form-input">
                              <input type="text" data-req="1"
                                     class="order__form-input order__form-input--width input-orange input input-valid"  name="pr_email"
                                     value='{$uprofile.email}'>
                          </div>
                      </div>
                      <div class="requisites__form-wrapper">
                          <div class="requisites__form-name">Телефон<sup
                                      class="input-error-text">*</sup></div>
                          <div class="form-input">
                              <input type="text" data-req="1"
                                     class="order__form-input order__form-input--width input-orange input input-valid"  name="pr_phone"
                                     value='{$uprofile.phone}'>
                          </div>
                      </div>

                      <div class="requisites__form-wrapper">
                          <div class="requisites__form-name">ИНН организации<sup
                                      class="input-error-text"></sup></div>
                          <div class="form-input">
                              <input type="text"
                                     class="order__form-input order__form-input--width input-orange input input-valid"  name="pr_inn"
                                     value='{$uprofile.inn}'>
                          </div>
                      </div>


                      <div class="requisites__form-wrapper">
                          <div class="requisites__form-name">Название организации<sup
                                      class="input-error-text"></sup></div>
                          <div class="form-input">
                              <input type="text"
                                     class="order__form-input order__form-input--width input-orange input input-valid"  name="pr_firm_name"
                                     value='{$uprofile.firm_name}'>
                          </div>
                      </div>
                      <div class="requisites__form-wrapper">
                          <div class="requisites__form-name">Город<sup
                                      class="input-error-text">*</sup></div>
                          <div class="form-input">
                              <input type="text"
                                     class="order__form-input order__form-input--width input-orange input input-valid"  name="pr_city"
                                     value='{$uprofile.city}'>
                          </div>
                      </div>
                      <div class="requisites__form-wrapper">
                          <div class="requisites__form-name">Почтовый индекс<sup
                                      class="input-error-text"></sup></div>
                          <div class="form-input">
                              <input type="text"
                                     class="order__form-input order__form-input--width input-orange input input-valid"  name="pr_postal_code"
                                     value='{$uprofile.postal_code}'>
                          </div>
                      </div>
                      <div class="requisites__form-wrapper">
                          <div class="requisites__form-name">Адрес<sup
                                      class="input-error-text"></sup></div>
                          <div class="form-input">
                              <input type="text"
                                     class="order__form-input order__form-input--width input-orange input input-valid"  name="pr_address"
                                     value='{$uprofile.address}'>
                          </div>
                      </div>
                      <div id="profile_msg" style="font-weight: bold;margin-bottom:10px;"></div>
                      <div class="button-save submit" id="pr_save">Сохранить</div>

                  </div>
              </form>

              <form action="" class="form profile_form" id="changepassw_form">
                  <div class="requisites">
                      <div class="requisites__title">Смена пароля</div>
                      <div class="requisites__form-wrapper">
                          <div class="requisites__form-name">Текущий пароль<sup class="input-error-text">*</sup></div>
                          <div class="form-input">
                              <input type="password" data-req="1" class="order__form-input input-orange input input-valid" name="old_passw"
                                     value=''>
                          </div>
                      </div>
                      <div class="requisites__form-wrapper">
                          <div class="requisites__form-name">Новый пароль<sup
                                      class="input-error-text">*</sup></div>
                          <div class="form-input">
                              <input type="password" data-req="1"
                                     class="order__form-input order__form-input--width input-orange input input-valid"  name="new_passw1"
                                     value=''>
                          </div>
                      </div>
                      <div class="requisites__form-wrapper">
                          <div class="requisites__form-name">Повторите пароль<sup
                                      class="input-error-text">*</sup></div>
                          <div class="form-input">
                              <input type="password" data-req="1"
                                     class="order__form-input order__form-input--width input-orange input input-valid"  name="new_passw2"
                                     value=''>
                          </div>
                      </div>

                      <div id="change_passw_msg" style="font-weight: bold;height:20px; margin-bottom:10px;"></div>
                      <div class="button-save submit" id="change_passw">Сменить пароль</div>

                  </div>
              </form>
             </div>
      </div>
          </div>
        </div>
      </main>

    {include file='footer.tpl'}
  </div>
    {include file='popups.tpl'}
    {include file='bottomjs.tpl'}
</body>

</html>