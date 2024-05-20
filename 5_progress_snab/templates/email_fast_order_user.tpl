<div style="width: 800px;margin: auto; height: 805px; background-color: #FFFFFF;">
    <div style="height: 96px;background-color: #36A9E1;">
        <div style="width: 600px;margin: auto;">
            <div style="font-family: Arial, sans-serif;font-weight: bold;font-size: 24px;line-height: 28px;color: #FFFFFF;padding-top: 20px;padding-bottom: 10px;">Вы оставили заявку на сайте {$domain}</div>
            <div style="font-family: Arial, sans-serif;font-weight: bold;font-size: 16px;line-height: 18px;color: #FFFFFF;">Дата заявки: {$only_date}</div>
        </div>
    </div>

    <div style="padding-top: 25px;padding-bottom: 25px; border-left: 1px solid #F7F7F7; border-right: 1px solid #F7F7F7;">
        <div style="width: 600px;margin: auto;">
            <div style="padding-top: 15px;">
                {if $user_comment}
                <div style="font-size: 16px;line-height: 18px;font-family: Arial,sans-serif;color: #777777;padding-bottom: 10px;">Комментарий к заказу: <span style="font-size: 16px;line-height: 18px;font-family: Arial, sans-serif;color: #333333;">{$user_comment}</span></div>
                {/if}

                <div style="font-size: 16px;line-height: 18px;font-family: Arial,sans-serif;color: #000000;padding-top: 20px;">Мы с вами свяжемся в ближайшее время.</div>

            </div>
        </div>
    </div>

    <div style="height: 111px;background-color: #36A9E1;">
        <div style="width: 600px;margin: auto;">
            <div style="font-family: Arial, sans-serif;font-weight: bold;font-size: 18px;line-height: 20px;color: #FFFFFF;padding-top: 28px;padding-bottom: 15px;">С уважением, {$company.name}</div>
            <div style="display: flex;align-items: center; padding-bottom: 28px;">
                <a href="tel:{$firm_phone}" style="font-family: Arial, sans-serif;font-size: 18px;line-height: 20px;color: #000000;text-decoration: none;padding-right: 20px;">{$firm_phone}</a>
                <a href="mailto:{$firm_email}" style="font-family: Arial, sans-serif;font-size: 18px;line-height: 20px;color: #000000;text-decoration: none;border-bottom: 1px solid #000000;">{$firm_email}</a>
            </div>
        </div>
    </div>

</div>