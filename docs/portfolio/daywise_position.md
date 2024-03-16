## Get Day Wise Position
To get positions of the day, use getPositionDayWise method.

```python
pocket.getPositionDayWise()
```

### Response
```json
{
    "data": [
    {
       "average_buy_price": 14.7,
       "average_price": 0,
       "average_sell_price": 0,
       "buy_amount": 14.7,
       "buy_quantity": 1,
       "cf_buy_amount": 0,
       "cf_buy_quantity": 0,
       "cf_sell_amount": 0,
       "cf_sell_quantity": 0,
       "client_id": "DEMO1",
       "close_price": 0,
       "exchange": "NSE",
       "instrument_token": 11915,
       "ltp": 14.6,
       "multiplier": 1,
       "net_amount": -14.7,
       "net_quantity": 1,
       "previous_close": 14.65,
       "pro_cli": "CLIENT",
       "prod_type": 2,
       "product": "MIS",
       "realized_mtm": 0,
       "segment": "Capital",
       "sell_amount": 0,
       "sell_quantity": 0,
       "symbol": "YESBANK",
       "token": 11915,
       "trading_symbol": "YESBANK-EQ",
       "v_login_id": "DEMO1"
    }]
    "message": "",
    "status": "success"
   }
```

### Response Parameter

| Field Name          | Description                                         |
|---------------------|-----------------------------------------------------|
| average_buy_price   | Average buy price of the instrument.                |
| average_price       | Average price of the instrument.                    |
| average_sell_price  | Average sell price of the instrument.               |
| buy_amount          | Amount spent on buying the instrument.              |
| buy_quantity        | Quantity purchased of the instrument.               |
| cf_buy_amount       | Cumulative buy amount of the instrument.            |
| cf_buy_quantity     | Cumulative buy quantity of the instrument.          |
| cf_sell_amount      | Cumulative sell amount of the instrument.           |
| cf_sell_quantity    | Cumulative sell quantity of the instrument.         |
| client_id           | Client identifier.                                  |
| close_price         | Closing price of the instrument.                    |
| exchange            | Exchange where the instrument is traded.            |
| instrument_token    | Token identifying the instrument.                   |
| ltp                 | Last traded price of the instrument.                |
| multiplier          | Multiplier for the instrument.                      |
| net_amount          | Net amount considering buy and sell transactions.   |
| net_quantity        | Net quantity considering buy and sell transactions.|
| previous_close      | Previous closing price of the instrument.          |
| pro_cli             | Client category (e.g., CLIENT, PRO).               |
| prod_type           | Product type code.                                  |
| product             | Product type (e.g., MIS).                           |
| realized_mtm        | Realized Mark-to-Market (MTM) value.                |
| segment             | Market segment where the instrument is traded.     |
| sell_amount         | Amount received from selling the instrument.        |
| sell_quantity       | Quantity sold of the instrument.                    |
| symbol              | Symbol of the instrument.                           |
| token               | Token identifying the instrument.                   |
| trading_symbol      | Trading symbol of the instrument.                   |
| v_login_id          | Virtual login identifier.                           |


### Error Response
```json
{
  "status": "error",
  "message": "Request forbidden",
  "error_code": 40000,
  "data":{
  }
}
```