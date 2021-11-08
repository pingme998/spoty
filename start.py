
from selenium import webdriver
from selenium.webdriver.firefox.options import Options
import time
options = Options()
options.headless = True
driver = webdriver.Firefox(options=options, executable_path=r'/usr/bin/geckodriver')
theliveurl = open('/theliveurl', 'r').read()
driver.get(theliveurl)
time.sleep(10)
driver.find_element_by_css_selector('.btn-play > button:nth-child(1)').click()
print(driver.page_source.encode("utf-8"))
print ("Headless Firefox Initialized")
time.sleep(20000)
