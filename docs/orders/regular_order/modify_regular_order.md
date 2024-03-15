<!-- ## Modifying a regular order -->
The Modify Order API enables users to make changes in both open and pending orders within the order book. To execute a modification, users must provide the oms_order_id which can be obtained either from the order book or from the response of place order API. User can modify parameters like  price, quantity, order type, and validity. This API facilitates efficient management of orders by allowing users to tailor their orders to meet changing market conditions or trading strategies seamlessly.


```python
res = pocket.modifyOrder(Parameters)
print(res)
```


### Parameters

| FieldName          | Datatype | Description                                    |
|--------------------|----------|------------------------------------------------|
| exchange           | String   | `NSE`, `BSE`, `NFO`, `CDS`, `MCX`                       |
| instrument_token   | String   | Represents the unique id of instrument.        |
| client_id          | String   | Represents the unique id of user  |
| order_type         | String   | `LIMIT`, `MARKET`, `SL`, `SLM`                        |
| price              | Number   | If order_type is market, give value 0 else limit price                              |
| quantity           | Number   | Total quantity of the instrument.                              |
| disclosed_quantity | Number   | hidden quantity from the market                   |
| validity           | String   | `DAY` or `IOC`                                     |
| product            | String   | `CNC`, `MIS`, `NRML`                                 |
| oms_order_id       | Number   | Represents the unique id of order given by oms.|
| trigger_price      | Number   | specified activation threshold, required in SL or SLM orders                              |
| execution_type     | String   | `REGULAR`                          |


### Example Code
```python
data=obj.modifyOrder({
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
    "execution_type": "REGULAR"
    })
```



### Response
```json
{
    "data":{
        "oms_order_id": "202403111778"
    }
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
    }
    "error_code": 45010,
    "message": "Something went wrong",
    "status": "error"
}
```
