<!-- ## Convert Positions -->
Convert Position API is used to change the position of an order from delivery to intraday and vice versa.

```python
Endpoint: api/v1/positions
Method-Type: GET
```

### Request Packet
```json
{
    "client_id": "YA0002",
    "exchange": "NSE",
    "instrument_token": 13342,
    "product": "MIS",
    "new_product": "CNC",
    "quantity": 1,
    "validity": "DAY",
    "order_side": "BUY"
}
```


### Request Parameters
| FieldName         | Datatype | Description                                       |
|-------------------|----------|---------------------------------------------------|
| exchange          | String   | `NSE`, `BSE`, `NFO`, `MCX`                          |
| instrument_token  | String   | Represents the unique id of instrument.           |
| client_id         | String   | Represents the unique id of user or username.     |
| order_side        | String   | `BUY`, `SELL`                                         |
| quantity          | Number   | Quantity of the instrument                                 |
| validity          | String   | `DAY` or `IOC`                                        |
| product           | String   | `CNC`, `MIS`, `NRML`, `MTF`                              |
| new_product       | String   | `CNC`, `MIS`, `NRML`, `MTF`                              |





### Example
```python
data = pocket.convertPosition({
    "client_id": "YA0002",
    "exchange": "NSE",
    "instrument_token": 13342,
    "product": "MIS",
    "new_product": "CNC",
    "quantity": 1,
    "validity": "DAY",
    "order_side": "BUY"
})
```


### Response
```json
{
    "data": {},
    "message": "Conversion completed",
    "status": "success"
}
```

### Error Response
```json
{
    "data": {
    },
    "message": "Request forbidden",
    "error_code": 40000,
    "status": "error"
}
```