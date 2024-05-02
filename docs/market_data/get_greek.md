<!-- # Greek Data -->
"GreekData" typically refers to a set of metrics used in options trading to assess risk and price sensitivity. Use the greekdata method.

```python
res = pocket.greekdata(Parameters)
```

### Path Parameters
| Field Name | Data Type | Description                           |
|------------|-----------|---------------------------------------|
| exchange   | String    | `NFO`                                   |
| token      | String    | e.g. `26009`                            |





### Response
```json
{
    "data": {
        "IV": 0,
        "current_open_interest": 0,
        "delta": 0,
        "exchange": "NFO",
        "exchange_timestamp": 0,
        "gamma": 0,
        "initial_open_interest": 0,
        "instrument_token": 90197,
        "last_trade_price": 0,
        "last_trade_quantity": 0,
        "last_trade_time": 0,
        "rho": 0,
        "theta": 0,
        "trade_volume": 0,
        "ul_token": 0,
        "vega": 0
    },
    "message": "",
    "status": "success"
}
```

### Error response
```json
{
    "data": {},
    "message": "Invalid parameters",
    "status": "error"
}
```