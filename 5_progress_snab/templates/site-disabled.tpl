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
      <div class="about__container">
      <div class="textblock">
          <p><b style="color:red;font-size:24px">Сайт отключён</b></p>
      </div>
      </div>

    </main>

      {include file='footer.tpl'}

  </div>
  {include file='popups.tpl'}
  {include file='bottomjs.tpl'}
</body>

</html>