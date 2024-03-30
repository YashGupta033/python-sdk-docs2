The Straddle Chain API facilitates retrieving data on straddle options. Utilizing the straddle chain assists in making informed decisions regarding the selection of appropriate straddle options to purchase. This tool is valuable for traders seeking to analyze and compare various straddle strategies based on market conditions and risk tolerance.


### Request Parameters
| FieldName | Datatype | Description |
| --- | --- | --- |
| exchange |  string |  nse or bse |
| token |  integer |  instrument token |
| expiry |  string |  expiry of option |
| total_strikes |  int |  total strikes in option chain |


### Example
response = pocket.straddle_chain('NSE', 26000, '28MAR24', 50)




### Response Parameters



    # data = pocket.execute_strangle('NSE', 'BUY', 26000, 22300, 21900, '28MAR24', 1)
    # print(data)

    # data = pocket.execute_bullcallspread('NSE', 26000, 22500, '28MAR24', 2)
    # print(data)

    # data = pocket.execute_bullputspread('NSE', 26000, 22550, 22200, '28MAR24', 2)
    # print(data)

    # data = pocket.execute_callratiobackspread('NSE', 26000, 22500, 22250, '28MAR24', 2)
    # print(data)

    # data = pocket.execute_putratiobackspread('NSE', 26000, 22500, 22250, '28MAR24', 2)
    # print(data)

    data = pocket.execute_ironcondor('NSE', 'Short', 26000, 22250, 22300, 22500, 22550, '04APR24', 2)
    print(data)