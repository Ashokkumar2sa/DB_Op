const playwright = require('playwright');


(async () => {

    const browser = await playwright["chromium"].launch({
        headless: false
    });

    //context
    const context = await browser.newContext();


    const page = await context.newPage();
    await page.goto('http://0.0.0.0:8000/');
    await Promise.all([
      page.waitForNavigation(/*{ url: 'http://0.0.0.0:8000/login#login' }*/),
      page.click('text=Login')
    ]);

    await page.click('[placeholder="jane@example.com"]');
    await page.fill('[placeholder="jane@example.com"]', 'Administrator');

    await page.click('[placeholder="•••••"]');
    await page.fill('[placeholder="•••••"]', 'Ashok2sa-');

    await Promise.all([
      page.waitForNavigation(/*{ url: 'http://0.0.0.0:8000/app' }*/),
      page.click('button:has-text("Login")')
    ]);
   
    const Countrylist = ["Afghanistan","Albania","Algeria",	"American Samoa",	"Andorra",	"Angola", "Anguilla","Antarctica","Antigua and Barbuda","Argentina","Armenia","Aruba","Australia",	
    "Azerbaijan","Bahamas","Bahrain","Bangladesh","Barbados","Austria",];
    const Currencylist = ["AED", "ARS", "AUD", "CHF", "CNY", "EUR", "GBP", "INR" , "JPY", "USD"];

    /*for(let i=26;i<=30;i++){
        var randomnumber1 = Math.floor(Math.random() * (19));
        var randomnumber2 = Math.floor(Math.random() * (10));
        await page.click('button:has-text("Add Company")');
        var name = i.toString(10) + "company";
        await page.fill('//*[@id="page-Company"]/div[2]/div[2]/div/div[3]/div[2]/div[1]/div[2]/div/div/div[3]/div[2]/div/div[1]/form/div[1]/div/div[2]/div[1]/input', name );
        var abbr = i.toString(10);
        await page.fill('//*[@id="page-Company"]/div[2]/div[2]/div/div[3]/div[2]/div[1]/div[2]/div/div/div[3]/div[2]/div/div[1]/form/div[2]/div/div[2]/div[1]/input', abbr);
        

        //await page.fill('//*[@id="page-Company"]/div[2]/div[2]/div/div[3]/div[2]/div[1]/div[2]/div/div/div[3]/div[2]/div/div[1]/form/div[3]/div/div[2]/div[1]/div/div/input', Currencylist[randomnumber2]);
       await page.fill('//*[@id="page-Company"]/div[2]/div[2]/div/div[3]/div[2]/div[1]/div[2]/div/div/div[3]/div[2]/div/div[1]/form/div[3]/div/div[2]/div[1]/div/div/input',Currencylist[randomnumber2]  );
        
       // await page.click('text=AEDARSAUDCHFCNYEURGBPINRJPYUSD Create a new Currency Advanced Search12 results f >> input[role="combobox"]');
      //  var cmdp = "p:has-text(\"" + Currencylist[randomnumber2] + "\")";
        //await page.click(cmdp);
        await page.fill('//*[@id="page-Company"]/div[2]/div[2]/div/div[3]/div[2]/div[1]/div[2]/div/div/div[3]/div[2]/div/div[1]/form/div[4]/div/div[2]/div[1]/div/div/input',Countrylist[randomnumber1]);
        await page.click('//*[@id="page-Company"]/div[2]/div[2]/div/div[3]/div[2]/div[1]/div[2]/div/div/div[3]/div[2]/div/div[1]/form/div[5]/div/label/span[1]/input');
        await page.click('button:has-text("Save")');
        await page.goto('http://0.0.0.0:8000/app/company');
    } */
    for(let i=29;i<=29;i++){
      await page.click('text=Company');
      await page.click('button:has-text("Add Company")');

      var randomnumber1 = Math.floor(Math.random() * (19));
      var randomnumber2 = Math.floor(Math.random() * (10));
      var randomnumber3 = Math.floor(Math.random() * (20));
      
     // var abbr = i.toString();
      //var name = abbr + "company";

      await page.fill('//*[@id="page-Company"]/div[2]/div[2]/div/div[3]/div[2]/div[1]/div[2]/div/div/div[3]/div[2]/div/div[1]/form/div[1]/div/div[2]/div[1]/input', i.toString() + "company" );
      
      await page.fill('//*[@id="page-Company"]/div[2]/div[2]/div/div[3]/div[2]/div[1]/div[2]/div/div/div[3]/div[2]/div/div[1]/form/div[2]/div/div[2]/div[1]/input', i.toString());
      

      //await page.fill('//*[@id="page-Company"]/div[2]/div[2]/div/div[3]/div[2]/div[1]/div[2]/div/div/div[3]/div[2]/div/div[1]/form/div[3]/div/div[2]/div[1]/div/div/input', Currencylist[randomnumber2]);
      //await page.fill('//html/body/div[1]/div/div[2]/div[2]/div[2]/div/div[3]/div[2]/div[1]/div[2]/div/div/div[3]/div[2]/div/div[1]/form/div[3]/div/div[2]/div[1]/div/div/input', Currencylist[randomnumber2] );
      await page.click('text=Default Currency Begin typing for results. >> input[role="combobox"]');
      var cmdp = "p:has-text(\"" + Currencylist[randomnumber2] + "\")";
      await page.click(cmdp);
      await page.click('text=Parent Company Begin typing for results. >> input[role="combobox"]');
      var parcmd = "strong:has-text(\"" + randomnumber3.toString() +  "company\")" ;
      await page.click(parcmd);
      await page.fill('//*[@id="page-Company"]/div[2]/div[2]/div/div[3]/div[2]/div[1]/div[2]/div/div/div[3]/div[2]/div/div[1]/form/div[4]/div/div[2]/div[1]/div/div/input',Countrylist[randomnumber1]);
     // await page.fill('//*[@id="page-Company"]/div[2]/div[2]/div/div[3]/div[2]/div[1]/div[2]/div/div/div[3]/div[2]/div/div[2]/form/div[5]/div/div[2]/div[1]/div/div/input', randomnumber3.toString()+"company");
      //await page.click('//*[@id="page-Company"]/div[2]/div[2]/div/div[3]/div[2]/div[1]/div[2]/div/div/div[3]/div[2]/div/div[1]/form/div[5]/div/label/span[1]/input');
     
      await page.click('button:has-text("Save")');
      await page.goto('http://0.0.0.0:8000/app');
  } 
})();
/*
const { test, expect } = require('@playwright/test');
test('test', async ({ page }) => {
  // Go to http://0.0.0.0:8000/
  await page.goto('http://0.0.0.0:8000/');
  // Click text=Login
  await Promise.all([
    page.waitForNavigation(/*{ url: 'http://0.0.0.0:8000/login#login' }*//*),
    page.click('text=Login')
  ]);
  // Click [placeholder="jane@example.com"]
  await page.click('[placeholder="jane@example.com"]');
  // Fill [placeholder="jane@example.com"]
  await page.fill('[placeholder="jane@example.com"]', 'Administrator');
  // Click [placeholder="•••••"]
  await page.click('[placeholder="•••••"]');
  // Fill [placeholder="•••••"]
  await page.fill('[placeholder="•••••"]', 'Ashok2sa-');
  // Press Enter
  await page.press('[placeholder="•••••"]', 'Enter');
  // Go to http://0.0.0.0:8000/app
  await page.goto('http://0.0.0.0:8000/app');
  // Click text=Company
  await page.click('text=Company');
  await expect(page).toHaveURL('http://0.0.0.0:8000/app/company');
  // Click button:has-text("Add Company")
  await page.click('button:has-text("Add Company")');
  await expect(page).toHaveURL('http://0.0.0.0:8000/app/company/new-company-1');
  // Fill text=Company undefined >> input[type="text"]
  await page.fill('text=Company undefined >> input[type="text"]', 'll');
  // Click text=Company undefined >> input[type="text"]
  await page.click('text=Company undefined >> input[type="text"]');
  // Fill text=Company undefined >> input[type="text"]
  await page.fill('text=Company undefined >> input[type="text"]', 'llkl');
  // Fill text=Abbr l >> input[type="text"]
  await page.fill('text=Abbr l >> input[type="text"]', 'lllka');
  // Click text=Default Currency Begin typing for results. >> input[role="combobox"]
  await page.click('text=Default Currency Begin typing for results. >> input[role="combobox"]');
  // Click p:has-text("EUR")
  await page.click('p:has-text("EUR")');
  // Click text=Parent Company Begin typing for results. >> input[role="combobox"]
  await page.click('text=Parent Company Begin typing for results. >> input[role="combobox"]');
  // Click strong:has-text("15company")
  await page.click('strong:has-text("15company")');
  // Click button:has-text("Save")
  await page.click('button:has-text("Save")');
  // Go to http://0.0.0.0:8000/app/company/llkl
  await page.goto('http://0.0.0.0:8000/app/company/llkl');
  // Click img
  await page.click('img');
  await expect(page).toHaveURL('http://0.0.0.0:8000/app/home');
  // Click text=Company
  await page.click('text=Company');
  await expect(page).toHaveURL('http://0.0.0.0:8000/app/company');
}); */

