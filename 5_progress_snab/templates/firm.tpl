<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>{$title}</title>
    {include file='css_js.tpl'}

    <link rel="canonical" href="{$canonical}">

</head>
<body>
<section class="page-wrap"  data-requrl="{$requrl}">
	{include file='header.tpl'}

    <section class="pager">
        <div class="content">
            <a href="{$mainhost}" class="pager__link">КПС</a>
            <span class="pager__colon">
                <svg class="svg-icon icon-arrow-pager"><use xlink:href="#icon-arrow-pager"></use></svg>
            </span>
            <span class="pager__active">Компания {$firm.fullname}</span>

        </div><!--content-->

    </section><!--pager-->

    <section class="page content">
        <h1>
            {$firm.fullname}
        </h1>
		
		{if $firm.verified}
        <p class="verified tooltip-wr">
            <svg class="svg-icon icon-verified"><use xlink:href="#icon-verified"></use></svg>
            <span>проверенный поставщик</span>
            <span class="tooltip tooltip_left">
                <span class="tooltip__text">Сотрудничество с компанией безопасно</span>
            </span>
        </p>
		{/if}
		
        <div class="about spacer_top">
            <div class="col-6">
                <div class="about__products">
                    <p class="about__products-title">
                        Продукция компании представлена в разделах:
                    </p>

                    <ul class="about__products-links">
                       {foreach  from=$firm.categs  item=p}
                         <li style="display:{$p.display}" data-hide="{if $p.display=='none'}1{else}0{/if}">
                            <a href="/catalog/{$p.uri}">{$p.t}</a>
                          </li>
					   {/foreach}
                    </ul>

					{if $firm.categs|@count gt 6}
                    <button class="about__products-else">
                       <span>Показать ещё</span>
                       <svg class="svg-icon icon-arrow-else"><use xlink:href="#icon-arrow-down"></use></svg>
                    </button>
                    {/if}
                </div><!--about__products-->

                <div class="about__desc">
                    <p>
                	{$firm.description}
                    </p>
                </div><!--about__desc-->

            </div><!--col-6-->

            <div class="col-6">
                <div class="contacts">
                    <div class="contact">
                        <svg class="svg-icon icon-contact-1"><use xlink:href="#icon-contact-1"></use></svg>
                        <span class="contact__desc">{$firm.cityname}</span>
                    </div><!--contact-->

                    <div class="contact">
                        <svg class="svg-icon icon-contact-2"><use xlink:href="#icon-contact-2"></use></svg>
                        <a href="mailto:{$firm.email}" class="contact__desc">{$firm.email}</a>
                    </div><!--contact-->

                    {if $firm.phone}
                    <div class="contact">
                        <svg class="svg-icon icon-contact-3"><use xlink:href="#icon-contact-3"></use></svg>
                        <a href="#" id="firm_phone"  data-fullphone="{$firm.phone}" class="contact__desc">{$firm.phone_short}</a>
                    </div><!--contact-->
                    {/if}

                    <div class="contact">
                        <svg class="svg-icon icon-contact-4"><use xlink:href="#icon-contact-4"></use></svg>
                        <span class="contact__desc">{$firm.contact_name}</span>
                    </div><!--contact-->

                    <div class="contact">
                        <svg class="svg-icon icon-contact-5"><use xlink:href="#icon-contact-5"></use></svg>
                        <span class="contact__desc">{$stocks[0].time}</span>
                    </div><!--contact-->

                    <div class="contact">
                       <svg class="svg-icon icon-contact-6"><use xlink:href="#icon-contact-6"></use></svg>
                       <a href="{$firm.full_url}" target="_blank" rel="nofollow" target="_blank" class="contact__desc">{$firm.domain}</a>
                    </div><!--contact-->

                </div><!--contacts-->

                <div class="map">
                    <ul class="map__links">
                        <li>
                            <u>Центральный офис:</u>
                            {$firm.office}
                        </li>

                        <li>
                            <u>Склад{if $stocks|@count gt 1}ы{/if}:</u>{if $stocks|@count gt 1}<br>{/if}
                            {foreach from=$stocks  item=st}
                            {$st.adress}{if !$smarty.foreach.stocks.last}<br>{/if}
                            {/foreach}
                        </li>

                    </ul>

                    <div class="map__wrap">
                        <div id="stockMap" data-c1="{$firm.c1}" data-c2="{$firm.c2}"></div>
                    </div><!--map__wrap-->

                </div><!--map-->

            </div><!--col-6-->

        </div><!--about-->

        <div class="reviews">
            <div class="block-top spacer">
                <h2>
                    Отзывы о компании {$firm.fullname}
                </h2>

                <a href="#" class="white-black-btn reviews__set">Оставить отзыв</a>

            </div><!--block-top-->

			{if $reviews}
            <div class="reviews__list">
            	{foreach $reviews as $r}
                <div class="review">
                    <span class="review__user">{$r.fio}</span>
                    <span class="review__date">{$r.add_date}</span>

                    <p class="review__text">
                        {$r.message}
                    </p>
                </div><!--review-->
				{/foreach}
            </div><!--reviews__list-->
			{/if}
        </div><!--reviews-->

    </section><!--page-->

	{include file='footer.tpl'}
