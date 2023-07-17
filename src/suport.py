import pandas as pd
import numpy as np
import requests  
from selenium import webdriver # webdriver allows browser handling
from webdriver_manager.chrome import ChromeDriverManager # allows installation and keeping Chrome driver updated
from selenium.webdriver.common.keys import Keys # allows simulating keyboard keys
from selenium.webdriver.chrome.options import Options # allows configuring Chrome driver options such as incognito mode or maximizing the window
from time import sleep # pauses between code execution

def changenumber(df,column):
    '''
    The function fills the missing values in the specified column with zeros (0) and then converts the resulting values to integers.
    Args:
        df (pandas.DataFrame): The DataFrame to modify.
        column (str): The name of the column to fill with 0.
    '''
    df[column] = df[column].fillna(0).astype(int)
    

def changestring(df, column):
    '''
    Fill missing values in a specific column of a DataFrame with the string "None".
    
    Args:
        df (pandas.DataFrame): The DataFrame to modify.
        column (str): The name of the column to fill with "None".
    '''
    df[column] = df[column].fillna("None")


def get_api(url):
    '''
    Function to make the API call.
    '''
    res = requests.get(url) 
    if res.status_code == 200:  
        return res.json() 
    else:  
        return f"Error {res.status_code}"
    

def get_chrome_options():
    '''
    Returns a configured instance of the Options class for Chrome WebDriver.

    The function sets up various options for the Chrome browser:
    - Excludes the 'enable-automation' switch to bypass automation detection.
    - Disables the Automation Extension to avoid detection by websites.
    - Maximizes the browser window when launched.
    - Specifies a user data directory for Chrome to maintain separate profiles or session data.
    - Opens the browser in incognito mode to avoid storing browsing history or cookies.

    Returns:
    options (Options): Configured instance of the Options class.
    '''
    options = Options()
    options.add_experimental_option('excludeSwitches', ['enable-automation'])
    options.add_experimental_option('useAutomationExtension', False)
    options.add_argument('--start-maximized')
    options.add_argument('user-data-dir=selenium')
    options.add_argument('--incognito')
    return options


