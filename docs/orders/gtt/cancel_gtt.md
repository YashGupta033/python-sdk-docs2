## Cancel GTT Order
```python
 res = pocket.gttCancelRule(Parameters)
```

### Parameters
Takes the gttId which has to be deleted.

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

### Error response
```json
 {
    "data": {},
    "error_code": 45000,
    "message": "Error from backend: (500)-event id not found",
    "status": "error"
 }
 ```