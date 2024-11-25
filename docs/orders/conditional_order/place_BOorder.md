<!-- ## Place Bracket Order -->
A Bracket Order helps traders manage risk by placing a stop loss and a target order together with a regular order. The stop loss order protects against losses, while the target order aims for profitability in the trade.


```python
Endpoint: /api/v1/orders/kart
Method-Type: POST
```

### Request Packet
```json
{
    "client_id": "clintId",
    "device": "WEB",
    "disclosed_quantity": 0,
    "exchange": "NSE",
    "execution_type": "BO",
    "instrument_token": "11915",
    "is_trailing": true,
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
}
```

### Body Params
| FieldName          | Datatype   | Description                                       |
|--------------------|------------|---------------------------------------------------|
| exchange           | `String`     | `NSE`, `BSE`, `NFO`, `MCX`                          |
| instrument_token   | `String`     | Represents the unique id of instrument.           |
| client_id          | `String`     | Represents the unique id of user or username.     |
| order_type         | `String`     |`LIMIT`, `MARKET`, `SL`, `SLM`                           |
| price              | `Float`     | the price at which order needs to be placed                                 |
| quantity           | `Integer`     | total quantity to buy                                 |
| disclosed_quantity | `Integer`     | hidden quantity from the market.                      |
| validity           | `String`     | `DAY`, `IOC`                                        |
| product            | `String`     | `CNC`, `MIS`, `NRML`                                    |
| order_side         | `String`     | `BUY` or `SELL`                                       |
| device             | `String`     | `Web` or `Mobile`                                     |
| user_order_id      | `Integer`     | Represents the unique id of order.                |
| trigger_price      | `Float`     | price at which target is set                                 |
| stop_loss_value    | `Float`     |value at which Sl will get hit                      |
| square_off_value   | `Float`     | value at which position will get squared off.                       |
| trailing_stop_loss | `Float`     | adjusts sell order accordingly to reduce losses.                      |
| is_trailing        | `Boolean`    | `TRUE` or `FALSE`                                     |
| execution_type     | `String`     | `BO`                                                |


### Example
```python
data=pocket.placeConditionalOrder({
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
    },
    "message": "Order place successfully",
    "status": "success"
 }
```

| Parameter           | Description                          |
|---------------|--------------------------------------|
| basket_id     | Identifier for the basket order      |
| message       | Confirmation message for the order   |
| status        | Status of the order modification     |


### Error Response
```json
 {
   "data": {},
   "error_code": 44000,
   "message": "`product` is invalid",
   "status": "error"
 }
```





