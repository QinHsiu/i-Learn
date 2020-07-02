from django.test import TestCase
from selenium import webdriver
import unittest
# Create your tests here.

class LoginTest1(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.driver = webdriver.Chrome()
        cls.driver.implicitly_wait(5)
        cls.driver.maximize_window()
        cls.driver.get('http://localhost/i-Learn/Public/login.html')

    def testlogin(self):
     
        login_account = self.driver.find_element_by_id('us')
        login_account.clear()
        login_account.send_keys('QinHsiu')
    
        login_password = self.driver.find_element_by_id('ps')
        login_password.clear()
        login_password.send_keys('123456')
        login_yzm = self.driver.find_element_by_id('yzm')
        login_yzm.clear()
        login_yzm.send_keys('123456')
        login_button = self.driver.find_element_by_id('login')
        login_button.click()
        #print('用户名或密码错误')

    @classmethod
    def tearDownClass(cls):
        # cls.driver.quit()
        pass


if __name__ == '__main__':
    unittest.main(verbosity=2)