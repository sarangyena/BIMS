const SerialPortGSM = require('serialport-gsm');

const port = process.argv[2];
const numbers = process.argv[3].split(',');
const message = process.argv[4];

const modem = SerialPortGSM.Modem();

modem.open(port, { baudRate: 9600 });

modem.on('open', () => {
    console.log(`Modem opened on port ${port}`);
    modem.initializeModem((msg, err) => {
        if (err) {
            console.error('Failed to initialize modem:', err);
            process.exit(1);
        }
        numbers.forEach((number) => {
            modem.sendSMS(number.trim(), message, false, (result) => {
                console.log(`Message sent to ${number}:`, result);
            });
        });
    });
});

modem.on('error', (err) => {
    console.error('Modem error:', err);
    process.exit(1);
});
