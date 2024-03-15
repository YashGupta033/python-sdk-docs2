<!-- ## Cancel Cover Order -->

The Cancel Order API lets users cancel an open or pending cover order. If you want to cancel a pending cover order in the order book, provide the oms_order_id, exchange_order_id and leg_order_indicator along with other parameters which can be obtained from the order book. Once the cancellation is done successfully, you'll get a response confirming it with a success status code. This API makes managing orders easier, allowing users to quickly remove orders when necessary, making trading more flexible and responsive.

```python
pocket.cancelConditionalOrder(Parameters)
```



### Parameters
| FieldName             | Datatype | Description                                    |
|-----------------------|----------|------------------------------------------------|
| client_id             | String   | Represents the unique id of user |
| oms_order_id         | Number   | Represents the unique id of order.            |
| execution_type        | String   | `CO`                                             |
| exchange_order_id     | Number   | Represents the unique id of order.            |
| leg_order_indicator   | String   | `Entry` or `Third`                                 |


### Example 
```python
response = pocket.cancelConditionalOrder({"client_id":clintId,"exchange_order_id":"1300000034566552","execution_type":"CO","leg_order_indicator":"ENTRY", "oms_order_id":"202403132605"})
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

### Error Response
```json
{
    "data": {},
    "error_code": 44000,
    "message": "`exchange_order_id` can't be blank",
    "status": "error"
}
```
