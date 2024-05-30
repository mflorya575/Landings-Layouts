<?php

    // получим данные с элементов формы

    $username = $_POST['username'];
    $tel = $_POST['tel'];
    $text = $_POST['text'];

    // обработаем полученные данные

    $username = htmlspecialchars($username); // преобразование символов в сущности (мнемоники)
    $tel = htmlspecialchars($tel);
    $text = htmlspecialchars($text);

    $username = urldecode($username); // декодирование URL
    $tel = urldecode($tel);
    $text = urldecode($text);

    $username = trim($username); // удаление пробельных символов с обеих сторон
    $tel = trim($tel);
    $text = trim($text);

    // добавляем данные на почту

    if (mail("mih2303@mail.ru",
             "Новое письмо с сайта",
             "Имя: ".$username."\n".
             "Телефон: ".$tel."\n".
             "Текст: ".$text."\n",
             "From no-reply@mydomain.ru \r\n")
    
    ) {
        echo ('Письмо успешно отравлено!');
    }
    else {
        echo ('Есть ошибки! Проверьте данные...');
    }


?>
