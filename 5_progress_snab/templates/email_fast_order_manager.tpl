<div style="width: 800px;margin: auto; height: 805px; background-color: #FFFFFF;">
    <div style="height: 96px;background-color: #36A9E1;">
        <div style="width: 600px;margin: auto;">
            <div style="font-family: Arial, sans-serif;font-weight: bold;font-size: 24px;line-height: 28px;color: #FFFFFF;padding-top: 20px;padding-bottom: 10px;">Поступила быстрая заявка</div>
            <div style="font-family: Arial, sans-serif;font-weight: bold;font-size: 16px;line-height: 18px;color: #FFFFFF;">Дата заказа: {$only_date}</div>
        </div>
    </div>

    <div style="padding-top: 25px;padding-bottom: 25px; border-left: 1px solid #F7F7F7; border-right: 1px solid #F7F7F7;">
        <div style="width: 600px;margin: auto;">
            <div style="padding-top: 15px;">

                <div style="font-weight: bold;font-size: 18px;line-height: 21px;font-family: Arial, sans-serif;color: #333333;padding-bottom: 15px;padding-top: 25px;">Контактные данные</div>
                <div style="font-size: 16px;line-height: 18px;font-family: Arial,sans-serif;color: #777777;padding-bottom: 10px;">ФИО: <span style="font-size: 16px;line-height: 18px;font-family: Arial, sans-serif;color: #333333;">{$user_name}</span></div>
                <div style="font-size: 16px;line-height: 18px;font-family: Arial,sans-serif;color: #777777;padding-bottom: 10px;">Телефон: <span style="font-size: 16px;line-height: 18px;font-family: Arial, sans-serif;color: #333333;">{$user_phone}</span></div>
                <div style="font-size: 16px;line-height: 18px;font-family: Arial,sans-serif;color: #777777;padding-bottom: 10px;">E-mail: <span style="font-size: 16px;line-height: 18px;font-family: Arial, sans-serif;color: #333333;">{$user_email}</span></div>

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