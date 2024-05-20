<?php
/* Smarty version 3.1.34-dev-7, created on 2024-05-20 12:35:20
  from '/var/www/progresselektro.ru/assets/templates/sel_city_form.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_664b19580bad34_55259727',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '51e993369cb97dafa6eb2950f3a142689fd37e07' => 
    array (
      0 => '/var/www/progresselektro.ru/assets/templates/sel_city_form.tpl',
      1 => 1700044242,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_664b19580bad34_55259727 (Smarty_Internal_Template $_smarty_tpl) {
?>
<div class="choose-popup hide" id="select_city">
    <div class="choose-popup--backdrop"></div>
    <div class="choose-popup__wrap" id="chooseform">
        <div class="choose-close closepopup">
            <svg>
                <use xlink:href="/assets/sprite.svg#close"></use>
            </svg>
        </div>
        <div class="choose-popup__title">Выберите ваш город</div>
        <div class="choose-popup__cities">
            <div class="choose-popup__cities-wrap">
                                <div class="choose-popup__item" data-cityid="34" data-pekid="-463" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"spb@progresselektro.ru\"}"'>Санкт-Петербург</div>
                                <div class="choose-popup__item" data-cityid="20" data-pekid="-446" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"msk@progresselektro.ru\"}"'>Москва</div>
                                <div class="choose-popup__item" data-cityid="127" data-pekid="-584988" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"abakan@progresselektro.ru\"}"'>Абакан</div>
                                <div class="choose-popup__item" data-cityid="1" data-pekid="-112966" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"almaty@progresselektro.ru\"}"'>Алматы</div>
                                <div class="choose-popup__item" data-cityid="111" data-pekid="-485" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"arkh@progresselektro.ru\"}"'>Архангельск</div>
                                <div class="choose-popup__item" data-cityid="2" data-pekid="-501" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"barnaul@progresselektro.ru\"}"'>Барнаул</div>
                                <div class="choose-popup__item" data-cityid="60" data-pekid="-458" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"belgorod@progresselektro.ru\"}"'>Белгород</div>
                                <div class="choose-popup__item" data-cityid="65" data-pekid="-95516" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"bryansk@progresselektro.ru\"}"'>Брянск</div>
                                <div class="choose-popup__item" data-cityid="123" data-pekid="-470" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"novgorod@progresselektro.ru\"}"'>Великий Новгород</div>
                                <div class="choose-popup__item" data-cityid="77" data-pekid="-465" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"vlad@progresselektro.ru\"}"'>Владивосток</div>
                                <div class="choose-popup__item" data-cityid="3" data-pekid="-147316" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"vladimir@progresselektro.ru\"}"'>Владимир</div>
                                <div class="choose-popup__item" data-cityid="4" data-pekid="-496" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"volgograd@progresselektro.ru\"}"'>Волгоград</div>
                                <div class="choose-popup__item" data-cityid="5" data-pekid="-466" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"voronezh@progresselektro.ru\"}"'>Воронеж</div>
                                <div class="choose-popup__item" data-cityid="6" data-pekid="" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"gomel@progresselektro.ru\"}"'>Гомель</div>
                                <div class="choose-popup__item" data-cityid="7" data-pekid="-113000" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"dzerzh@progresselektro.ru\"}"'>Дзержинск</div>
                                <div class="choose-popup__item" data-cityid="8" data-pekid="-473" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"ekb@progresselektro.ru\"}"'>Екатеринбург</div>
                                <div class="choose-popup__item" data-cityid="9" data-pekid="-92885" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"ivanovo@progresselektro.ru\"}"'>Иваново</div>
                                <div class="choose-popup__item" data-cityid="10" data-pekid="-480" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"izhevsk@progresselektro.ru\"}"'>Ижевск</div>
                                <div class="choose-popup__item" data-cityid="11" data-pekid="-505" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"irkutsk@progresselektro.ru\"}"'>Иркутск</div>
                                <div class="choose-popup__item" data-cityid="12" data-pekid="-484" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"kazan@progresselektro.ru\"}"'>Казань</div>
                                <div class="choose-popup__item" data-cityid="13" data-pekid="-510" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"kalinin@progresselektro.ru\"}"'>Калининград</div>
                            </div>
            <div class="choose-popup__cities-wrap">
                                <div class="choose-popup__item" data-cityid="14" data-pekid="-134714" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"kaluga@progresselektro.ru\"}"'>Калуга</div>
                                <div class="choose-popup__item" data-cityid="15" data-pekid="-476" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"kemerovo@progresselektro.ru\"}"'>Кемерово</div>
                                <div class="choose-popup__item" data-cityid="16" data-pekid="-441" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"kirov@progresselektro.ru\"}"'>Киров</div>
                                <div class="choose-popup__item" data-cityid="17" data-pekid="-447" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"krasnodar@progresselektro.ru\"}"'>Краснодар</div>
                                <div class="choose-popup__item" data-cityid="18" data-pekid="-503" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"krk@progresselektro.ru\"}"'>Красноярск</div>
                                <div class="choose-popup__item" data-cityid="19" data-pekid="-119191" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"miass@progresselektro.ru\"}"'>Миасс</div>
                                <div class="choose-popup__item" data-cityid="234" data-pekid="102150" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"minsk@progresselektro.ru\"}"'>Минск</div>
                                <div class="choose-popup__item" data-cityid="21" data-pekid="-472" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"chelny@progresselektro.ru\"}"'>Набережные Челны</div>
                                <div class="choose-popup__item" data-cityid="421" data-pekid="-486" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"nalchik@progresselektro.ru\"}"'>Нальчик</div>
                                <div class="choose-popup__item" data-cityid="22" data-pekid="-58740" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"nn@progresselektro.ru\"}"'>Нижний Новгород</div>
                                <div class="choose-popup__item" data-cityid="23" data-pekid="-461" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"nsk@progresselektro.ru\"}"'>Новосибирск</div>
                                <div class="choose-popup__item" data-cityid="24" data-pekid="104910" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"urengoy@progresselektro.ru\"}"'>Новый Уренгой</div>
                                <div class="choose-popup__item" data-cityid="142" data-pekid="0" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"norilsk@progresselektro.ru\"}"'>Норильск</div>
                                <div class="choose-popup__item" data-cityid="119" data-pekid="-297984" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"astana@progresselektro.ru\"}"'>Нур-Султан (Астана)</div>
                                <div class="choose-popup__item" data-cityid="26" data-pekid="-509" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"omsk@progresselektro.ru\"}"'>Омск</div>
                                <div class="choose-popup__item" data-cityid="27" data-pekid="-460" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"orel@progresselektro.ru\"}"'>Орёл</div>
                                <div class="choose-popup__item" data-cityid="28" data-pekid="-451" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"penza@progresselektro.ru\"}"'>Пенза</div>
                                <div class="choose-popup__item" data-cityid="29" data-pekid="-477" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"perm@progresselektro.ru\"}"'>Пермь</div>
                                <div class="choose-popup__item" data-cityid="30" data-pekid="-147798" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"pskov@progresselektro.ru\"}"'>Псков</div>
                                <div class="choose-popup__item" data-cityid="31" data-pekid="-452" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"rnd@progresselektro.ru\"}"'>Ростов-на-Дону</div>
                                <div class="choose-popup__item" data-cityid="32" data-pekid="-109615" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"rybinsk@progresselektro.ru\"}"'>Рыбинск</div>
                            </div>
            <div class="choose-popup__cities-wrap">
                                <div class="choose-popup__item" data-cityid="33" data-pekid="-481" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"samara@progresselektro.ru\"}"'>Самара</div>
                                <div class="choose-popup__item" data-cityid="35" data-pekid="-104279" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"saransk@progresselektro.ru\"}"'>Саранск</div>
                                <div class="choose-popup__item" data-cityid="36" data-pekid="-502" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"saratov@progresselektro.ru\"}"'>Саратов</div>
                                <div class="choose-popup__item" data-cityid="37" data-pekid="-208301" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"semfir@progresselektro.ru\"}"'>Симферополь</div>
                                <div class="choose-popup__item" data-cityid="38" data-pekid="-94539" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"smolensk@progresselektro.ru\"}"'>Смоленск</div>
                                <div class="choose-popup__item" data-cityid="39" data-pekid="-456" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"stavr@progresselektro.ru\"}"'>Ставрополь</div>
                                <div class="choose-popup__item" data-cityid="40" data-pekid="-468" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"tambov@progresselektro.ru\"}"'>Тамбов</div>
                                <div class="choose-popup__item" data-cityid="41" data-pekid="-175508" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"tver@progresselektro.ru\"}"'>Тверь</div>
                                <div class="choose-popup__item" data-cityid="42" data-pekid="-475" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"tolyatti@progresselektro.ru\"}"'>Тольятти</div>
                                <div class="choose-popup__item" data-cityid="43" data-pekid="-490" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"tomsk@progresselektro.ru\"}"'>Томск</div>
                                <div class="choose-popup__item" data-cityid="44" data-pekid="-144716" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"tula@progresselektro.ru\"}"'>Тула</div>
                                <div class="choose-popup__item" data-cityid="45" data-pekid="-482" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"tumen@progresselektro.ru\"}"'>Тюмень</div>
                                <div class="choose-popup__item" data-cityid="46" data-pekid="-454" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"ufa@progresselektro.ru\"}"'>Уфа</div>
                                <div class="choose-popup__item" data-cityid="47" data-pekid="-514" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"habar@progresselektro.ru\"}"'>Хабаровск</div>
                                <div class="choose-popup__item" data-cityid="48" data-pekid="-487" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"cheb@progresselektro.ru\"}"'>Чебоксары</div>
                                <div class="choose-popup__item" data-cityid="49" data-pekid="-455" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"chelyab@progresselektro.ru\"}"'>Челябинск</div>
                                <div class="choose-popup__item" data-cityid="50" data-pekid="-488" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"cherepov@progresselektro.ru\"}"'>Череповец</div>
                                <div class="choose-popup__item" data-cityid="141" data-pekid="0" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"yakutsk@progresselektro.ru\"}"'>Якутск</div>
                                <div class="choose-popup__item" data-cityid="52" data-pekid="-483" data-contacts='"{\"phone\":\"+7 (901) 655-04-20\",\"email\":\"yaroslavl@progresselektro.ru\"}"'>Ярославль</div>
                            </div>
        </div>
        <!--
        <div class="choose-popup__subtitle">Или укажите в поле</div>
        <div class="choose-popup-search">
            <label class="form-input choose-popup-form-wrap">
                <input class="input input-valid choose-popup-form-input" type="text" placeholder="Начните вводить название">
            </label>
            <button class="choose-popup-form-button submit" type="submit">Выбрать</button>
        </div>
        <div class="choose-popup-result"></div>
        <div class="choose-popup-result-error"></div>
        -->
    </div>
</div>
<?php }
}
