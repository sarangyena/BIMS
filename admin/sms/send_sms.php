<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $phoneNumbers = explode(',', $_POST['phone_numbers']);
    $message = $_POST['message'];

    $serialPort = 'COM2'; // Change this based on your system

    function sendSMS($serialPort, $phoneNumber, $message) {
        $fp = fopen($serialPort, 'w+');
        if (!$fp) {
            die("Cannot open $serialPort");
        }

        // Configure the serial port
        shell_exec("stty -F $serialPort 9600");

        // Set text mode
        fwrite($fp, "AT+CMGF=1\r");
        sleep(1);

        // Send SMS command
        fwrite($fp, "AT+CMGS=\"$phoneNumber\"\r");
        sleep(1);

        // Send the message
        fwrite($fp, "$message" . chr(26));
        sleep(1);

        fclose($fp);
    }

    foreach ($phoneNumbers as $phoneNumber) {
        $phoneNumber = trim($phoneNumber);
        sendSMS($serialPort, $phoneNumber, $message);
    }

    echo "SMS sent successfully!";
}
?>
