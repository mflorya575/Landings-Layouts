<div style="width: 800px; margin: auto; height: 584px; background-color: #FFFFFF; ">
    <div style="height: 106px;background-color: #36A9E1;">
        <div style="width: 600px;margin: auto;">
            <div style="font-family: Arial, sans-serif;font-weight: bold;font-size: 20px;line-height: 28px;color: #FFFFFF;padding-top: 20px;padding-bottom: 10px;">Счёт по заказу N{$oid} на сайте «{$sitename}»</div>
            <div style="font-family: Arial, sans-serif;font-weight: bold;font-size: 16px;line-height: 18px;color: #FFFFFF;">Дата выставления счёта: {$invoice_date}</div>
        </div>
    </div>
    <div style="padding-top: 25px;padding-bottom: 25px; border-left: 1px solid #F7F7F7; border-right: 1px solid #F7F7F7;">
        <div style="width: 600px;margin: auto;">
            <div style="font-family: Arial, sans-serif;font-size: 18px;line-height: 21px;color: #333333;">Здравствуйте! <br>
            Во вложении к этому письму находится счёт на оплату по вашему заказу N{$oid} на сайте
             <a href="{$mainurl}" style="font-family: Arial, sans-serif;font-weight: bold;font-size: 18px;line-height: 21px;color: #333333;text-decoration: underline">«{$sitename}»</a></div>

            <div style="padding-top: 25px;padding-bottom: 20px;"><a href="{$mainurl}" style="width: 306px;height: 54px;padding: 16px 32px;font-weight: 500;font-size: 18px;line-height: 22px;color: #FFFFFF;background-color: #F1971E;border: 1px solid #F1971E;border-radius: 6px;text-decoration: none;font-family: Arial,sans-serif;">Войти в личный кабинет</a></div>
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
