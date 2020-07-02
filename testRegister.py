from django.test import TestCase
from selenium import webdriver
import unittest
# Create your tests here.

class RegisterTest10(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.driver = webdriver.Chrome()
        cls.driver.implicitly_wait(5)
        cls.driver.maximize_window()
        cls.driver.get('http://localhost/i-Learn/User/register.html')

    def testAdd(self):
        add_account = self.driver.find_element_by_id('us')
        add_account.clear()
        add_account.send_keys('Q')

        add_password = self.driver.find_element_by_id('ps')
        add_password.clear()
        add_password.send_keys('123456')

        add_truename=self.driver.find_element_by_id('tn')
        add_truename.clear()
        add_truename.send_keys('QW')

        add_tel = self.driver.find_element_by_id('tel')
        add_tel.clear()
        add_tel.send_keys('13594359172')

        add_email = self.driver.find_element_by_id('email')
        add_email.clear()
        add_email.send_keys('22@qq.com')

        add_bd = self.driver.find_element_by_id('bd')
        add_bd.clear()
        add_bd.send_keys('1999-02-01')

        add_nickname= self.driver.find_element_by_id('nickname')
        add_nickname.clear()
        add_nickname.send_keys('0')

        add_button = self.driver.find_element_by_id('btnSubmit')
        add_button.click()
        #print('用户名或密码错误')

    @classmethod
    def tearDownClass(cls):
        # cls.driver.quit()
        pass


if __name__ == '__main__':
    unittest.main(verbosity=2)