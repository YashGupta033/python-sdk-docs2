<!-- ## Search Scrip -->
In Search Scrip, detailes of searched instruments like: token, exchange, company name, display name etc. is showed.

## Python Code
```python
pocket.searchScrip(Parameters)
```

### Parameters
Takes instrument name as input parameter.


### Example
```python
data = obj.searchScrip('Bank Nifty')
```


## Response
```json
{
  "error": {
    "code": 0,
    "message": ""
  },
  "result": [
    {
      "token": "26009",
      "exchange": "NSE",
      "company": "Nifty Bank",
      "symbol": "Nifty Bank",
      "trading_symbol": "Nifty Bank",
      "display_name": "Nifty Bank",
      "score": 0.24,
      "close_price": "",
      "is_tradable": false,
      "segment": "Indices",
      "tag": "",
      "expiry": "",
      "alternate": {}
    },
    {
      "token": "7361",
      "exchange": "NSE",
      "company": "SBI-ETF NIFTY BANK",
      "symbol": "SETFNIFBK",
      "trading_symbol": "SETFNIFBK-EQ",
      "display_name": "SETFNIFBK",
      "score": 0.210088,
      "isin": "INF200KA1580",
      "close_price": "477.73",
      "is_tradable": true,
      "segment": "Equity",
      "tag": "ETF",
      "expiry": "",
      "alternate": {
        "token": "199116",
        "exchange": "BSE",
        "company": "INAV SBI-ETF NIFTY BANK",
        "symbol": "SETFNIFINAV",
        "trading_symbol": "SETFNIFINAV-B",
        "display_name": "SETFNIFINAV",
        "isin": "INF200KA1580",
        "segment": "Equity"
      }
    },
    {
      "token": "199116",
      "exchange": "BSE",
      "company": "INAV SBI-ETF NIFTY BANK",
      "symbol": "SETFNIFINAV",
      "trading_symbol": "SETFNIFINAV-B",
      "display_name": "SETFNIFINAV",
      "score": 0.190087,
      "isin": "INF200KA1580",
      "close_price": "",
      "is_tradable": true,
      "segment": "Equity",
      "tag": "",
      "expiry": "",
      "alternate": {
        "token": "7361",
        "exchange": "NSE",
        "company": "SBI-ETF NIFTY BANK",
        "symbol": "SETFNIFBK",
        "trading_symbol": "SETFNIFBK-EQ",
        "display_name": "SETFNIFBK",
        "isin": "INF200KA1580",
        "close_price": "477.73",
        "segment": "Equity"
      }
    },
    {
      "token": "26025",
      "exchange": "NSE",
      "company": "Nifty PSU Bank",
      "symbol": "Nifty PSU Bank",
      "trading_symbol": "Nifty PSU Bank",
      "display_name": "Nifty PSU Bank",
      "score": 0,
      "close_price": "",
      "is_tradable": false,
      "segment": "Indices",
      "tag": "",
      "expiry": "",
      "alternate": {}
    },
    {
      "token": "26047",
      "exchange": "NSE",
      "company": "Nifty Pvt Bank",
      "symbol": "Nifty Pvt Bank",
      "trading_symbol": "Nifty Pvt Bank",
      "display_name": "Nifty Pvt Bank",
      "score": 0,
      "close_price": "",
      "is_tradable": false,
      "segment": "Indices",
      "tag": "",
      "expiry": "",
      "alternate": {}
    }
  ]
}
```

| Key          | Description                                                                                                     |
|--------------|-----------------------------------------------------------------------------------------------------------------|
| error        | Contains error details, if any, encountered during the API request.                                             |
| code         | The error code.                                                                                                 |
| message      | The error message.                                                                                              |
| result       | Contains an array of objects representing information about stocks or assets.                                    |
| token        | The unique identifier/token of the stock.                                                                       |
| exchange     | The exchange where the stock is traded.                                                                         |
| company      | The name of the company associated with the stock.                                                              |
| symbol       | The symbol of the stock.                                                                                        |
| trading_symbol | The trading symbol of the stock.                                                                                |
| display_name | The display name of the stock.                                                                                  |
| score        | The score associated with the stock.                                                                            |
| isin         | The ISIN (International Securities Identification Number) of the stock.                                         |
| close_price  | The closing price of the stock.                                                                                 |
| is_tradable  | Indicates if the stock is tradable.                                                                             |
| segment      | The segment to which the stock belongs (e.g., Equity).                                                          |
| tag          | Any additional tag or label associated with the stock.                                                           |
| expiry       | The expiry date of the stock, if applicable.                                                                    |
| alternate    | Contains information about an alternate trading option for the stock, such as trading on a different exchange.  |



## Error Response
```json
{
    "error":{
        "code": 0,
        "message": ""
    }
    "result":{
    }
}
```