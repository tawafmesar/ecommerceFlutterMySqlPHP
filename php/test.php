<?php


include "connect.php";


$subject = 'موضوع البريد الإلكتروني';
$body = 'هذه رسالة اختبار في الجسم.';
$sendto = 'tawafmesar@gmail.com';

sendEmail($subject, $body, $sendto);

?>