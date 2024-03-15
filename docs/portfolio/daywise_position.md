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