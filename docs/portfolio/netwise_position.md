<!-- ## Get Net Position -->
Use the getPositionNetWise API to get the net positions present in the account.

```python
pocket.getPositionNetWise() # No parameters needs to be passed
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
     }],
     "message": "",
     "status": "success"
  }
```

### Response Parameters
| Key           | Description                                            |
|--------------------|--------------------------------------------------------|
| average_buy_price  | The average price at which the commodity was bought.  |
| average_price      | The average price, if applicable.                     |
| average_sell_price | The average price at which the commodity was sold.    |
| buy_amount         | The amount spent on buying the commodity.             |
| buy_quantity       | The quantity of the commodity bought.                 |
| cf_buy_amount      | Cumulative funds spent on buying the commodity.       |
| cf_buy_quantity    | Cumulative quantity of the commodity bought.          |
| cf_sell_amount     | Cumulative funds received from selling the commodity. |
| cf_sell_quantity   | Cumulative quantity of the commodity sold.            |
| client_id          | The identifier for the client.                        |
| close_price        | The closing price of the commodity.                   |
| exchange           | The exchange where the commodity is traded.           |
| instrument_token   | The token representing the instrument.                |
| ltp                | The last traded price of the commodity.               |
| multiplier         | The multiplier for the commodity.                     |
| net_amount         | The net amount, if applicable.                        |
| net_quantity       | The net quantity, if applicable.                      |
| previous_close     | The previous closing price of the commodity.          |
| pro_cli            | Indicates if the client is professional.              |
| prod_type          | The type of product.                                  |
| product            | The product category.                                 |
| realized_mtm       | The realized mark-to-market value.                    |
| segment            | The segment where the commodity is traded.           |
| sell_amount        | The amount received from selling the commodity.       |
| sell_quantity      | The quantity of the commodity sold.                   |
| symbol             | The symbol representing the commodity.                |
| token              | The token representing the commodity.                 |
| trading_symbol     | The trading symbol of the commodity.                  |
| v_login_id         | The login ID for the client.                          |


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