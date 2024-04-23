This API is used to fetch the details of the existing gtt orders. This method fetch details like action type, exchange, instrument token, expiry time etc.

```python
res = pocket.gttFetchRule()  
```
### Example
```python
response = pocket.gttFetchRule() #No Parameters needs to be passed.
```

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

| Key                  | Description                                      |
|----------------------|--------------------------------------------------|
| action_type          | Type of action (e.g., single order)             |
| client_id            | Identifier for the client                        |
| created_at           | Date and time when the order was created         |
| expiry_time          | Expiry date for the order                        |
| id                   | Unique identifier for the order                  |
| login_id             | Login identifier for the client                  |
| disclosed_qty        | Quantity disclosed in the order                  |
| exchange             | Exchange where the order is placed               |
| execution_type       | Type of execution                                |
| mode                 | Mode of the order (e.g., NEW)                    |
| order_side           | Side of the order (e.g., BUY)                    |
| order_type           | Type of order (e.g., LIMIT)                      |
| price                | Price specified for the order                    |
| pro_cli              | Type of client (e.g., CLIENT)                   |
| prod_type            | Product type (e.g., CNC)                         |
| quantity             | Quantity of shares in the order                  |
| segment              | Segment of the market (e.g., Capital)            |
| sl_order_price       | Price for stop-loss order                        |
| sl_order_quantity    | Quantity for stop-loss order                     |
| sl_trigger_price     | Trigger price for stop-loss order                |
| square_off_price     | Price for square-off                             |
| token                | Token associated with the order                   |
| trading_symbol       | Symbol for the traded security                   |
| trailing_stop_loss   | Value for trailing stop-loss                     |
| trigger_price        | Trigger price for the order                      |
| validity             | Validity of the order                            |
| vendor_code          | Code for the vendor                              |
| reject_code          | Code for rejection reason                        |
| reject_reason        | Reason for rejection                             |
| status               | Status of the order (e.g., Active)               |
| type                 | Type of order (e.g., GTTStock)                   |
| updated_at           | Date and time when the order was last updated    |
| message              | Message associated with the order                |


### Error Response
```json
{
    "data": {},
    "error_code": 45000,
    "message": "Error from backend: (500)-no gtt data found",
    "status": "error"
}
```