/*
const { test, expect } = require('@playwright/test');
test('test', async ({ page }) => {
  
  await expect(page).toHaveURL('http://0.0.0.0:8000/app/company');
  // Click button:has-text("Add Company")
  await page.click('button:has-text("Add Company")');
  await expect(page).toHaveURL('http://0.0.0.0:8000/app/company/new-company-1');
  // Fill text=Company undefined >> input[type="text"]
  await page.fill('text=Company undefined >> input[type="text"]', 'COmapny_11');
  // Click text=Company undefined >> input[type="text"]
  await page.click('text=Company undefined >> input[type="text"]');
  // Fill text=Abbr C >> input[type="text"]
  await page.fill('text=Abbr C >> input[type="text"]', 'C_11');
  // Click text=Abbr C >> input[type="text"]
  await page.click('text=Abbr C >> input[type="text"]');
  // Click text=Default Currency Begin typing for results. >> input[role="combobox"]
  await page.click('text=Default Currency Begin typing for results. >> input[role="combobox"]');
  // Click p:has-text("GBP")
  await page.click('p:has-text("GBP")');
  // Check text=Company COmapny_11 Abbr C_11 Default Currency AEDARSAUDCHFCNYEURGBPINRJPYUSD Cre >> input[type="checkbox"]
  await page.check('text=Company COmapny_11 Abbr C_11 Default Currency AEDARSAUDCHFCNYEURGBPINRJPYUSD Cre >> input[type="checkbox"]');
  // Click text=Parent Company Begin typing for results. >> input[role="combobox"]
  await page.click('text=Parent Company Begin typing for results. >> input[role="combobox"]');
  // Click p:has-text("C1")
  await page.click('p:has-text("C1")');
  // Click button:has-text("Save")
  await page.click('button:has-text("Save")');
  // Go to http://0.0.0.0:8000/app/company/COmapny_11
  await page.goto('http://0.0.0.0:8000/app/company/COmapny_11');
  // Click text=Company
  await page.click('text=Company');
  await expect(page).toHaveURL('http://0.0.0.0:8000/app/company');
});
*/
