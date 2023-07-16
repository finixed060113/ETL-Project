import pandas as pd
import numpy as np
import requests  

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

