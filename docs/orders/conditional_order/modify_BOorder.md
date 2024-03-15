<!-- ## Modify Bracket Order -->
The Modify Order API enables users to make changes in the bracket order, both open and pending within the order book. To execute a modification, users must provide the oms_order_id, last_activity_reference and exchange_order_id which can be obtained from the order book. User can modify parameters like price, quantity, order type, and validity. This API facilitates efficient management of orders by allowing users to tailor their orders to meet changing market conditions or trading strategies seamlessly.


```python
pocket.modifyConditionalOrder(Parameters)
```

### Parameters
| FieldName                | Datatype | Description                                       |
|--------------------------|----------|---------------------------------------------------|
| exchange                 | String   | `NSE`, `BSE`, `NFO`, `CDS`, `MCX`                          |
| instrument_token         | String   | Represents the unique id of instrument.           |
| client_id                | String   | Represents the unique id of user or username.     |
| order_type               | String   | `LIMIT`, `MARKET`, `SL`, `SLM`                           |
| price                    | Number   | It can't be Zero.                                 |
| quantity                 | Number   | It can't be Zero.                                 |
| disclosed_quantity       | Number   | It can't be negative number.                      |
| validity                 | String   | `DAY`, `IOC`                                        |
| product                  | String   | `CNC`, `MIS`, `NRML`                                    |
| user_order_id            | Number   | Represents the unique id of order.                |
| filled_quantity          | Number   | Number of quantity which are traded.              |
| remaining_quantity       | Number   | Number of quantity which are pending.             |
| last_activity_reference  | Number   | Unique id of Last modification.                   |
| trigger_price            | Number   | It can't be Zero.                                 |
| stop_loss_value          | Number   | It can't be negative number.                      |
| square_off_value         | Number   | It can't be negative number.                      |
| trailing_stop_loss       | Number   | It can't be negative number.                      |
| is_trailing              | Boolean  | `TRUE` or `FALSE`                                     |
| execution_type           | String   | `BO`                                                |


### Example 
```python
data=obj.modifyConditionalOrder( {
  "client_id": "HI0009",
  "disclosed_quantity": 0,
  "exchange": "NSE",
  "exchange_order_id": "1100000007437522",
  "execution_type": "BO",
  "filled_quantity": 0,
  "instrument_token": 14366,
  "is_trailing":False,
  "last_activity_reference": "1394876196271146000",
  "oms_order_id": "20240314659",
  "order_type": "LIMIT",
  "price": 11.5,
  "quantity": 1,
  "product": "MIS",
  "remaining_quantity": 1,
  "square_off_value": 0.9,
  "stop_loss_value": 0.06,
  "trailing_stop_loss": 0,
  "trigger_price": 0,
  "validity": "DAY",
})
```

### Response
```json
{
    "data": {
        "basket_id": "",
        "message": "basket Order modified Successfully"
    },
    "message": "Order modified successfully",
    "status": "success"
}
```

### Error Response
```json
{
    "data": {},
    "error_code": 44000,
    "message": "`trigger_price` is invalid",
    "status": "error"
}
```
