## Get Demat Holdings
To get alll the demat holdings, use the getDematHoldings API

```python
res = pocket.getDematHoldings()
```

### Response
```json
{
  "data": {
    "holdings": [
      {
        "branch_code": "",
        "buy_avg": 240.2,
        "buy_avg_mtm": 277.7500000000006,
        "client_id": "DEMO1",
        "exchange": "NSE",
        "free_quantity": 55,
        "instrument_details": {
          "exchange": 1,
          "instrument_name": "EQ",
          "instrument_token": 3045,
          "trading_symbol": "SBIN-EQ"
        },
        "isin": "INE062A01020",
        "ltp": 245.25,
        "pending_quantity": 0,
        "pledge_quantity": 0,
        "previous_close": 240.2,
        "quantity": 55,
        "symbol": "SBIN",
        "t0_price": 0,
        "t0_quantity": 0,
        "t1_price": 0,
        "t1_quantity": 0,
        "t2_price": 0,
        "t2_quantity": 0,
        "today_pledge_quantity": 0,
        "token": 3045,
        "trading_symbol": "SBIN",
        "transaction_type": "",
        "used_quantity": 0
      }
    ]
  },
  "message": "",
  "status": "success"
}
```

### Response Parameters

| JSON Key               | Description                                                                        |
|------------------------|------------------------------------------------------------------------------------|
| branch_code            | The branch code associated with the client.                                       |
| buy_avg                | The average buying price for the instrument.                                       |
| buy_avg_mtm            | The average buying price for the instrument on a mark-to-market basis.             |
| client_id              | The unique identifier of the client.                                               |
| exchange               | The exchange where the instrument is traded.                                       |
| free_quantity          | The quantity of the instrument available for trading without any restrictions.     |
| instrument_details     | Details about the instrument, including exchange, instrument name, token, and trading symbol. |
| isin                   | The International Securities Identification Number (ISIN) of the instrument.        |
| ltp                    | The last traded price of the instrument.                                           |
| pending_quantity       | The quantity of pending orders for the instrument.                                 |
| pledge_quantity        | The quantity of the instrument pledged.                                            |
| previous_close         | The previous closing price of the instrument.                                      |
| quantity               | The total quantity of the instrument.                                              |
| symbol                 | The symbol or ticker of the instrument.                                            |
| t0_price               | The price at T0 (previous trading day).                                           |
| t0_quantity            | The quantity at T0 (previous trading day).                                        |
| t1_price               | The price at T1 (two trading days ago).                                           |
| t1_quantity            | The quantity at T1 (two trading days ago).                                        |
| t2_price               | The price at T2 (three trading days ago).                                         |
| t2_quantity            | The quantity at T2 (three trading days ago).                                      |
| today_pledge_quantity  | The quantity of the instrument pledged today.                                     |
| token                  | The unique token or identifier of the instrument.                                  |
| trading_symbol         | The trading symbol of the instrument.                                              |
| transaction_type       | The type of transaction (if applicable).                                           |
| used_quantity          | The quantity of the instrument used in transactions.                               |





### Error Response
```json
{
    "data":{
    },
    "error_code": 44000,
    "message": "`type` is invalid",
    "status": "error"
}
```