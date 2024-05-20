{assign "user_id" 0 nocache}

<div id="pekPopup" style="display: none;" data-uid="{$user_id}">
	<div class="form">
		<div class="close">&times;</div>
		<div class="form_title">Расчет стоимости доставки</div>
		{if $user_id > 0}
		  <div style="text-align:left;font-size:14px;color:green;margin-top:-20px;margin-bottom:10px">Все расчёты сохраняются в личном кабинете</div>
		{/if}  

		<div class="fieldset">
			<div class="lbl">Данные о грузе</div>
			<div class="titles">
				<div class="name"></div>
				<div class="count">Количество, м</div>
				<div class="gabarit">Габариты (ДхШхВ), м</div>
				<div class="volume">Объем, м<sup>3</sup></div>
				<div class="weight">Вес, кг</div>
			</div>
			<div class="items" data-error="Нет информации о грузе!">
				<div class="item template">
					<div class="name">
						<input name="item_ves" type="hidden" value="0"/>
						<input name="item_drum_ves" type="hidden" value="0"/>
						<div class="item_name">
							<input name="item_name" placeholder="Маркоразмер" autocomplete="off"/>
							<div class="s_res"></div>
						</div>
						<div class="item_drum">
							<select class="calcDrum" name="calcDrum">
								<option value="-1" data-w="-1" data-ob="0">№ барабана</option>
								<option value="0" data-w="0" data-ob="0,08">В бухте</option>
								<option value="8" data-w="43" data-ob="0,21">8</option>
								<option value="8а" data-w="51" data-ob="0,26">8а</option>
								<option value="8б" data-w="53" data-ob="0,35">8б</option>
								<option value="10" data-w="56" data-ob="0,5">10</option>
								<option value="12" data-w="132" data-ob="0,74">12</option>
								<option value="12а" data-w="151" data-ob="1,06">12а</option>
								<option value="14" data-w="217" data-ob="1,37">14</option>
								<option value="16а" data-w="320" data-ob="1,53">16а</option>
								<option value="17" data-w="367" data-ob="2,17">17</option>
								<option value="18" data-w="535" data-ob="2,92">18</option>
								<option value="20" data-w="763" data-ob="4">20</option>
								<option value="22" data-w="965" data-ob="4,84">22</option>
							</select>
						</div>
					</div>
					<div class="count" data-ttl="Количество, м"><input type="text" name="count" value="0"/></div>
					<div class="gabarit" data-ttl="Габариты (ДхШхВ), м">
						<input type="text" name="l" value="0" readonly/>
						<span>x</span>
						<input type="text" name="w" value="0" readonly/>
						<span>x</span>
						<input type="text" name="h" value="0" readonly/>
					</div>
					<div class="volume" data-ttl="Объем, м&sup3;">
						<input type="text" name="volume" value="0" readonly/>
					</div>
					<div class="weight" data-ttl="Вес, кг">
						<input type="text" name="weight" value="0" readonly/>
					</div>
					<div class="act add">
						<a href="#">добавить <span>&#10003;</span></a>
					</div>
				</div>
			</div>
			<div class="control">
				<a href="#" class="addItem"><span class="plus"></span><span class="dottedd"> Добавить грузовое место</span></a>
				<div class="total">
					<div class="weight" style="line-height: 22px !important;">Общий вес: <span class="num"></span> кг,</div>
					<div class="volume" style="line-height: 0px !important;vertical-align: baseline !important">общий объем: <span class="num"></span> м<sup>3</sup></div>
				</div>
			</div>
		</div>
		<div class="fieldset">
			<div class="lbl">Направление</div>
			<div class="direction from">
				<div class="ttl">Отправление из</div>
				<div class="city_block">
					<div class="find_city" id="city_from_block">
						<span class="clear_str">&times;</span>
						<input type="text" name="city_from" placeholder="Укажите город отправления" autocomplete="nope"/>
						<input type="hidden" name="city_from_id"/>
						<div class="results"></div>
					</div>
					<label class="radio checked">
						<input type="radio" name="take" value="0" checked/>
						<span class="mask"></span>
						<span class="ch_lbl">Сдать груз в отделении</span>
					</label>
					<label class="radio">
						<input type="radio" name="take" value="1"/>
						<span class="mask"></span>
						<span class="ch_lbl">Забрать по адресу</span>
					</label>
				</div>
			</div>
			<div class="direction to">
				<div class="changeDirection"></div>
				<div class="ttl">Прибытие в</div>
				<div class="city_block">
					<div class="find_city" id="city_to_block">
						<span class="clear_str">&times;</span>
						<input type="text" name="city_to" placeholder="Укажите город прибытия"  autocomplete="nope"/>
						<input type="hidden" name="city_to_id"/>
						<div class="results"></div>
					</div>
					<label class="radio checked">
						<input type="radio" name="deliver" value="0" checked/>
						<span class="mask"></span>
						<span class="ch_lbl">Получить груз в отделении</span>
					</label>
					<label class="radio">
						<input type="radio" name="deliver" value="1"/>
						<span class="mask"></span>
						<span class="ch_lbl">Доставить по адресу</span>
					</label>
				</div>
			</div>
		</div>
		<div class="fieldset no_border">
			<div class="lbl">Дополнительные услуги</div>
			<label class="checkbox">
				<input type="checkbox" name="srv1" value="1"/>
				<span class="mask"></span>
				<span class="ch_lbl">Защитная транспортировочная упаковка</span>
			</label>
			<label class="checkbox">
				<input type="checkbox" name="srv2" value="2"/>
				<span class="mask"></span>
				<span class="ch_lbl">Пломбировка груза</span>
			</label>
			<label class="checkbox">
				<input type="checkbox" name="srv3" value="3"/>
				<span class="mask"></span>
				<span class="ch_lbl">Перевозка сопроводительных документов</span>
			</label>
		</div>
		<div class="btns">
		    <table width=100%>
		        <tr>
		            {if $user_id > 0}
		                <td style="text-align:center; width:50%">
		                 <div class="comment"  style="text-align:center; width:95%">
		                    <input type="text" name="comment" placeholder="Примечание к расчёту" maxlength="30">
		                 </div>  
		                </td>
                        <td width="50%"><button class="getInfo" style="margin-top:-2px">Рассчитать</button></td>		            
                    {else}
                        <td width="50%"><button class="getInfo" style="margin-top:-2px">Рассчитать</button></td>		            
                        {if 1==0}<td width="50%" style="text-align:center;font-size:14px;color:#999"><a class="calc_link" href="/reguser/" target="_blank">Зарегистрируйтесь</a> или <a  class="calc_link" href="/avtorizacziya.html" target="_blank">войдите</a>,<br> чтобы сохранять расчёты в личном кабинете.</td>{/if}
 		            {/if}
                    
		        </tr>
			</table>
			
		</div>
		<div class="pekResult">
			<div class="wr" id="pekprice" style="display:none">
				<div style="width:160px;height:17px"><img  style="width:150px;height:17px" src="/assets/images/calc/pek_logo.svg"/></div>
				<div class="pre_total" style="padding-top:3px !important">
					<div class="ttl">Предварительная цена доставки</div>
					<div class="price" style="padding-left:10px">0 руб.</div>
				</div>
				<div class="btn" id="pekbtn" style="display:visible">
					<a target="_blank" href="https://pecom.ru/services-are/shipping-request/">
						<button class="gotopek">Оформить доставку</button>
					</a>
				</div>
			</div>	

			<div class="wr" id="dlprice" style="margin-top:10px;display:none">
				<div style="width:160px;height:17px"><img style="width:150px;height:17px" src="/assets/images/calc/dl_logo.jpg"/></div>
				<div class="pre_total" style="padding-top:3px !important">
					<div class="ttl">Предварительная цена доставки</div>
					<div class="price" style="padding-left:10px">0 руб.</div>
				</div>
				<div class="btn" id="dlbtn" style="display:none">
					<a id="dl_url" target="_blank" href="https://www.dellin.ru/requests/">
						<button class="gotopek">Оформить доставку</button>
					</a>
				</div>
			</div>	

			{if $user_id > 0}
			  <div style="text-align:center;width:100%;padding-top:15px">Расчёт сохранён в <a href="/tools/weight/">Личном кабинете</a></div>
			{/if}  

		</div>

		</div>
	</div>
</div>