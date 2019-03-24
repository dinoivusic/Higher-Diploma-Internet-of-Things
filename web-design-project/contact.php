<?php

    require('sendgrid-php/sendgrid-php.php');

    if ($_SERVER['REQUEST_METHOD'] == 'POST') 
    {

        $to_email = "carminecalicchio@outlook.com";
        $msg = $_POST['message'];
        
        $from = new SendGrid\Email(null, $_POST['email']);
        $subject = $_POST['name'];
        $to = new SendGrid\Email(null, $to_email);
        $content = new SendGrid\Content("text/plain", $msg);
        $mail = new SendGrid\Mail($from, $subject, $to, $content);

        $apiKey = getenv('SENDGRID_API_KEY');
        $sg = new \SendGrid($apiKey);

        $response = $sg->client->mail()->send()->post($mail);

        if ($_POST['submit']) { 
            echo "<script>
                    alert('You message has been sent. Thanks');
                    window.location.href='contact.html';
                  </script>";
        } else { 
            echo "<script>
                    alert('Something went wrong. Please go try again.');
                    window.location.href='contact.html';
                  </script>"; 
        }

    }

?>