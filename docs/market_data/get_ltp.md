<!-- ## Get Last Traded Price -->
The Get Last Traded Price API provides users with the most recent price at which a financial instrument was traded. By accessing this API, users can quickly obtain the latest market information, aiding in real-time decision-making and market analysis.
```python
pocket.getLtp(Parameters)
```

### Parameters
| Field Name | Data Type | Description                           |
|------------|-----------|---------------------------------------|
| exchange   | String    | e.g. `NSE`, `BSE`, `MCX`, `CDS`, `NFO`, `BFO`    |
| token      | String    | e.g. `90197`                            |


### Example
```python
response = pocket.getLtp('NSE', 26009)
```

### Response
```json
{
    "data": 446981.3, 
    "message": "", 
    "status": "success"
}
```

| Key      | Description                        |
|----------|------------------------------------|
| data     | The last traded price received.       |
| message  | Any additional message or details. |
| status   | The status of the operation.      |


### Error Response
```json
{"data": {}, "error_code": 44000, "message": "`exchange` is invalid", "status": "error"}
```






