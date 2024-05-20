<?php
/* Smarty version 3.1.34-dev-7, created on 2024-05-20 12:36:15
  from '/var/www/progresselektro.ru/assets/templates/contact.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_664b198f7cf680_90303613',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'bfa428685b5f7191b50b7676ce4ddbd34eaa721a' => 
    array (
      0 => '/var/www/progresselektro.ru/assets/templates/contact.tpl',
      1 => 1712640015,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:css_js.tpl' => 1,
    'file:loginblock.tpl' => 1,
    'file:header.tpl' => 1,
    'file:personal-manager.tpl' => 1,
    'file:footer.tpl' => 1,
    'file:popups.tpl' => 1,
    'file:bottomjs.tpl' => 1,
  ),
),false)) {
function content_664b198f7cf680_90303613 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="ru">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Контакты -  <?php echo $_smarty_tpl->tpl_vars['company']->value['name'];?>
</title>
  <?php $_smarty_tpl->_subTemplateRender('file:css_js.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
    
</head>

<body>
  <div class="page" id="to-top">
    <?php $_smarty_tpl->_subTemplateRender("file:loginblock.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
    <?php $_smarty_tpl->_subTemplateRender('file:header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

    <section class="contacts">
      <div class="container">
        <h4>Наши склады</h4>
        <div class="contacts__container">
          <div class="contacts__wrap">
              <div class="contacts__info">
                <div class="contacts__content">
                  <div class="contacts__info-title">Склад в г. Иркутске</div>
                  <div class="contacts__info-wrapper">
                    <div class="contacts__info-name">Телефон:</div>
                    <div class="contacts__info-text">
                      <a href="tel:+7(901)655-04-20" class="contacts__info-text--blue">+7 (901) 655-04-20</a>
                    </div>
                  </div>
                    <div class="contacts__info-wrapper">
                    <div class="contacts__info-name">Email:</div>
                    <div class="contacts__info-text"><a href="mailto:Psnab138@bk.ru" class="contacts__info-text--blue">Psnab138@bk.ru</a></div>
                  </div>
                  <div class="contacts__info-wrapper">
                    <div class="contacts__info-name">Адрес:</div>
                    <div class="contacts__info-text">ул. Красноказачья, д. 135, 2 этаж, оф. 11</div>
                  </div>
                </div>
              </div>
          </div>
          <div class="contacts__address">
            <div class="contacts__map">
              <iframe src="https://yandex.ru/map-widget/v1/?um=constructor%3A13056d38e36e9a0b0708d5cb942f50d29ec7f3d833678587742dd5aa3c5d2619&amp;source=constructor" width="863" height="323" frameborder="0"></iframe>
            </div>
          </div>
        </div>
        <div class="contacts__container">
          <div class="contacts__wrap">
              <div class="contacts__info">
                <div class="contacts__content">
                  <div class="contacts__info-title">Склад в г. Красноярске</div>
                  <div class="contacts__info-wrapper">
                    <div class="contacts__info-name">Телефон:</div>
                    <div class="contacts__info-text">
                      <a href="tel:+7 (953) 840-00-22" class="contacts__info-text--blue">+7 (953) 840-00-22</a>
                      <a href="tel:+7 (902) 919-00-22" class="contacts__info-text--blue">+7 (902) 919-00-22</a>
                      <a href="tel:+7 (902) 968-00-22" class="contacts__info-text--blue">+7 (902) 968-00-22</a>
                    </div>
                  </div>
                  <div class="contacts__info-wrapper">
                    <div class="contacts__info-name">Email:</div>
                    <div class="contacts__info-text"><a href="mailto:Progresssnab-krk@mail.ru" class="contacts__info-text--blue">Progresssnab-krk@mail.ru</a></div>
                  </div>
                  <div class="contacts__info-wrapper">
                    <div class="contacts__info-name">Адрес:</div>
                    <div class="contacts__info-text">ул. Алексеева, 6г, 1 этаж, оф. 12</div>
                  </div>
                </div>
              </div>
          </div>
          <div class="contacts__address">
            <div class="contacts__map">
              <iframe src="https://yandex.ru/map-widget/v1/?um=constructor%3A87104819104b3b1e40f2cbb6772b6af7d3d0f8236c30582e56df82692c13cc9d&amp;source=constructor" width="863" height="323" frameborder="0"></iframe>
            </div>
          </div>
        </div>
      </div>

      <div class="container">
        <h4>Магазины розничной торговли</h4>
        <div class="contacts__container">
          <div class="contacts__wrap">
              <div class="contacts__info">
                <div class="contacts__content">
                  <div class="contacts__info-title">Магазин в ТЦ Стройматериалы в г. Иркутске</div>
                  <div class="contacts__info-wrapper">
                    <div class="contacts__info-name">Телефон:</div>
                    <div class="contacts__info-text"><a href="tel:+7 (950) 089-42-29" class="contacts__info-text--blue">+7 (950) 089-42-29</a></div>
                  </div>
                    <div class="contacts__info-wrapper">
                    <div class="contacts__info-name">Email:</div>
                    <div class="contacts__info-text"><a href="mailto:Psnab138@bk.ru" class="contacts__info-text--blue">Psnab138@bk.ru</a></div>
                  </div>
                  <div class="contacts__info-wrapper">
                    <div class="contacts__info-name">Адрес:</div>
                    <div class="contacts__info-text">ул. Красноказачья, д. 135, 2 этаж, оф. 11</div>
                  </div>
                </div>
              </div>
          </div>
          <div class="contacts__address">
            <div class="contacts__map">
              <iframe src="https://yandex.ru/map-widget/v1/?um=constructor%3A13056d38e36e9a0b0708d5cb942f50d29ec7f3d833678587742dd5aa3c5d2619&amp;source=constructor" width="863" height="323" frameborder="0"></iframe>
            </div>
          </div>
        </div>
        <div class="contacts__container">
          <div class="contacts__wrap">
              <div class="contacts__info">
                <div class="contacts__content">
                  <div class="contacts__info-title">Магазин в ТЦ Первомайский в г. Красноярске</div>
                  <div class="contacts__info-wrapper">
                    <div class="contacts__info-name">Телефон:</div>
                    <div class="contacts__info-text"><a href="tel:+7 (950) 089-42-29" class="contacts__info-text--blue">+7 (950) 089-42-29</a></div>
                  </div>
                  <div class="contacts__info-wrapper">
                    <div class="contacts__info-name">Email:</div>
                    <div class="contacts__info-text"><a href="mailto:Progresssnab-krk@mail.ru" class="contacts__info-text--blue">Progresssnab-krk@mail.ru</a></div>
                  </div>
                  <div class="contacts__info-wrapper">
                    <div class="contacts__info-name">Адрес:</div>
                    <div class="contacts__info-text">ул. Алексеева, 6г, 1 этаж, оф. 12</div>
                  </div>
                </div>
              </div>
          </div>
          <div class="contacts__address">
            <div class="contacts__map">
              <iframe src="https://yandex.ru/map-widget/v1/?um=constructor%3A87104819104b3b1e40f2cbb6772b6af7d3d0f8236c30582e56df82692c13cc9d&amp;source=constructor" width="863" height="323" frameborder="0"></iframe>
            </div>
          </div>
        </div>
      </div>
    </section>

    <?php $_smarty_tpl->_subTemplateRender('file:personal-manager.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
    <?php $_smarty_tpl->_subTemplateRender('file:footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
  </div>
  <?php $_smarty_tpl->_subTemplateRender('file:popups.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
  <?php $_smarty_tpl->_subTemplateRender('file:bottomjs.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
</body>


</html><?php }
}
