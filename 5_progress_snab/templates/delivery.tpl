<!DOCTYPE html>
<html lang="ru">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Доставка "{$company.name}"</title>
  {include file='css_js.tpl'}
    
</head>

<body>
  <div class="page" id="to-top">
    {include file="loginblock.tpl"}
    {include file='header.tpl'}

    <section class="delivery">
      <div class="container">
        <div class="delivery-block">
            <h4 class="delivery__title">Доставка по России любым удобным способом</h4>
            <div class="delivery__content">
                <div class="delivery-method">
                  <div class="delivery-method_item">
                    <img src="/assets/images/auto.png">
                    <h4 class="delivery-method_item__title">Авто</h4>
                    <p class="delivery-method_item__desc">Если вы не торопитесь<br> и везём габарит/негабарит</p>
                  </div>
                  <div class="delivery-method_item">
                    <img src="/assets/images/train.png">
                    <h4 class="delivery-method_item__title">ЖД</h4>
                    <p class="delivery-method_item__desc">Если очень большой объём</p>
                  </div>
                  <div class="delivery-method_item">
                    <img src="/assets/images/ship.png">
                    <h4 class="delivery-method_item__title">Морем</h4>
                    <p class="delivery-method_item__desc">Если вы на севере<br> или портовый город</p>
                  </div>
                  <div class="delivery-method_item">
                    <img src="/assets/images/plane.png">
                    <h4 class="delivery-method_item__title">Авиа</h4>
                    <p class="delivery-method_item__desc">Если цените время</p>
                  </div>
                </div>
            </div>
        </div>

        <div class="delivery-city">
          <h4 class="delivery-city__title">Доставка по г. Иркутску</h4>
          <div class="delivery-city-block">
            <div class="delivery-city__elem">
              <div class="delivery-city__elem-title">
                <img class="delivery-city_check" src="/assets/images/delivery_check.png">
                <h5>Доставка в пределах города:</h5>
              </div>
              <div class="delivery-city__list">
                <p>Минимальная сумма доставки: от 2 000 р.</p>
                <p> При сумме заказа от 10 000 р. для юридических лиц. </p>
                <p> При сумме заказа от 20 000 р. для физических лиц. </p>
              </div>
            </div>
            <div class="delivery-city__elem">
              <div class="delivery-city__elem-title">
                <img class="delivery-city_check" src="/assets/images/delivery_check.png">
                <h5>Доставка за пределы города:</h5>
              </div>
              <div class="delivery-city__list">
                <p>Рассчитывается индивидуально и зависит от нескольких факторов</p>
              </div>
            </div>
          </div>
        </div>

        <div class="delivery-company">
          <h4 class="delivery-company__title">Основные, проверенные и надежные транспортные компании</h4>
          <div class="delivery-company-block">
            <div class="delivery-company__item"><img src="/assets/images/Lodo_DL.png"></div>
            <div class="delivery-company__item"><img src="/assets/images/logo_pik.png"></div>
            <div class="delivery-company__item"><img src="/assets/images/logo_cdek.png"></div>
            <div class="delivery-company__item"><img src="/assets/images/logo_zanoch.png"></div>
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