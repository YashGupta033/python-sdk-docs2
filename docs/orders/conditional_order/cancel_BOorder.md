<!-- ## Cancel Bracket Order -->
The Cancel Order API lets users cancel an open or pending bracket order. If you want to cancel a pending bracket order in the order book, provide the oms_order_id, exchange_order_id and leg_order_indicator along with other parameters which can be obtained from the order book. Once the cancellation is done successfully, you'll get a response confirming it with a success status code. This API makes managing orders easier, allowing users to quickly remove orders when necessary, making trading more flexible and responsive.

```python
Endpoint: /api/v1/orders/kart/<oms_order_id>
Method-Type: DELETE
```

### Request Packet
```json
{
    "client_id":"clintId",
    "exchange_order_id":"1100000012461398",
    "execution_type":"BO",
    "leg_order_indicator":"ENTRY",
    "oms_order_id":"20240314929",
    "status":"MODIFY_CONFIRMED"
}
```

### Parameters
| FieldName            | Datatype | Description                                    |
|----------------------|----------|------------------------------------------------|
| client_id            | String   | Represents the unique id of user or username. |
| oms_order_id        | Number   | Represents the unique id of order.            |
| execution_type       | String   | BO                                             |
| exchange_order_id    | Number   | Represents the unique id of order.            |
| leg_order_indicator  | String   | specifies buy/sell SL or target order cancellation `Entry`, `Second`, or `Third`                        |
| status               | String   | `Confirmed`                                      |


### Example
```python
data=obj.cancelConditionalOrder(
{
    "client_id":clintId,
    "exchange_order_id":"1100000012461398",
    "execution_type":"BO",
    "leg_order_indicator":"ENTRY",
    "oms_order_id":"20240314929",
    "status":"MODIFY_CONFIRMED"
})
```


### Response
```json
{
    "data": {
        "basket_id": "",
        "message": "Order Cancelled Successfully"
    },
    "message": "",
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
    "message": "`exchange_order_id` can't be blank",
    "status": "error"
}
```


