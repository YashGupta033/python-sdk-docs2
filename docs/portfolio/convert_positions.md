## Convert Positions
Use method convertPosition to make changes in existing positions.

```python
pocket.convertPosition(Parameters)
```

### Parameters
| FieldName         | Datatype | Description                                       |
|-------------------|----------|---------------------------------------------------|
| exchange          | String   | `NSE`, `BSE`, `NFO`, `CDS`, `MCX`                          |
| instrument_token  | String   | Represents the unique id of instrument.           |
| client_id         | String   | Represents the unique id of user or username.     |
| order_side        | String   | `BUY`, `SELL`                                         |
| price             | Number   | It can't be Zero.                                 |
| quantity          | Number   | It can't be Zero.                                 |
| validity          | String   | `DAY` or `IOC`                                        |
| product           | String   | `CNC`, `MIS`, `NRML`, `MTF`                              |
| new_product       | String   | `CNC`, `MIS`, `NRML`, `MTF`                              |
| oms_order_id      | Number   | Represents the unique id of order given by oms.   |


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
    "error_code": 45000,
    "message": "Error from backend: (1013)-template is not assigned for this client",
    "status": "error"
}
```