<!-- ## Rename Basket -->
This method is used to rename the existing basket.

```python
res = pocket.renameBasket(Parameters)
```

### Parameters
| FieldName  | Datatype | Description                                    |
|------------|----------|------------------------------------------------|
| basket_id  | `String`   | Represents the unique id of the basket.       |
| name       | `String`   | Represents the name of the basket.            |


### Example
```python
response = pocket.renameBasket(
  {
    "basket_id":"9cd5fbc3-333b-4934-8d45-e692349b5ede",
    "name":"Basket2"
    }
)
```

### Response
```json
{
  "data": 
  {
    "basket_id": "9cd5fbc3-333b-4934-8d45-e692349b5ede",
    "basket_type": "NORMAL",
    "is_executed": false,
    "login_id": "HI0009",
    "name": "Basket2",
    "order_type": "ALL",
    "orders": [],
    "product_type": "ALL",
    "sip_eligible": true,
    "sip_enabled": false
         },
    "message": "Basket name updated successfully", 
    "status": "success"
}
```

| Field Name   | Description                                                                                      |
|--------------|--------------------------------------------------------------------------------------------------|
| basket_id    | Unique identifier for the basket.                                                                 |
| basket_type  | Type of the basket.                                                                              |
| is_executed  | Indicates whether the basket has been executed.                                                   |
| login_id     | Identifier for the user's login.                                                                  |
| name         | Name of the basket.                                                                               |
| order_type   | Type of orders in the basket.                                                                     |
| orders       | List of orders in the basket.                                                                     |
| product_type | Type of product.                                                                                  |
| sip_eligible | Indicates if SIP (Systematic Investment Plan) is eligible for the basket.                         |
| sip_enabled  | Indicates if SIP (Systematic Investment Plan) is enabled for the basket.                          |
| message      | Information message related to the operation performed on the basket.                              |
| status       | Status of the operation performed on the basket.                                                   |


### Error Response
```json
{
  "data": {},
  "error_code": 48001,
  "message": "`name` Basket name restricted to 20 characters",
  "status": "error"
}
```