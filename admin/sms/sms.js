const serialportgsm = require('serialport-gsm');

let modem = serialportgsm.Modem()
let options = {
    baudRate: 9600,
    dataBits: 8,
    stopBits: 1,
    parity: 'none',
    rtscts: false,
    xon: false,
    xoff: false,
    xany: false,
    autoDeleteOnReceive: true,
    enableConcatenation: true,
    incomingCallIndication: true,
    incomingSMSIndication: true,
    pin: '',
    customInitCommand: '',
    cnmiCommand: 'AT+CNMI=2,1,0,2,1',
    logger: console
}

modem.open('COM3', options,{});

modem.on('open', data => {	
    //Initialize Modem
    modem.initializeModem((data)=>{
        console.log('Modem is Initialized');
        //Send SMS
        modem.sendSMS('639462533449', 'Test Message', true, (data)=>{
            console.log(data);
        });
    }); 
})

modem.on('onSendingMessage', result => { 
    console.log(result);
 })