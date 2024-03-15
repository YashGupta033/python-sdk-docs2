<!-- ## Get Closing Price -->
The Get Closing Price API is allows users to retrieve the closing price of a financial instrument. By specifying the instrument token, users can access the closing price, which can be crucial for making investment decisions.

```python
res = pocket.getClosePrice(Parameters)
```

## Parameters
| Field Name | Data Type | Description                           |
|------------|-----------|---------------------------------------|
| exchange   | String    | e.g. `NSE`, `BSE`, `MCX`, `CDS`, `NFO`, `BFO`   |
| token      | String    | e.g. `90197`                            |


### Example
```python
response = pocket.getClosePrice('NSE', 26009)
```


## Response
```json
{
    "data": 47965.4,
    "message": "", 
    "status": "success"
}
```

| Key      | Description                        |
|----------|------------------------------------|
| data     | The closing price received.       |
| message  | Any additional message or details. |
| status   | The status of the operation.      |


## Error Response
```json
{
    "data": {},
    "error_code": 44000,
    "message": "`exchange` is invalid",
    "status": "error"
}
```
