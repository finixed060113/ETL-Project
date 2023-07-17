## ETL Project - Yu-Gi-Oh Card Analysis

![LogoTGC](https://www.yugioh-card.com/en/wp-content/uploads/2020/04/logo-main.png)


In this ETL (Extract, Transform, Load) project, data extraction of Yu-Gi-Oh cards has been performed using an API. Additionally, the dataset has been enriched by web scraping the information of the top 200 played cards.

Once the data has been collected, it has been cleaned and loaded into a MySQL database for further analysis. The analysis focuses on determining if there is any relationship between the price of the cards and their popularity in the game.
 
## Description

In the "extraction_allcards.ipynb" file, an API was used to retrieve data for all Yu-Gi-Oh cards. Fields such as passcode, name, description, and prices from various stores were extracted. The data was then cleaned and stored in a DataFrame, which was exported to a CSV file.

In the "extraction_slm_topdecks.ipynb" file, Selenium was used to extract information about the top 200 cards used in tournaments. Data such as card name, the number of decks it appears in, and the percentage of usage were obtained. The data was cleaned and stored in a DataFrame, which was also saved to a CSV file.

In the "sql.ipynb" file, SQL-Alchemy was used to load the data from the two CSV files into a MySQL database named "yu_gi_oh_cards". Necessary connections were established, and the data was inserted into the corresponding tables.

In the "analysis.ipynb" file, various visualizations were performed to analyze the gathered information. Graphs were created to visualize the relationship between card price and popularity, as well as the distribution of prices and other relevant aspects.

The goal of this project is to gain insights into the relationship between card prices and popularity in Yu-Gi-Oh through data extraction, cleaning, storage in a database, and subsequent visual analysis.

Note: Make sure to run the mentioned files in the correct order to obtain the expected results.

## Conclusions

The analysis of the data and visualizations has provided us with a deeper understanding of Yu-Gi-Oh cards and their characteristics, such as popularity, prices, and relationships between variables. Some key conclusions are:

1. The most played cards tend to have higher prices, indicating a correlation between popularity and market value.

2. Card archetypes can influence their prices, as some archetypes are more sought after or have special characteristics that make them more valuable.

3. There is significant variation in card prices among different stores, suggesting that prices may be influenced by factors such as supply and demand in each store.

4. When analyzing price distribution by card type, it can be observed that some types have higher average prices, indicating higher demand or rarity.

These conclusions provide valuable insights for a better understanding of the Yu-Gi-Oh card market and can be used to make strategic decisions regarding purchasing, selling, or investing in this domain. It is important to continue exploring and analyzing the data to gain even more insights and knowledge.

Furthermore, for future studies, it would be beneficial to enhance the analysis by incorporating a historical price analysis. By analyzing the price trends over time, we can gain a better understanding of the market dynamics, identify patterns, and make more informed predictions about future price movements. This historical perspective would provide valuable insights into market trends, price fluctuations, and potential investment opportunities.

Additionally, conducting further analysis on other variables, such as card rarity, card condition, and card edition, could contribute to a more comprehensive understanding of the factors influencing card prices. Exploring correlations between these variables and prices can provide valuable insights into collectors' preferences and market dynamics.

In conclusion, by incorporating historical price analysis and expanding the scope of variables considered, future studies can provide more robust and detailed insights into the Yu-Gi-Oh card market, enabling stakeholders to make more informed decisions and capitalize on market opportunities.




