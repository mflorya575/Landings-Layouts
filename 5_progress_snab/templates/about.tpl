<!DOCTYPE html>
<html lang="ru">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>О компании "{$company.name}"</title>
  {include file='css_js.tpl'}
</head>

<body>
  <div class="page" id="to-top">
      {include file="loginblock.tpl"}
      <div class="to-top">
        <span>
            <img class="opener" id="to-top" src="/assets/icon/to-top.svg" alt="">
        </span>
      </div>

      <!--HEADER-->
      <header class="header">
          {include file='header.tpl'}
      </header>

    <!--MAIN-->
    <main class="main">
      <div class="about">
        <div class="container">
          <div class="about__desc">
            <div class="about__desc-wrap about__desc-wrap-main">
              <div class="about__desc-title">Мы молодые, предприимчивые и ценим качество, поэтому мы объединились в компанию «ПрогрессСнаб Электро»</div>
              <div class="about__desc-connect">
                <span class="about__desc-connect-text">Связаться</span>
                <a href="mailto:Progresssnab-krk@mail.ru" class="about__desc-connect-mail">Progresssnab-krk@mail.ru</a>
              </div>
            </div>
            <div class="about__desc-wrap">
              <p class="about__desc-text">
                Наш опыт и желание предложить покупателям лучшее,
                что есть на рынке электротехнической продукции, сподвигли к запуску собственного сайта.
                И вот уже более 2 лет компания «ПрогрессСнаб Электро» является надежным поставщиком
                электротехнической продукции от ведущих отечественных и зарубежных производителей.
              </p>
              <p class="about__desc-text">
                Мы готовы предложить полный сервис по комплектации электротехническими материалами
                объектов любой сложности и для любых нужд. Работаем как с организациями, так и с
                частными лицами. Стараемся по максимуму изучить потребности наших заказчиков,
                чтобы удовлетворять их на все 100%. Обладаем большим опытом работы со строительными,
                монтажными и проектными компаниями, а также дизайнерами и архитекторами, поэтому можем
                предложить особые условия сотрудничества.
              </p>
            </div>
          </div>
          <div class="about__trust">
            <div class="about__trust-content">
              <div class="about__trust-wrap">
                <div class="about__trust-title">Почему вы можете нам доверять?</div>
                <div class="about__trust-subtitle">Наше отличие в том, что мы стремимся к комплексному подходу в поставках. <br>На нашем сайте вы можете заказать все необходимое для электротехнического оснащения дома, офиса или любого другого объекта.</div>
              </div>
              <div class="about__trust-connect">
                <span>По всем возникшим вопросам звоните по телефону</span>
                <a href="tel:{$contact_phone}" class="about__trust-phone">{$contact_phone}</a>
              </div>
            </div>
          </div>
          <div class="about__advantage">
            <div class="about__advantage-item">
              <div class="about__advantage-image"><img src="/assets/icon/about-advantage-1.svg"/></div>
              <div class="about__advantage-title">Гибкая ценовая политика</div>
              <div class="about__advantage-text">Сотрудничаем с поставщиками и производителями без посредников, поэтому реализуем электромонтажную продукцию по честной стоимости.</div>
            </div>
            <div class="about__advantage-item">
              <div class="about__advantage-image"><img src="/assets/icon/about-advantage-2.svg"/></div>
              <div class="about__advantage-title">Компетентные специалисты</div>
              <div class="about__advantage-text">Компания «ПрогрессСнаб Электро» состоит исключительно из профессионалов своего дела. Предоставляем консультации по всем вопросам.</div>
            </div>
            <div class="about__advantage-item">
              <div class="about__advantage-image"><img src="/assets/icon/about-advantage-3.svg"/></div>
              <div class="about__advantage-title">Большой выбор</div>
              <div class="about__advantage-text">У нас вы можете приобрести все необходимые электромонтажные материалы. Основные ключевые позиции продукции регулярно есть на складе.</div>
            </div>
            <div class="about__advantage-item about__advantage-item--mobile">
              <div class="about__advantage-image2"><img src="/assets/images/about-advantage-4.png"/></div>
            </div>
            <div class="about__advantage-item">
              <div class="about__advantage-image"><img src="/assets/icon/about-advantage-5.svg"/></div>
              <div class="about__advantage-title">Пунктуальность</div>
              <div class="about__advantage-text">Для нас это не просто слово. Соблюдаем сроки гарантировано. Мы дорожим своей репутацией и временем наших заказчиков. Это самые ценные ресурсы.</div>
            </div>
            <div class="about__advantage-item">
              <div class="about__advantage-image"><img src="/assets/icon/about-advantage-6.svg"/></div>
              <div class="about__advantage-title">Доставка</div>
              <div class="about__advantage-text">По городу Иркутску привозим заказы бесплатно собственным транспортом. По области, а также в Бурятию и Якутию отправляем транспортной компанией.</div>
            </div>
          </div>

        </div>
      </div>
    </main>

    {include file='personal-manager.tpl'}
    {include file='footer.tpl'}

  </div>
  {include file='popups.tpl'}
  {include file='bottomjs.tpl'}
</body>

</html>