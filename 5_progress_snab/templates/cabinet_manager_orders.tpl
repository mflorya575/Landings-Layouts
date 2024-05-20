<!DOCTYPE html>
<html lang="ru">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=1345px, initial-scale=1.0">
    <title>Кабинет менеджера - {$sitename}</title>
    {include file='css_js_lc.tpl'}
</head>

<body>
  <div class="page" id="to-top">
    {include file="loginblock.tpl"}

    {include file='header.tpl'}
    <section class="lc-manager">
        <div class="container">
            <div class="client__orders-title">Список заказов</div>
            <div class="content-wrapper">
                <div class="sidebar-menu sidebar-menu__manager">
                  {include file='cabinet_manager_menu.tpl'}
                </div>

                <div class="client__orders">
                    <div class="client__orders-content">
                         <div class="client__orders-wrap">
                            <div class="table__choose">
                              <div class="table__choose-wrap  table__choose-wrap--active">
                                <div class="table__choose-title table__choose-title--active">Информация о клиентах</div>
                              </div>
                              <div class="table__choose-wrap table__choose-wrap--border">
                                <div class="table__choose-title">Заказы</div>
                              </div>
                            </div>
                            <div class="search__small">
                              <div class="search__small-title">Найти заказ</div>
                              <div class="search__small-content">
                                <input id="search_order_id" class="search__input search__small-input search-list" type="text"
                                  placeholder="Введите номер заказа">
                                <a href="" class="search__link search__small-link"></a>
                                <div id="search_order" class="search__small-toggle">
                                  <img src="/assets/icon/search-small.svg" alt="">
                                </div>
                              </div>
                            </div>
                          </div>

                        <div class="client__table">
                            <div class="table__headline">
                              <div class="table__text table__text-order--manager-list table__text--bold">Номер заказа</div>
                              <div class="table__text table__text-time--manager table__text--bold">Дата и время</div>
                              <div class="table__text table__text-company--manager table__text--bold">Название компании</div>
                              <div class="table__text table__text-status--manager-list table__text--bold">Статус</div>
                            </div>

                            <div id="items_list">
                            {include file='cabinet_manager_orders_list.tpl'}
                            </div>

                        </div>

                        <div class="catalog__modules-more"  {if $orders.total <= $more_cnt}style="display:none"{/if} data-clicked="0" id="manager_showmore">
                          <div class="button-more">Показать ещё {$more_cnt} записей</div>
                          <div class="catalog__modules-more-arrow"><img src="/assets/icon/arrow-down-more.svg" alt=""></div>
                        </div>
                        <div class="page-pagination">
                          <div class="page-pagination__container">
                            <ul class="page-pagination__list" id="paginator">
                                {$paginator}
                            </ul>
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
  {include file='bottomjs.tpl'}
</body>


</html>