from selenium import webdriver

# def before():
#     driver = webdriver.Chrome()
#
# def after():
#     driver = webdriver.Remote(
#         command_executor='https://key:secret@hub.testingbot.com/wd/hub',
#         desired_capabilities=desired_caps)
#

def before_all(context):
    desired_capabilities = webdriver.DesiredCapabilities.CHROME
    desired_capabilities['version'] = 'latest'
    desired_capabilities['platform'] = 'WINDOWS'
    desired_capabilities['name'] = 'Testing Selenium with Behave'
    desired_capabilities['client_key'] = 'key'
    desired_capabilities['client_secret'] = 'secret'

    context.browser = webdriver.Remote(
        desired_capabilities=desired_capabilities,
        command_executor="https://hub.testingbot.com/wd/hub"
    )


def after_all(context):
    context.browser.quit()
