		<div id="makeOrder" class="overlay" data-requrl="{$requrl}">
        <div class="popup popup-order">
            <span class="popup__close">
                <svg class="svg-icon icon-popup-close"><use xlink:href="#icon-popup-close"></use></svg>
            </span>

            <p class="popup__title">
                Отправка заказа
            </p>

            <p class="popup-order__address">

            </p>

            <div class="basket">
                <div class="basket__item">
                    <table>
                        <tr>
                        <td  style="vertical-align: middle">
                        <div class="basket__item-photo">
                            <img src="{if $pginfo.pic}{$pginfo.pic}{else}/assets/images/catalog/default.jpg{/if}" alt="ВВГнг 5х50">
                        </div><!--basket__item-photo-->
                        </td>
                        <td style="vertical-align: top">
                        <div class="basket__item-right">
                            <p class="basket__item-title">

                            </p>

                            <p class="basket__item-price">

                            </p>

                            <p class="basket__item-info">

                            </p>

                            <p class="basket__item-size">
                           
                            </p>

                        </div><!--basket__item-right-->
                        </td>
                        </tr>
                    </table>
                </div><!--basket__item-->

            </div><!--basket-->

            <form class="form">
                <div class="count-wrap">
                    <p class="count__title">
                        Укажите необходимое количество метров
                    </p>

                    <div class="count">
                        <span class="count__minus"></span>
                        <input type="text" id="meters_count" name="meters_count" class="count__field" value="0">
                        <span class="count__plus"></span>
                    </div><!--count-->

                </div><!--count-wrap-->

                <label class="form__label">
                    <span class="form__label-title">Ваш email *</span>
                    <input type="text" id="order_email" name="order_email" class="form__field">
                </label>

                <label class="form__label">
                    <span class="form__label-title">Контактный телефон *</span>
                    <input type="text" id="order_phone" name="order_phone" class="form__field" placeholder="+7 (">
                </label>
				
							
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
				
                <div class="add-comment">
                    <span class="add-comment__btn blue-link">Добавить комментарий</span>
                    <textarea name="order_message" id="order_message" class="form__field form__field_text"></textarea>
                </div><!--add-comment-->

                <button class="blue-btn form__btn" id="sendOrder">Отправить</button>

            </form>

            <p class="popup__info">
                Нажимая «Отправить», вы даете согласие на обработку персональных данных
            </p>

        </div><!--popup-->
        </div>
		
		<div id="msg" class="overlay" style="display:none">
        <div class="popup popup-thank" style="top:30% !important; left:0% !important;">
            <span class="popup__close">
                <svg class="svg-icon icon-popup-close"><use xlink:href="#icon-popup-close"></use></svg>
            </span>

            <svg class="svg-icon icon-thank"><use xlink:href="#icon-thank"></use></svg>
            <p class="popup-thank__title">
                
            </p>

        </div><!--popup-->
        </div>
