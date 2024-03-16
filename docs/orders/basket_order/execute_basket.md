<!-- ## Execute Basket Order -->
This method is used to execute the orders of the instruments present in the basket.

```python
pocket.ExecuteBasket(Parameters)
```

### Parameters
| FieldName       | Datatype | Description                                   |
|-----------------|----------|-----------------------------------------------|
| basket_id       | String   | Represents the unique id of the basket.      |
| execution_type  | String   | `REGULAR`, `LIMIT`, `MARKET`                       |
| name            | String   | Represents the name of the basket.           |
| square_off      | Boolean  | `TRUE` or `FALSE`                                 |


### Example
```python
data = obj.executeBasket({
    "basket_id": "9cd5fbc3-333b-4934-8d45-e692349b5ede",
    "client_id":"HI0009",
    "execution_state":False,
    "execution_type":"NML",
    "name":"Y_Basket",
    "square_off": False
})
```


## Response
```json
{

  "data": {
    "data": {
    "basket_id": "20211017-4",
    "message": "basket Order Placed Successfully"
    }
  },
    "message": "Order place successfully",
    "status": "success"
}
```

## Error Response
```json
{
    "data":{},
    "error_code":49002,
    "message":"instrument `SBIN-EQ` is disabled for hedging",
    "status":"error"
}
```