## Fetch GTT Order
This method is used to fetch the details of the existing gtt orders. This method fetch details like action type, exchange,instrument token etc.

```python
res = pocket.gttFetchRule()
```
### Example
response = pocket.gttFetchRule()

### Response
```json
{
    action_type: "single_order"
    client_id: "DEMO1"
    created_at: "2021-10-17 18:14:01"
    expiry_time: "2022-10-17"
    id: "673a20c8-80d5-4a0c-8a34-23f20fe79661"
    login_id: "DEMO1"
    order : {
        disclosed_qty: 0
        exchange: "NSE"
        execution_type: ""
        mode: "NEW"
        order_side: "BUY"
        order_type: "LIMIT"
        price: 3611.5
        pro_cli: "CLIENT"
        prod_type: "CNC"
        quantity: 1
        segment: "Capital"
        sl_order_price: 0
        sl_order_quantity: 0
        sl_trigger_price: 0
        square_off_price: 0
        token: 11536
        trading_symbol: "TCS-EQ"
        trailing_stop_loss: 0
        trigger_price: 3611.45
        validity: ""
        vendor_code: "00"
        reject_code: 0
        reject_reason: ""
        status: "Active"
        type: "GTTStock"
        updated_at: "2021-10-17 18:18:12"
        message: ""
        status: "success"
    }

}
```

### Error Response
```json
{
    "data": {},
    "error_code": 45000,
    "message": "Error from backend: (500)-no gtt data found",
    "status": "error"
}
```