const serialportgsm = require('serialport-gsm');

const modem = serialportgsm.Modem();
const options = {
    baudRate: 9600,
    dataBits: 8,
    stopBits: 1,
    parity: 'none',
    rtscts: false,
    xon: false,
    xoff: false,
    xany: false,
    autoDeleteOnReceive: true
};

// Replace with your serial port path
const port = 'COM5';

// Initialize and open the modem
modem.open(port, options, (error) => {
    if (error) {
        console.log('Error opening port:', error);
        return;
    }

    console.log('Modem connected');

    modem.initializeModem((msg) => {
        console.log('Modem initialized:', msg);

        // You can send additional commands to the modem if necessary
        // For example, to check the modem status
        modem.checkModem((result) => {
            console.log('Modem status:', result);
        });
    });
});

// Handle incoming messages
modem.on('onNewMessage', (data) => {
    console.log('New message received:', data);
});

// Handle errors
modem.on('error', (error) => {
    console.error('Modem error:', error);
});

// Handle modem close event
modem.on('close', () => {
    console.log('Modem closed');
});

// Optional: Close the modem after some time
setTimeout(() => {
    modem.close((msg) => {
        console.log('Modem closed:', msg);
    });
}, 30000); // Close after 30 seconds
