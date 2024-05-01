<!-- ## Cancel GTT Order -->
This API is used to cancel existing gtt order. This method fetch details like action type, exchange, instrument token, expiry time etc.


```python
Endpoint: api/v1/event/gtt/{client_id}/{id}
Method-Type: DELETE
```

### Request Packet
```json
{
    "id":"e06f52ab-6cf4-492d-a014-c6e0e5843a93"
}
```

### Parameters
| Field Name                | Data Type | Description                                  |
|---------------------------|-----------|----------------------------------------------|
| id               | `String`    | id of the gtt order that needs to be cancelled.|

### Example
```python
response = pocket.gttCancelRule({"id":"e06f52ab-6cf4-492d-a014-c6e0e5843a93"})
```

### Response
```json
{
    "status": true,
    "message": "SUCCESS",
    "errorcode": "",
    "data": {
        "id": "e06f52ab-6cf4-492d-a014-c6e0e5843a93"
    }
}
```

| Key       | Description                             |
|-----------|-----------------------------------------|
| status    | Indicates the status of the operation.   |
| message   | Describes the outcome of the operation.  |
| errorcode | Represents any error code if applicable. |
| data.id   | Unique identifier associated with the data. |


### Error response
```json
 {
    "data": {},
    "error_code": 45000,
    "message": "Error from backend: (500)-event id not found",
    "status": "error"
 }
 ```