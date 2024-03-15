<!-- ## Cancel a regular order -->
The Cancel Order API provides users with the capability to cancel open or pending order. To cancel a pending order within the order book, users simply need to provide the oms_order_id of the targeted order. Upon successful completion of the cancellation request, a `success` response status code will be returned, indicating the order's successful cancellation. This API streamlines the process of order management, empowering users to swiftly retract orders as needed, thereby enhancing flexibility and responsiveness in trading activities.

```python
res = pocket.cancelOrder(Parameters)
print(res)
```

### Example
```python
data = obj.cancelOrder({"oms_order_id":"202403111778", "client_id": "clintId", "execution_type": "REGULAR"})
```


### Parameters

| FieldName          | Datatype | Description                                    |
|--------------------|----------|------------------------------------------------|
| oms_order_id       | `String`   | Represents the unique id of order given by oms.|
| client_id           | `String`   | The unique ID of the user placing the order.|
| execution_type      | `String`   | The execution type of the order, which is typically `REGULAR` for regular orders.                                  |




### Response
```json
{
    "data": {
        "oms_order_id": "202403111506"
    },
    "message": "Order cancellation request submitted for OMS Order: 202403111506",
    "status": "success"
}
```

| Key              | Description                                                |
|------------------|------------------------------------------------------------|
| oms_order_id     | Unique identifier for the OMS order.                       |
| message          | Information message about the order cancellation request.  |
| status           | Status of the order cancellation request (e.g., success).  |


### Error Response 
```json
{
    "status": "error",
    "message": "Request Unauthorised",
    "error_code": 40000,
    "data":{
    }
}
```
