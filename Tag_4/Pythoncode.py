from selenium.webdriver import Firefox
from selenium.webdriver.firefox.options import Options
from selenium.common.exceptions import NoSuchElementException
 
opts = Options()
browser = Firefox(executable_path=r"C:\geckodriver-v0.27.0\geckodriver.exe",
                  options=opts)
browser.implicitly_wait(3)
 
browser.get('<url>')
search_form = browser.find_element_by_name('adminpw')
search_form.send_keys('<password>')
search_form.submit()
 
try:
    field = browser.find_element_by_name('discardalldefersp')
    field.click()
    browser.implicitly_wait(3)
    submit = browser.find_element_by_name('submit')
    submit.click()
except NoSuchElementException:
    print('No new messages to be discarded')
 
browser.implicitly_wait(3)
 
fields = browser.find_elements_by_xpath("//input[@value='3']")
emails = browser.find_elements_by_xpath('//td[contains(text(),"@")]')
banfields = browser.find_elements_by_xpath('//input[contains(@name,"ban-")]')
 
if len(fields) == 0:
    print('No new requests to be discarded, closing browser')
    browser.close()
else:
    if len(fields) == len(emails) and len(fields) == len(banfields) :
        zipped_list = list(zip(emails, fields, banfields))
 
        for i in zipped_list:
            email, field, banfield = i
            if not email.text.endswith(')'):
                field.click()
                banfield.click()