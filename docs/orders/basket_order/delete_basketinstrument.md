<!-- ##  Delete Basket Instrument -->
This Method is used to delete basket Instrument inside the basket. This requires basketId to delete the basket instrument in the basket.


```python
Endpoint: api/v1/basket/order
Method-Type: DELETE
Method: pocket.deleteBasketInstrument(Parameters)

```


### Parameters
| Field Name | Data Type | Description                                |
|------------|-----------|--------------------------------------------|
| BasketId   | Integer   | Unique identifier for a basket.            |
| BasketName | String    | Name of the basket.                        |
| OrderId    | Integer   | Unique identifier for an order within a basket. |

### Example
```python
data = obj.deleteBasketInstrument({
"BasketId": "9cd5fbc3-333b-4934-8d45-e692349b5ede",
"BasketName":"Y_Basket",
"OrderId": "d5950a9f-b538-458b-a3cd-1dec744cb931"
})
```

### Response
```json
{
    "data": [
    ],
    "message": "Order remove from the basket Y_Basket.",
    "status": "success"
}

```
| Key       | Description                                     |
|-----------|-------------------------------------------------|
| data      | Array containing data. |
| message   | Description of the operation's outcome.         |
| status    | Status of the operation (e.g., success).        |


## Error Response
```json
{
  "data": {},
  "error_code": 48001,
  "message": "BasketId doesn't exists",
  "status": "error"
}
```