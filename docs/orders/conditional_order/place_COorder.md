<!-- # Place Cover Order -->

A Cover Order helps traders protect against losses by placing a stop loss order together with a regular order. This means that if the price moves in an unexpected way, the stop loss order kicks in to limit losses. When buying a Cover Order, the limit price must be higher than the stop-loss trigger price. Conversely, when selling a Cover Order, the limit price must be lower than the stop loss trigger price.


```python
res = pocket.placeConditionalOrder(Parameters)
print(res)
```

### Parameters

| FieldName          | Datatype   | Description                                         |
|--------------------|------------|-----------------------------------------------------|
| exchange           | String     | `NSE`, `BSE`, `NFO`, `CDS`, `MCX`                            |
| instrument_token   | String     | Represents the unique id of instrument.             |
| client_id          | String     | Represents the unique id of user or username.       |
| order_type         | String     | `LIMIT`, `MARKET`, `SL`, `SLM`                             |
| price              | Number     | the price at which order needs to be placed                                  |
| quantity           | Number     | total quantity to buy                                    |
| disclosed_quantity | Number     | hidden quantity from the marketnumber.                        |
| validity           | String     | `DAY` or `IOC`                                          |
| product            | String     | `CNC`, `MIS`, `NRML`                                      |
| order_side         | String     | `BUY` or `SELL`                                         |
| device             | String     | `Web` or `Mobile`                                       |
| user_order_id      | Number     | Represents the unique id of order.                  |
| execution_type     | String     | `CO`                                                  |
| stop_loss_value    | Number     | value at which Sl will get hit                        |
| trailing_stop_loss | Number     | It can't be negative number.                        |



### Example 
```python
response = pocket.placeConditionalOrder( {
    "exchange": "NSE",
    "instrument_token": "14366",
    "client_id": "clientId",
    "order_type": "LIMIT",
    "price": 13,
    "quantity": 1,
    "disclosed_quantity": 0,
    "validity": "DAY"
    "product": "MIS",
    "order_side": "BUY",
    "device": "WEB",
    "execution_type": "CO",
    "is_trailing": True,
    "square_off_value": 1,
    "stop_loss_value": 12,
    "trailing_stop_loss": "0.05",
    "trigger_price": 0,
    "user_order_id": 10002,
})
```


## Response
```json
{
    "data":{
        "data":{
            "basket_id": "20210531-23",
            "message": "basket Order Placed Successfully"}
        }
        "message": "Order place successfully",
        "status": "success"
 }
```

## Error Response
```json
{
    "data": {},
    "error_code": 44000,
    "message": "`product` is invalid",
    "status": "error"
 }
```

| Error Code | Description                                                |
|------------|------------------------------------------------------------|
| 44000      | In case of any of the parameter like `Exchange`,  `order_type`, `product` being invalid `or` order price is out of DPR range.|
| 45000      | In case of Invalid `Price` or `Quantity`.                                        |
| 45010      | `Something Went Wrong` message occurs if you have given wrong instrument token                             |