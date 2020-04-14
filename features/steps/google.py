from behave import *

use_step_matcher("re")


@given("internet connection is available")
def step_impl(context):
    """
    :type context: behave.runner.Context
    """
    pass


@when("user visits google")
def step_impl(context):
    """
    :type context: behave.runner.Context
    """
    context.browser.get('http://www.google.com')


@then('title should be "Google"')
def step_impl(context):
    """
    :type context: behave.runner.Context
    """
    assert context.browser.title == "Google"
