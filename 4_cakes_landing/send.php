<?php
// Получим данные с элементов формы
$username = $_POST['username'];
$tel = $_POST['tel'];
$text = $_POST['text'];

// Обработаем полученные данные
$username = htmlspecialchars($username); // Преобразование символов в сущности (мнемоники)
$tel = htmlspecialchars($tel);
$text = htmlspecialchars($text);

$username = urldecode($username); // Декодирование URL
$tel = urldecode($tel);
$text = urldecode($text);

$username = trim($username); // Удаление пробельных символов с обеих сторон
$tel = trim($tel);
$text = trim($text);

// Данные для отправки в Telegram
$botToken = "7021272471:AAH83a9-eBFl81My3iLHVSvTJBLDvIb0MiA"; //  токен бота
$chatId = "-4283477389"; // ID бота

// Сообщение, которое будет отправлено
$message = "Имя: ".$username."\nТелефон: ".$tel."\nТекст: ".$text;

// URL для отправки сообщения через API Telegram
$url = "https://api.telegram.org/bot".$botToken."/sendMessage?chat_id=".$chatId."&text=".urlencode($message);

// Инициализация cURL сессии
$ch = curl_init();

// Установка параметров cURL
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

// Выполнение cURL запроса и получение ответа
$output = curl_exec($ch);

// Закрытие cURL сессии
curl_close($ch);

// Проверка результата отправки
$response = json_decode($output, true);
if ($response && isset($response['ok']) && $response['ok']) {
    echo json_encode(['status' => 'success', 'message' => 'Сообщение успешно отправлено в Telegram!']);
} else {
    echo json_encode(['status' => 'error', 'message' => 'Ошибка! Проверьте данные...']);
}
?>
