from cProfile import label
from behave import *
from urllib.parse import urljoin
from selenium.webdriver.common.action_chains import ActionChains
from behave_webdriver.steps import *
from apps.lib.automation_base import Base
from apps.finder.features.steps.locators import Locators
from apps.lib.core_steps import *


elements = Locators()

base_methods = Base()


@then('I verified the count of the emails "{count}" using the element "{element}"')
def domain_validations(context, count, element):
    emails = context.behave_driver.find_elements_by_xpath(element)
    assert len(emails) == int(count)


@when('I scroll the form using infinity scroll')
def scroll_in_the_form(context):
    base_methods.move_to_element(context, elements.move_to_25th_row)


@when('I click on create list "{text}" button')
def click_create_list_button(context, text):
    base_methods.click_element(
        context, f"//div[@id='createListForm']//fieldset[@id='listname']//div//button[@type='submit'][normalize-space()='{text}']")


@then('I expect error message as "{text}"')
def verify_error_messages(context, text):
    base_methods.element_visible(
        context, f"//small[normalize-space()='{text}']")


@then('I expect error message "{text}" is visible')
def verify_error_messages(context, text):
    base_methods.element_visible(
        context, f"//span[contains(@class,'text-danger editcestor::tr//descendant::td[3]//span[@title='{text}']")


@then('I expect the free domain error message as "{text}"')
def verify_free_domain_error_message(context, text):
    base_methods.element_visible(context, f"//td[normalize-space()='{text}']")


@when('I click on element "{text}"')
def domain_verify(context, text):
    base_methods.action_click(
        context, f"//tbody/tr[1]/td[3]/div[1]/div[1]/a[text()='Verify']")


@when('I click on the button text "{text}"')
def add_to_crm(context, text):
    base_methods.action_click(
        context, f"//p[@role='button']")


@when('I click on the button having text "{text}"')
def save_crm(context, text):
    base_methods.action_click(
        context, f"//button[@type='submit'][normalize-space()='Save']")


@when('I click on "{text}" icon in contacts')
def step_impl(context, text):
    base_methods.action_click(
        context, f"//h3[contains(text(),'Contacts')]//following::span[@title='{text}']")


@when('I select category "{attr}" "{text}" in domainsearch')
def click_on_drop_down(context, attr, text):
    base_methods.select_option_by(context, attr, text, f"//select[@class='mr-2 select-option custom-select custom-select-sm']")


@when('I add "{text}" into search field "{header}"')
def add_input(context, text, header):
    base_methods.input_text_locator(
        context, text, f"//div[contains(text(),'{header}')]//preceding::input[@placeholder='Search'][1]")

 # new scenarios


@when('I click on the linktext with "{text}"')
def step_impl(context, text):
    base_methods.action_click(context, f"//a[contains(text(),'Company Search')]")


@when('I click on the linktext from "{text}"')
def given_text(context, text):
    base_methods.action_click(context, f"//a[normalize-space()='{text}']")


@when('I can add "{name}" into the inputfield "{placeholder}"')
def step_impl(context, name, placeholder):
    base_methods.input_data_with_contains_placeholder(context, name, placeholder)


@when('I click on the create list "{text}" button')
def click_button_list(context, text):
    base_methods.action_click(context, f"//button[text()='{text}']")


@then('I show that element text "{text}" is visible')
def step_impl(context, text):
    base_methods.element_visible(context, f"//*[normalize-space()='{text}']")


@when('I click on the icon "{title}" button')
def step_impl(context, title):
    base_methods.action_click(context, f"//tbody/tr[1]//child::span[@title='{title}']")


@when('I click on the list using "{text}" button')
def click_button_confirm(context, text):
    base_methods.click_button_text(context, text)


@when('I click on the element contains from "{text}"')
def step_impl(context, text):
    base_methods.action_click(context, f"//*[contains(text(),'{text}')]")


@when(u'I click on the companysearch using text "{text}" button')
def click_button_confirm(context, text):
    base_methods.click_button_text(context, text)
