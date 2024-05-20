        <div class="calc__form">
            <span class="popup__close" style="margin-top:-13px !important;margin-right:-9px  !important">
               <!-- <svg class="svg-icon icon-popup-close"><use xlink:href="#icon-popup-close"></use></svg>-->
               <!--<img src="/design/tpl/kps/img/closepopup.png" class="closepopup" style="margin-left:338px">-->
                <span class="closepopup">×</span>
            </span>

            <label class="form__label">
                <input type="text" id="calc_cablename" name="calc_cablename" class="form__field" value="АВВГнг 3х35" disabled>
            </label>

            <label class="form__label">
                <span class="form__label-mark">м</span>
                <input type="text" name="calc_count" id="calc_count" class="form__field" value="" placeholder="Количество">
            </label>

            <div class="select" id="calc_baraban">
            
                <div class="calc__field" data-value="-1" data-w="0" data-ob="0">№ барабана</div>
                <!--<div class="calc__field" data-value="8" data-w="43" data-ob="0,21">8</div>-->
                <svg class="svg-icon icon-arrow-select2"><use xlink:href="#icon-arrow-select"></use></svg>

                <div class="select__list" style="width:286px !important;margin-left:-1px !important;">
					<p class="select__item" data-value="0" data-w="0" data-ob="0,08">В бухте</p>
					<p class="select__item" data-value="8" data-w="43" data-ob="0,21">8</p>
					<p class="select__item" data-value="8а" data-w="51" data-ob="0,26">8а</p>
					<p class="select__item" data-value="8б" data-w="53" data-ob="0,35">8б</p>
					<p class="select__item" data-value="10" data-w="56" data-ob="0,5">10</p>
					<p class="select__item" data-value="12" data-w="132" data-ob="0,74">12</p>
					<p class="select__item" data-value="12а" data-w="151" data-ob="1,06">12а</p>
					<p class="select__item" data-value="14" data-w="217" data-ob="1,37">14</p>
					<p class="select__item" data-value="16а" data-w="320" data-ob="1,53">16а</p>
					<p class="select__item" data-value="17" data-w="367" data-ob="2,17">17</p>
					<p class="select__item" data-value="18" data-w="535" data-ob="2,92">18</p>
					<p class="select__item" data-value="20" data-w="763" data-ob="4">20</p>
					<p class="select__item" data-value="22" data-w="965" data-ob="4,84">22</p>
                </div><!--select__list-->

            </div><!--select-->

            <div class="calc__result">
                <div class="calc__result-left">
                    <p class="calc__result-value">Вес 1 метра: <span id="calc_w1m">0</span> кг</p>
                    <p class="calc__result-value">Объем: <span id="calc_volume">0</span> м<sup>3</sup></p>
                </div><!--calc__result-left-->

                <div class="calc__result-sum">
                    <p class="calc__result-title">Вес:</p>
                    <p class="calc__result-sum"><span  id="total_weight">0</span> кг</p>
                </div><!--calc__result-sum-->

            </div><!--calc__result-->

            <button class="blue-btn calc__form-btn">Рассчитать доставку</button>

        </div>

    