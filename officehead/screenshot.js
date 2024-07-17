const puppeteer = require('puppeteer');

(async () => {
    const browser = await puppeteer.launch();
    const page = await browser.newPage();
    await page.goto('file://' + __dirname + '/charts.html');
    await page.screenshot({path: 'charts.png', fullPage: true});
    await browser.close();
})();