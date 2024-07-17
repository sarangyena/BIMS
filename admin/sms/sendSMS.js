const gsm = require('serialport-gsm');

const modem = gsm.Modem();
const options = {
    baudRate: 9600,
    dataBits: 8,
    stopBits: 1,
    parity: 'none',
    rtscts: false,
    xon: false,
    xoff: false,
    xany: false,
    autoOpen: false
};

const comPort = process.argv[2];
const phoneNumber = process.argv[3];
const message = process.argv[4];

modem.open(comPort, options);

modem.on('open', () => {
    modem.initializeModem((msg, err) => {
        if (err) {
            console.log('Modem Initialization Error:', err);
        } else {
            modem.sendSMS(phoneNumber, message, false, (result) => {
                console.log(result);
                modem.close();
            });
        }
    });
});

modem.on('error', (err) => {
    console.log('Modem Error:', err);
});
