<!DOCTYPE html>
<html lang="ru">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ООО "ПрогрессСнаб"</title>
  {include file='css_js.tpl'}

  <link rel="stylesheet" href="/assets/css/swiper-bundle.css" />
  <meta name="yandex-verification" content="d285d7033654bc17" />
</head>

<body>
  <div class="page" id="to-top">
    {include file="loginblock.tpl"}

    {include file='header.tpl'}

    <section class="prime">
      <div class="big-container">
        <div class="prime-container">
          <div class="swiper-wrapper">

            {foreach $slides as $slide}
                {$slide}
            {/foreach}

          </div>
          <div class="container">
            <div class="swiper-pagination"></div>
          </div> 
        </div>
      </div>
    </section>

    <section class="calculator">
      <div class="container">
        <div class="calculator__title">Калькулятор веса кабеля</div>
        <div class="calculator__content">
          <form class="calculator__wrap"  id="calculatorForm">
            <div class="calculator__search">
              <input class="input calculator__search-input" data-innercode="" id="calc_mr_name" type="text" placeholder="Введите маркоразмер">
            </div>
            <div class="form_error" id="calculator_error"></div>
            <div class="calculator__number">
              <input class="input calculator__number-input" id="calc_mr_len" type="number" placeholder="Количество, м">
            </div>
            <div class="form_error" id="calculator_error"></div>
            <div class="calculator__dropdown">
              <div class="calculator__dropdown-backdrop hide"></div>
              <div class="calculator__dropdown-wrapper"> 
                <div class="calculator__dropdown-title" data-ob="0" data-w="0">№ барабана</div>
                <div class="calculator__dropdown-arrow">
                  <img src="/assets/icon/drop-arrow.svg"/>
                </div>
              </div>
              <div class="calculator__dropdown-content hide">
                <div data-w="0" data-ob="0,08" class="calculator__dropdown-text">
                  <span>В бухте </span>
                  <img src="/assets/icon/hover-arrow.svg"/>
                </div>
                <div data-w="43" data-ob="0,21" class="calculator__dropdown-text">
                  <span>8</span>
                  <img src="/assets/icon/hover-arrow.svg"/>
                </div>
                <div  data-w="51" data-ob="0,26" class="calculator__dropdown-text">
                  <span>8a</span>
                  <img src="/assets/icon/hover-arrow.svg"/>
                </div>
                <div  data-w="53" data-ob="0,35" class="calculator__dropdown-text">
                  <span>8б</span>
                  <img src="/assets/icon/hover-arrow.svg"/>
                </div>
                <div  data-w="56" data-ob="0,5" class="calculator__dropdown-text">
                  <span>10</span>
                  <img src="/assets/icon/hover-arrow.svg"/>
                </div>
                <div  data-w="132" data-ob="0,74" class="calculator__dropdown-text">
                  <span>12</span>
                  <img src="/assets/icon/hover-arrow.svg"/>
                </div>
                <div  data-w="151" data-ob="1,06" class="calculator__dropdown-text">
                  <span>12а</span>
                  <img src="/assets/icon/hover-arrow.svg"/>
                </div>
                <div  data-w="217" data-ob="1,37" class="calculator__dropdown-text">
                  <span>14</span>
                  <img src="/assets/icon/hover-arrow.svg"/>
                </div>
                <div  data-w="320" data-ob="1,53" class="calculator__dropdown-text">
                  <span>16а</span>
                  <img src="/assets/icon/hover-arrow.svg"/>
                </div>
                <div  data-w="367" data-ob="2,17" class="calculator__dropdown-text">
                  <span>17</span>
                  <img src="/assets/icon/hover-arrow.svg"/>
                </div>
                <div  data-w="535" data-ob="2,92" class="calculator__dropdown-text">
                  <span>18</span>
                  <img src="/assets/icon/hover-arrow.svg"/>
                </div>
                <div  data-w="763" data-ob="4" class="calculator__dropdown-text">
                  <span>20</span>
                  <img src="/assets/icon/hover-arrow.svg"/>
                </div>
                <div  data-w="965" data-ob="4,84" class="calculator__dropdown-text">
                  <span>22</span>
                  <img src="/assets/icon/hover-arrow.svg"/>
                </div>
              </div>
            </div>
            <div class="calculator__info">
              <div class="calculator__info-text">Вес 1 метра: <span data-w1km="0" id="cable_ves">0</span> кг</div>
              <div class="calculator__info-text">Объем: <span id="cable_vol">0</span> м<sup>3</sup></div>
            </div>
            <div class="calculator__weight">
              <div class="calculator__weight-title">Вес:</div>
              <div class="calculator__weight-text"><span id="total_ves">0</span> кг</div>
            </div>
            <div class="calculator__button">
              <div class="calculator__button-plus">
                  <svg>
                      <use xlink:href="/assets/sprite.svg#add-plus"></use>
                  </svg> 
              </div>
              <button id="calculator_btn" class="calculator__btn submit">Добавить в расчёт</button>
            </div>
          </form>
          <div class="calculator__table">
            <div id="calculator_cable_list">
            </div>
            <!--
            <div class="calculator__table__item">
              <div class="calculator__table-text-wrap calculator__table-text-name">
                <div class="calculator__table-text-title"><a href="">КВВГЭнг-FRLS 10х0,75</a></div>
                <div class="calculator__table-text-sub">Вес 1 км: <span> 445 кг</span></div>
              </div>
              <div class="calculator__table-text-wrap calculator__table-text-number">
                <div class="calculator__table-text">23434 м</div>
                <div class="calculator__table-text-sub">10429 кг</div>
              </div>
              <div class="calculator__table-text-wrap calculator__table-text-drop">
                <div class="calculator__table-text">Барабан №22</div>
                <div class="calculator__table-text-sub">965 кг</div>
              </div>
              <div class="calculator__table-text-wrap calculator__table-text-weight">
                <div class="calculator__table-text">11394 кг</div>
                <div class="calculator__table-text-sub">Объем: <span>0 м3</span></div>
              </div>
              <div class="calculator__table-del">
                  <svg>
                      <use xlink:href="/assets/sprite.svg#table-del"></use>
                  </svg> 
              </div>
            </div>
            -->
            <div class="calculator__sum">
              <div class="calculator__sum-commom">Общий вес: <span id="calcTotalWeight">0</span> <span>кг</span></div>
              <div class="calculator__sum-size">Объем: <span id="calcTotalVol">0</span> <span>м<sup>3</sup></span></div>
            </div>
          </div>

        </div>
      </div>
    </section>


    <section class="category">
      <div class="container">
        <div class="row">
          <div class="col-12 col-sm-6 col-lg-3">
            <a  href="/catalog/cable/18/19/">
            <div class="category__card">
              <div class="category__card-image">
                <img src="/assets/images/product-image-1.png" alt="">
              </div>
              <div class="category__card-name">Кабель<br> и провода</div>
            </div>
            </a>
          </div>
          <div class="col-12 col-sm-6 col-lg-3">
            <a href="/catalog/lighting/10432/">
                <div class="category__card">
                  <div class="category__card-image">
                    <img src="/assets/images/product-image-2.png" alt="">
                  </div>
                  <div class="category__card-name">Светотехника</div>
                </div>
            </a>
          </div>
          <div class="col-12 col-sm-6 col-lg-3">
            <a href="/catalog/electro/10132/10133/10134/10136/">
              <div class="category__card">
                <div class="category__card-image">
                  <img src="/assets/images/product-image-3.png" alt="">
                </div>
                <div class="category__card-name">Щитовое<br> оборудование</div>
              </div>
            </a>
          </div>
          <div class="col-12 col-sm-6 col-lg-3">
            <a href="/catalog/electro/9917/9918/9925/">
              <div class="category__card">
                <div class="category__card-image">
                    <img src="/assets/images/product-image-4.png" alt="">
                </div>
                <div class="category__card-name">Низковольтное<br> оборудование</div>
              </div>
            </a>
          </div>
          <div class="col-12 col-sm-6 col-lg-4">
            <a href="/catalog/electro/9711/9811/9819/">
              <div class="category__card">
                <div class="category__card-image">
                    <img src="/assets/images/product-image-5.png" alt="">
                </div>
                <div class="category__card-name">Кабельные муфты<br> и фурнитура</div>
              </div>
            </a>
          </div>
          <div class="col-12 col-sm-6 col-lg-4">
             <a href="/catalog/electro/9711/9712/9713/">
              <div class="category__card">
              <div class="category__card-image">
                <img src="/assets/images/product-image-6.png" alt="">
              </div>
              <div class="category__card-name">Распределительные<br> системы</div>
             </a>
            </div>
          </div>
          <div class="col-12 col-sm-6 col-lg-4">
            <div class="category__card tooltip-wr" >
              <div class="category__card-image">
                <img src="/assets/images/product-image-7.png" alt="">
              </div>
              <div class="category__card-name">Опоры<br> освещения</div>
                <span class="tooltip  tooltip_left menu">
                   Раздел находится в разработке
                </span>
            </div>
          </div>
        </div>
      </div>
    </section>


     {include file='personal-manager.tpl'}
     {include file='footer.tpl'}
    </div>

  {include file='popups.tpl'}
  {include file='bottomjs.tpl'}
</body>
</html>