</section><!--page-wrap-->

		<div id="makeReview" class="overlay">
        <div class="popup popup-app">
            <span class="popup__close">
                <svg class="svg-icon icon-popup-close"><use xlink:href="#icon-popup-close"></use></svg>
            </span>

            <p class="popup__title">
                Отзыв о компании {$firm.fullname}
            </p>

            <p class="popup__desc">
                Отзыв пройдет модерацию, на вашу почту мы сообщим о его публикации.
            </p>

            <div class="form">
                <label class="form__label">
                    <span class="form__label-title">Ваше ФИО *</span>
                    <span class="form__label-error">Введите ФИО</span>                    
                    <input type="text" id="fio" name="fio" class="form__field">
                </label>

                <label  class="form__label">
                    <span class="form__label-title">Ваш Email *</span>
                    <span class="form__label-error">Введите корректный email</span>                    
                    <input type="text" id="review_email" name="review_email" class="form__field">
                </label>

                <label class="form__label">
                    <span class="form__label-title">Отзыв</span>
                    <span class="form__label-error">Введите сообщение</span>                    
                    <textarea name="message" id="message" class="form__field form__field_text"></textarea>
                </label>
				<div id="filesize_err" style="display:none">
				<span style="color:red">Размер файла не должен превышать 2Мб</span>
				</div>		
				<div style="display:flex">
					<div style="width:400px;">
            			<label for="order-upload-1" class="order-upload">
    		        	    <img src="/design/tpl/kps/img/promo_skrepka.png">
    		        	    <div style="width:116px;display:inline-block">
    			               <span id="flbl1">Прикрепить файл</span>
    			            </div>   
			            </label>
			            <input id="order-upload-1" type="file"/>
			            <span id="filename1" style="font-size:12px"></span>
			  	    </div>
			        <div style="display:none;padding-left:10px" id="delf1">
			            <span class="delfile">×</span>
			        </div>    
			   	</div>

				<div style="display:none"  id="attach2-box">
					<div style="width:400px;">
            			<label for="order-upload-2" class="order-upload">
    		        	    <img src="/design/tpl/kps/img/promo_skrepka.png">
    		        	    <div style="width:116px;display:inline-block">
    			               <span id="flbl2">+</span>
    			            </div>   
			            </label>
			            <input id="order-upload-2" type="file"/>
			            <span id="filename2" style="font-size:12px"></span>
			  	    </div>
			        <div style="display:none;padding-left:10px" id="delf2">
			            <span class="delfile">×</span>
			        </div>    
			   	</div>

                <button id="sendReview" class="blue-btn form__btn">Отправить</button>

            </div>

            <p class="popup__info">
                Нажимая «Отправить», вы даете согласие на обработку персональных данных
            </p>
        </div><!--popup-->
        </div>
        
		<div id="msg" class="overlay">
        <div class="popup popup-thank" style="top:30% !important; left:0% !important;">
            <span class="popup__close">
                <svg class="svg-icon icon-popup-close"><use xlink:href="#icon-popup-close"></use></svg>
            </span>

            <svg class="svg-icon icon-thank"><use xlink:href="#icon-thank"></use></svg>
            <p class="popup-thank__title">
                
            </p>

        </div><!--popup-->
        </div>
                
<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
{include file='bottomjs.tpl'}

</body>
</html>