<table style="width:100%; height: 100%; background: #E5E5E5; font-family: Arial, sans-serif;  font-size: 14px; color: #46433E;">
    <tr>
        <td style="padding:30px 0;">
            <div style="width: 800px;  margin: 0 auto;  background: #fff;">
                <div style="padding: 10px 20px;  flex-wrap: wrap;  justify-content: space-between; border-bottom: 2px solid #2C7069;">
                    <a href="{$mainurl}"><img src="{$mainurl}/assets/icon/logo.svg"></a>
                </div>
                <div style="padding: 25px 20px 40px 20px;">
                    <p style="margin-bottom: 8px; font-size: 20px; line-height: 23px; font-weight: 600;">Заказ №{$public_id}</p>
                    <p style="margin-bottom: 16px; font-size: 14px; line-height: 22px; color: #2C7069;">Ваш заказ был успешно принят. Наш менеджер свяжется с Вами в ближайшее время.</p>
                    <p style="margin-bottom: 8px; line-height: 22px;">{$cabinet_str}</p>

                    <p style="margin-bottom: 8px; line-height: 22px;">Состав заказа:</p>
                    {foreach $items as $item}
                       {$item.n} <a href="{$item.url}">{$item.title}</a> - {$item.amount} {$item.edizm}, цена: {if $item.price_shop}{$item.price_shop} руб{else}по запросу{/if},
                        всего: {if $item.price_shop}{$item.sum} руб.{else}по запросу{/if}<br>
                    {/foreach}

                    <br>
                    Сумма заказа: <b>{if $order_sum}{$order_sum} руб.{else}по запросу{/if}</b><br>
                    {if $user_comment}
                        <p style="margin-bottom: 8px; line-height: 22px;">Комментарий к заказу:</p>
                        {$user_comment}
                    {/if}
                </div>
                <div style="background: #2C7069; color: #fff; display: flex; flex-wrap: wrap;  justify-content: space-between; padding: 10px 20px;">
                    <table style="width:800px">
                        <tr>
                            <td>
                                <div style="font-size: 14px; line-height: 22px; letter-spacing: 0.02em;">
                                    <a href="tel:8(812)309-44-08" style="display: block; color: #fff; text-decoration: none; margin-bottom: 2px;">8(812)309-44-08</a>
                                </div>
                            </td>
                            <td style="text-align:right;padding-right:30px">
                                <div style="text-align: right; font-size: 12px; line-height: 8px; ">
                                    <p style="margin-top: 10px;">Санкт-Петербург,
                                        196084, Санкт-Петербург, ул. Заставская, д.31, корпус 2.</p>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </td>
    </tr>
</table>