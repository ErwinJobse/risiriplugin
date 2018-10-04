<?php
/**
 * Created by PhpStorm.
 * User: Erwin Jobse
 * Date: 10/4/2018
 * Time: 8:53 AM
 */
<?php
require 'PHPMailerAutoload.php';
$mail = new PHPMailer;
$mail->setFrom('from@example.com', 'Your Name');
$mail->addAddress('myfriend@example.net', 'My Friend');
$mail->Subject  = 'First PHPMailer Message';
$mail->Body     = 'Hi! This is my first e-mail sent through PHPMailer.';
if(!$mail->send()) {
    echo 'Message was not sent.';
    echo 'Mailer error: ' . $mail->ErrorInfo;
} else {
    echo 'Message has been sent.';
}