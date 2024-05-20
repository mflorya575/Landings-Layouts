<div style="width: 800px;margin: auto; height: 805px; background-color: #FFFFFF;">
    <div style="height: 96px;background-color: #36A9E1;">
        <div style="width: 600px;margin: auto;">
            <div style="font-family: Arial, sans-serif;font-weight: bold;font-size: 24px;line-height: 28px;color: #FFFFFF;padding-top: 20px;padding-bottom: 10px;">Поступил заказ № {$public_id}</div>
            <div style="font-family: Arial, sans-serif;font-weight: bold;font-size: 16px;line-height: 18px;color: #FFFFFF;">Дата заказа: {$only_date}</div>
        </div>
    </div>

    <div style="padding-top: 25px;padding-bottom: 25px; border-left: 1px solid #F7F7F7; border-right: 1px solid #F7F7F7;">
        <div style="width: 600px;margin: auto;">
            <div style="font-family: Arial, sans-serif;font-weight: bold;font-size: 18px;line-height: 21px;color: #333333;">Состав заказа:</div>
            <div style="padding-top: 15px;">
                <div style="height: 32px;background-color: #F7F7F7;padding-left: 28px;padding-right: 10px;display: flex;align-items: center;">
                    <div style="font-family: Arial, sans-serif;font-weight: bold;font-size: 14px;line-height: 16px;color: #333333;width: 260px;padding-right: 20px;display:inline-block">Наименование товара</div>
                    <div style="font-family: Arial, sans-serif;font-weight: bold;font-size: 14px;line-height: 16px;color: #333333;width: 68px;display:inline-block">Кол-во</div>
                    <div style="font-family: Arial, sans-serif;font-weight: bold;font-size: 14px;line-height: 16px;color: #333333;width: 96px;display:inline-block">Цена, руб.</div>
                    <div style="font-family: Arial, sans-serif;font-weight: bold;font-size: 14px;line-height: 16px;color: #333333;width: 90px;display:inline-block">Сумма, руб.</div>
                </div>
                {foreach $items as $item}
                <div style="display: flex;align-items: center;border-bottom: 1px solid #F2F2F2;padding-top: 7px;padding-bottom: 7px;padding-left: 10px;padding-right: 10px;">
                    <div style="font-family: Arial, sans-serif;font-size: 14px;line-height: 16px;color: #333333;width: 18px;align-self: flex-start;display:inline-block">{$item.n}</div>
                    <div style="width: 240px;padding-right: 40px;font-family: Arial, sans-serif;font-size: 12px;line-height: 14px;color: #333333;display:inline-block">{$item.full_title}</div>
                    <div style="width: 68px;font-family: Arial, sans-serif;font-size: 12px;line-height: 14px;color: #333333;display:inline-block">{$item.amount} {$item.edizm}</div>
                    <div style="width: 96px;font-family: Arial, sans-serif;font-size: 12px;line-height: 14px;color: #333333;display:inline-block">{if $item.price_shop}{$item.price_shop}{else}По запросу{/if}</div>
                    <div style="width: 90px;font-family: Arial, sans-serif;font-size: 12px;line-height: 14px;color: #333333;display:inline-block">{if $item.sum}{$item.sum}{else}По запросу{/if}</div>
                </div>
                {/foreach}
                <div style="text-align:right;border-bottom: 1px solid #F2F2F2;padding-top: 7px;padding-bottom: 7px;padding-left: 10px;padding-right: 15px;">
                    <div style="font-family: Arial, sans-serif;font-weight: bold;font-size: 14px;line-height: 16px;color: #333333;padding-right: 15px;display:inline-block">Общая сумма с учетом НДС: </div>
                    <div style="font-family: Arial, sans-serif;font-weight: bold;font-size: 14px;line-height: 16px;color: #333333;padding-right: 15px;display:inline-block">{if $order_sum}{$order_sum} руб.{else}По запросу{/if}</div>
                </div>

                {if $cabinet_str}
                <div style="font-size: 16px;line-height: 18px;font-family: Arial,sans-serif;color: #777777;padding-bottom: 10px;">
                    <b>{$cabinet_str}</b><br><br>
                </div>
                {/if}
                <div style="font-weight: bold;font-size: 18px;line-height: 21px;font-family: Arial, sans-serif;color: #333333;padding-bottom: 15px;padding-top: 25px;">Контактные данные</div>
                <div style="font-size: 16px;line-height: 18px;font-family: Arial,sans-serif;color: #777777;padding-bottom: 10px;">ФИО: <span style="font-size: 16px;line-height: 18px;font-family: Arial, sans-serif;color: #333333;">{$user_name}</span></div>
                <div style="font-size: 16px;line-height: 18px;font-family: Arial,sans-serif;color: #777777;padding-bottom: 10px;">Телефон: <span style="font-size: 16px;line-height: 18px;font-family: Arial, sans-serif;color: #333333;">{$user_phone}</span></div>
                <div style="font-size: 16px;line-height: 18px;font-family: Arial,sans-serif;color: #777777;padding-bottom: 10px;">E-mail: <span style="font-size: 16px;line-height: 18px;font-family: Arial, sans-serif;color: #333333;">{$user_email}</span></div>
                {if $user_inn}
                <div style="font-size: 16px;line-height: 18px;font-family: Arial,sans-serif;color: #777777;padding-bottom: 10px;">ИНН: <span style="font-size: 16px;line-height: 18px;font-family: Arial, sans-serif;color: #333333;">{$user_inn}</span></div>
                  {if 1==0}
                    {if $user_company}
                      <div style="font-size: 16px;line-height: 18px;font-family: Arial,sans-serif;color: #777777;padding-bottom: 10px;">Компания: <span style="font-size: 16px;line-height: 18px;font-family: Arial, sans-serif;color: #333333;">{$user_company}</span> (Данные о компании взяты из сервиса dadata.ru по ИНН) </div>
                      <div style="font-size: 16px;line-height: 18px;font-family: Arial,sans-serif;color: #777777;padding-bottom: 10px;">Адрес: <span style="font-size: 16px;line-height: 18px;font-family: Arial, sans-serif;color: #333333;">{$user_postal_code}, {$user_address}</span> (Данные о адресе компании взяты из сервиса dadata.ru по ИНН) </div>
                    {else}
                       <div style="font-size: 16px;line-height: 18px;font-family: Arial,sans-serif;color: #FF0000;padding-bottom: 10px;">
                         Возможно, неверный ИНН, данные о компании по этому ИНН из dadata.ru не удалось извлечь.
                       </div>
                    {/if}
                  {/if}
                {/if}
                {if $user_comment}
                <div style="font-size: 16px;line-height: 18px;font-family: Arial,sans-serif;color: #777777;padding-bottom: 10px;">Комментарий к заказу: <span style="font-size: 16px;line-height: 18px;font-family: Arial, sans-serif;color: #333333;">{$user_comment}</span></div>
                {/if}
            </div>
        </div>
    </div>

    <div style="height: 80px;background-color: #36A9E1;">
        <div style="width: 600px;margin: auto;">
            <div style="padding-top: 25px;display: flex; align-items: center;">
                <table>
                    <tr>
                        <td>
                            <a href="{$mainurl}/mancab/" style="font-family: Arial, sans-serif;font-weight: bold;font-size: 18px;line-height: 20px;color: #000000; text-decoration: none; padding-right: 7px;">Смотреть заказ в личном кабинете сайта</a>
                        </td>
                    </tr>
            </div>
        </div>
    </div>
</div>