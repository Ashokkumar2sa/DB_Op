const playwright = require('playwright');

function randomDate() {
  
  var y1 = Math.floor(Math.random() * (2035- 2033 + 1)) + 2033;
  var y2 = Math.floor(Math.random() * (2035- y1 )) + y1;
  let m1 = Math.floor(Math.random() * (11)) + 1;
  let m2 = Math.floor(Math.random() * (12-m1 )) + m1;
  let d1 = Math.floor(Math.random() * (30-  1)) + 1;
  let d2 = Math.floor(Math.random() * (30- d1 )) + d1;
  var y1s = y1.toString();
  var y2s = y2.toString();
  var m1s;var m2s;
  if(m1 <10 ) m1s = "0" + m1.toString(10);
  else m1s = m1.toString(10);
  if(m2 < 10 ) m2s = "0" + m2.toString(10);
  else m2s = m2.toString(10);
  var d1s; var d2s;
  if(d1 <10 ) d1s = "0" + d1.toString(10);
  else d1s = d1.toString(10);
  if(d2 < 10 ) d2s = "0" + d2.toString(10);
  else d2s = d2.toString(10);

  var dat1 = d1s + "-" + m1s + "-" + y1s;
  var dat2 = d2s + "-" + m2s + "-" + y2s;


  return [dat1 , dat2]; 
}
function get_abbr(k){
    if(k<10) return k;
    else {
      return 100 + k;
    }
}
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

    await page.click('text=HR');

    await page.click('text=Staffing Plan');
    var j =1;
    for( let i=1070; i< 1500 ;i++){

      var name = "plan" + i.toString(10);
      const Department = [ "Accounts - ", "Customer Service - ", "Dispatch - " , "Human Resources - ", "Legal - " , "Management - " ,
       "Marketing - ", "Operations - " , "Production - " , "Purchase - " , "Quality Management - ", "Research & Development - " , "Sales - " ];

      var randomnumber1 = Math.floor(Math.random() * (12)) +1;
      
      const [date1, date2 ] = randomDate();
      console.log(date2);
      const Designation =  ["Researcher" , "Designer" , "Software Developer" , "Head of Marketing and Sales", "Project Manager" , "HR Manager" ,
      "Business Development Manager" , "Administrative Officer", "Associate" , "Secretary" , "Accountant" , "Engineer",  "Analyst" ];
      
     
      var ra3 = Math.floor(Math.random() * (10)) + 2 ;
      var randomnumber3 = ra3.toString(10);
      var ra4 = Math.floor(Math.random() * (100000)) +50000 ;
      var randomnumber4 = ra4.toString(10);

      await page.click('button:has-text("Add Staffing Plan")');

      await page.click('text=Name undefined >> input[type="text"]');
    
      await page.fill('text=Name undefined >> input[type="text"]', name );

      //await page.click('text=Department Begin typing for results. >> input[role="combobox"]');
    
     // await page.click('text=Department Begin typing for results. >> input[role="combobox"]');

     await page.click('//*[@id="page-Staffing Plan"]/div[2]/div[2]/div/div[3]/div[2]/div[1]/div[2]/div/div/div[3]/div[1]/div/div[1]/form/div[2]/div/div[2]/div[1]/div/div/input');
     // Fill text=Begin typing for results. NA >> input[role="combobox"]
     await page.fill('//*[@id="page-Staffing Plan"]/div[2]/div[2]/div/div[3]/div[2]/div[1]/div[2]/div/div/div[3]/div[1]/div/div[1]/form/div[2]/div/div[2]/div[1]/div/div/input', '');
     
     // Click text=Advanced Search
     //await page.click('text=Advanced Search');
     // Click text=null You can use wildcard % >> input[type="text"]
     //await page.click('text=null You can use wildcard % >> input[type="text"]');
     // Fill text=null You can use wildcard % >> input[type="text"]
    
     var randomnumber5 = Math.floor(Math.random() * (18))+1;
     await page.fill('//*[@id="page-Staffing Plan"]/div[2]/div[2]/div/div[3]/div[2]/div[1]/div[2]/div/div/div[3]/div[1]/div/div[1]/form/div[2]/div/div[2]/div[1]/div/div/input', randomnumber5.toString() + "company");
     var cmp = "text=" +randomnumber5.toString() + "company";
     console.log(cmp);
     //await page.click(cmp);
     
     //await page.fill('text=null You can use wildcard % >> input[type="text"]', cmp);
     // Click button:has-text("Search")
     //await page.click('button:has-text("Search")');
     // Click a:has-text("14company")
     //var cmpcmp = "a:has-text(\"" +cmp+"\")" ; //body > div.modal.fade.show > div > div > div.modal-body.ui-front > div:nth-child(1) > div > div.form-page > div > div > div > form > div:nth-child(2) > div > div.col-xs-4 > b > a
     //await page.click(cmpcmp);
    // await page.click('body > div.modal.fade.show > div > div > div.modal-body.ui-front > div:nth-child(1) > div > div.form-page > div > div > div > form > div:nth-child(2) > div > div.col-xs-4 > b > a');
     //await page.click('/html/body/div[6]/div/div/div[2]/div[1]/div/div[2]/div/div/div/form/div[2]/div/div[1]/b/a') ;

      var abbr = get_abbr(randomnumber5);
      var f_dep = Department[randomnumber1] + abbr;
      console.log(f_dep);
      await page.fill('//*[@id="page-Staffing Plan"]/div[2]/div[2]/div/div[3]/div[2]/div[1]/div[2]/div/div/div[3]/div[1]/div/div[1]/form/div[3]/div/div[2]/div[1]/div/div/input', f_dep);
      await page.fill('//*[@id="page-Staffing Plan"]/div[2]/div[2]/div/div[3]/div[2]/div[1]/div[2]/div/div/div[3]/div[1]/div/div[2]/form/div[1]/div/div[2]/div[1]/input', date1);
      await page.fill('//*[@id="page-Staffing Plan"]/div[2]/div[2]/div/div[3]/div[2]/div[1]/div[2]/div/div/div[3]/div[1]/div/div[2]/form/div[2]/div/div[2]/div[1]/input' , date2 );
     
      var randomnumber2 = Math.floor(Math.random() * (13));
      await page.click('.col.grid-static-col.col-xs-2.error');
      var str = "text"+ "=" +Designation[randomnumber2];
      await page.click(str);
      //await page.fill('[placeholder="Designation"]', Designation[randomnumber2]);

      await page.click('[placeholder="Vacancies"]');

      await page.fill('[placeholder="Vacancies"]', randomnumber3);
    
      await page.click('[placeholder="Estimated Cost Per Position"]');

      await page.fill('[placeholder="Estimated Cost Per Position"]', randomnumber4);

      await Promise.all([
        page.waitForNavigation(/*{ url: 'http://0.0.0.0:8000/app/staffing-plan/new-staffing-plan-1' }*/),
        page.click('button:has-text("Save")')
      ]);

      //await page.click('button:has-text("Submit")');
      try {
        await page.waitForSelector('button:has-text("Submit")',{ timeout: 3000 }) ;
        await page.click('button:has-text("Submit")');
        // Click :nth-match(:text("Yes"), 3)
        var strh = ":nth-match(:text("+ "\"Yes\"), "+ j.toString(10)+")";
        await Promise.all([
          page.waitForNavigation(/*{ url: 'http://0.0.0.0:8000/app/staffing-plan/plan111' }*/),
          page.click(strh)
        ]);
        j++;
        await page.click('text=Staffing Plan');
       
      } catch (error) {
        console.log("The element didn't appear.")
        await page.goto('http://0.0.0.0:8000/app/staffing-plan');
        j=1;
        continue;
      }
      //await page.click('//html/body/div[8]/div/div/div[3]/div[2]/button[2]');
      //await Promise.all([
        //page.waitForNavigation(/*{ url: 'http://0.0.0.0:8000/app/staffing-plan/lplp' }*/),
        //page.click('text=Yes')
      //]);
  } 
})();
