from behave_webdriver.steps import *
from selenium.webdriver.support.ui import Select
from apps.lib.automation_base import Base
from apps.lib.core_steps import *
import time


base_methods = Base()

@when('I pass data "{text}" into the designer nodes "{label}" with index number "{num}"')
def send_data_into_text_field(context, text, label, num):
    base_methods.input_text_locator(
        context, text, f"(//label[text()='{label}'])[{num}]//parent::div//child::input")