<!-- ## Place Bracket Order -->
A Bracket Order helps traders manage risk by placing a stop loss and a target order together with a regular order. The stop loss order protects against losses, while the target order aims for profitability in the trade.
```python
res = pocket.placeConditionalOrder(Parameters)
print(res)
```

### Parameters
| FieldName          | Datatype   | Description                                       |
|--------------------|------------|---------------------------------------------------|
| exchange           | String     | `NSE`, `BSE`, `NFO`, `CDS`, `MCX`                          |
| instrument_token   | String     | Represents the unique id of instrument.           |
| client_id          | String     | Represents the unique id of user or username.     |
| order_type         | String     |`LIMIT`, `MARKET`, `SL`, `SLM`                           |
| price              | Number     | It can't be Zero.                                 |
| quantity           | Number     | It can't be Zero.                                 |
| disclosed_quantity | Number     | It can't be negative number.                      |
| validity           | String     | `DAY`, `IOC`                                        |
| product            | String     | `CNC`, `MIS`, `NRML`                                    |
| order_side         | String     | `BUY` or `SELL`                                       |
| device             | String     | `Web` or `Mobile`                                     |
| user_order_id      | Number     | Represents the unique id of order.                |
| trigger_price      | Number     | It can't be Zero.                                 |
| stop_loss_value    | Number     | It can't be negative number.                      |
| square_off_value   | Number     | It can't be negtive number.                       |
| trailing_stop_loss | Number     | It can't be negative number.                      |
| is_trailing        | Boolean    | `TRUE` or `FALSE`                                     |
| execution_type     | String     | `BO`                                                |


### Example
```python
data=obj.placeConditionalOrder( {
    "client_id": clintId,
    "device": "WEB",
    "disclosed_quantity": 0,
    "exchange": "NSE",
    "execution_type": "BO",
    "instrument_token": "11915",
    "is_trailing": True,
    "order_side": "BUY",
    "order_type": "LIMIT",
    "price": 18.3,
    "product": "MIS",
    "quantity": 1,
    "square_off_value": 1,
    "stop_loss_value": 1,
    "trailing_stop_loss": "0.05",
    "trigger_price": 0,
    "user_order_id": 10002,
    "validity": "DAY"
})
```


### Response
```json
{
    "data":{
        "data":{
            "basket_id": "202403132873",
            "message": "basket Order Placed Successfully"
        }
    }
    "message": "Order place successfully",
    "status": "success"
 }
```

### Error Response
```json
 {
   "data": {},
   "error_code": 44000,
   "message": "`product` is invalid",
   "status": "error"
 }
```





