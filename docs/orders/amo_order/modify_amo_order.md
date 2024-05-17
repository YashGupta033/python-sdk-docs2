<!-- ## Modifying a AMO order -->
The Modify Order API enables users to make changes in both open or pending orders within the order book. To execute a modification, users must provide the oms_order_id which can be obtained either from the order book or from the response of place order API. User can modify parameters like  price, quantity, order type, and validity. This API facilitates efficient management of orders by allowing users to tailor their orders to meet changing market conditions or trading strategies seamlessly.


```python
Endpoint: api/v1/orders
Method-Type: PUT
```

### Request Packet
```json
{
    "exchange": "NSE",
    "instrument_token": "11915",
    "client_id": "clientId",
    "order_type": "LIMIT",
    "price": 13,
    "quantity": 3,
    "disclosed_quantity": 0,
    "validity": "DAY",
    "product": "CNC",
    "order_side": "BUY",
    "device": "WEB",
    "user_order_id": 1,
    "trigger_price": 0,
    "oms_order_id":"202403111778",
    "execution_type": "AMO"
}
```


### Body Params

| FieldName          | Datatype | Description                                    |
|--------------------|----------|------------------------------------------------|
| exchange           | `String`   | Name of the exchange where the order is being placed. Possible values include `NSE`, `BSE`, `NFO`, `CDS`, `MCX`           |
| instrument_token   | `String`   | The unique ID of the financial instrument.        |
| client_id          | `String`   | Represents the unique id of user.  |
| order_type         | `String`   | `LIMIT`, `MARKET`, `SL`, `SLM`                        |
| price              | `Float`  | If order_type is market, give value 0 else limit price                              |
| quantity           | `Integer`   | Total quantity of the instrument.                              |
| disclosed_quantity | `Integer`  | hidden quantity from the market                   |
| validity           | `String`  | `DAY` or `IOC`                                     |
| product            | `String`   | `CNC`, `MIS`, `NRML`                                 |
| oms_order_id       | `Integer`   | Represents the unique id of order given by oms.|
| trigger_price      | `Integer`   | specified activation threshold, required in SL or SLM orders                              |
| execution_type     | `String`  | `AMO`                          |


### Example Code
```python
data=pocket.modifyOrder({
    "exchange": "NSE",
    "instrument_token": "11915",
    "client_id": "clientId",
    "order_type": "LIMIT",
    "price": 13,"quantity": 3,
    "disclosed_quantity": 0,
    "validity": "DAY",
    "product": "CNC",
    "order_side": "BUY",
    "device": "WEB",
    "user_order_id": 1,
    "trigger_price": 0,
    "oms_order_id":"202403111778",
    "execution_type": "AMO"
    })
```



### Response
```json
{
    "data":{
        "oms_order_id": "202403111778"
    },
    "message": "Order modification request submitted",
    "status": "success"
}
```

| Key           | Description                                |
|---------------|--------------------------------------------|
| oms_order_id  | The ID assigned to the order in the Order Management System. |
| message       | A message indicating the result of the order placement. |
| status        | The status of the operation (success/failure). |

### Error Response 
```json
{
    "data":{
    },
    "error_code": 45010,
    "message": "Something went wrong",
    "status": "error"
}
```
