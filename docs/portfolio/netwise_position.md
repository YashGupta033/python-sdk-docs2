## Get Net Position
Use the method getPositionNetWise to get the net positions.

```python
pocket.getPositionNetWise()
```

### Response
```json
 {
     "data": [
     {     
     "average_buy_price": 40520,
     "average_price": 0,
     "average_sell_price": 40538,
     "buy_amount": 40520,
     "buy_quantity": 1,
     "cf_buy_amount": 0,
     "cf_buy_quantity": 0,
     "cf_sell_amount": 0,
     "cf_sell_quantity": 0,
     "client_id": "DEMO1",
     "close_price": 0,
     "exchange": "MCX",
     "instrument_token": 222895,
     "ltp": 40520,
     "multiplier": 1,
     "net_amount": 18,
     "net_quantity": 0,
     "previous_close": 40697,
     "pro_cli": "CLIENT",
     "prod_type": 0,
     "product": "NRML",
     "realized_mtm": 0,
     "segment": "FutOpt",
     "sell_amount": 40538,
     "sell_quantity": 1,
     "symbol": "GOLDGUINEA",
     "token": 222895,
     "trading_symbol": "GOLDGUINEA20NOVFUT",
     "v_login_id": "DEMO1"
     }]
     "message": "",
     "status": "success"
  }
```

### Error Response
```json
{
    "data":{
    }
    "error_code": 44000,
    "message": "`type` is invalid",
    "status": "error"
}
```