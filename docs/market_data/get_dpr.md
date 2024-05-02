<!-- ## DPR Data -->
This method is used to fetch Daily Price Range details of stock.  daily price range refers to the difference between the highest and lowest prices at which a particular stock traded during a single trading session. This range provides insights into the price volatility and trading activity of a stock over the course of a trading day.

## Python Code
```python
res = pocket.getDPRdata(Parameters)
```


### Path Parameters
| Field Name | Data Type | Description                        |
|------------|-----------|------------------------------------|
| exchange   | String    | e.g. `NSE`, `BSE`, `MCX`, `CDS`, `NFO`, `BFO` |
| token      | String    | e.g. `3045`                         |


### Response
```json
{
    "data": {
        "exchange": "NSE",
        "exchange_timestamp": 0,
        "high_dpr": 0,
        "instrument_token": 3045,
        "low_dpr": 0
    },
    "message": "",
    "status": "success"
}
```

## Error response
```json
{
    "data": {},
    "message": "Invalid parameters",
    "status": "error"
}
```