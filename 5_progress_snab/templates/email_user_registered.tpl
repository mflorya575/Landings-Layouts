<div style="width: 800px; margin: auto; height: 484px; background-color: #FFFFFF; ">
    <div style="height: 96px;background-color: #36A9E1;">
        <div style="width: 600px;margin: auto;">
            <div style="font-family: Arial, sans-serif;font-weight: bold;font-size: 24px;line-height: 28px;color: #FFFFFF;padding-top: 20px;padding-bottom: 10px;">Регистрация на сайте «{$sitename}»</div>
            <div style="font-family: Arial, sans-serif;font-weight: bold;font-size: 16px;line-height: 18px;color: #FFFFFF;">Дата регистрации: {$regdate}</div>
        </div>
    </div>
    <div style="padding-top: 25px;padding-bottom: 25px; border-left: 1px solid #F7F7F7; border-right: 1px solid #F7F7F7;">
        <div style="width: 600px;margin: auto;">
            <div style="font-family: Arial, sans-serif;font-weight: bold;font-size: 18px;line-height: 21px;color: #333333;">Вы успешно зарегистрировались на сайте компании
                <a href="{$mainurl}" style="font-family: Arial, sans-serif;font-weight: bold;font-size: 18px;line-height: 21px;color: #333333;text-decoration: underline">«{$sitename}»</a></div>
            <div style="font-weight: bold;font-size: 16px;line-height: 18px;font-family: Arial, sans-serif;color: #333333;padding-bottom: 15px;padding-top: 25px;">Ваши данные для авторизации на сайте:</div>
            <div style="font-size: 16px;line-height: 18px;font-family: Arial,sans-serif;color: #777777;padding-bottom: 10px;">E-mail: <span style="font-size: 16px;line-height: 18px;font-family: Arial, sans-serif;color: #333333;">{$user_email}</span></div>
            <div style="font-size: 16px;line-height: 18px;font-family: Arial,sans-serif;color: #777777;padding-bottom: 10px;">Пароль: <span style="font-size: 16px;line-height: 18px;font-family: Arial, sans-serif;color: #333333;">{$user_password}</span></div>
            <div style="padding-top: 25px;padding-bottom: 20px;"><a href="{$mainurl}" style="width: 306px;height: 54px;padding: 16px 32px;font-weight: 500;font-size: 18px;line-height: 22px;color: #FFFFFF;background-color: #36A9E1;border: 1px solid #36A9E1;border-radius: 6px;text-decoration: none;font-family: Arial,sans-serif;">Войти в личный кабинет</a></div>
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
