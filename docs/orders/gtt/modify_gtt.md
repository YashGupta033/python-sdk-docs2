## Modify GTT Orders
This method is used to modify the existing gtt orders. We can modify the price, trigger price etc.

```python
res = pocket.gttModifyRule(Parameters)
```

### Parameters
| Field Name                | Data Type | Description                                  |
|---------------------------|-----------|----------------------------------------------|
| expiry_time               | String    | Expiry time of the order (e.g., "2024-12-12")|
| action_type               | String    | Type of action (e.g., "single_order")       |
| id                        | String    | Unique identifier for the order              |
| order                     | Object    | Object containing order details              |
| order.client_id           | String    | Client ID associated with the order          |
| order.device              | String    | Device used for placing the order (e.g., "web")|
| order.disclosed_quantity | Integer   | Disclosed quantity for the order             |
| order.exchange           | String    | Exchange where the order is placed (e.g., "NSE")|
| order.instrument_token   | String    | Token representing the instrument            |
| order.market_protection_percentage | Integer | Market protection percentage            |
| order.order_side         | String    | Side of the order (e.g., "BUY")              |
| order.order_type         | String    | Type of order (e.g., "LIMIT")               |
| order.price              | Float     | Price per unit of the instrument            |
| order.product            | String    | Product code (e.g., "CNC")                  |
| order.quantity           | Integer   | Quantity of the instrument                   |
| order.sl_order_price     | Integer   | Stop-loss order price                        |
| order.sl_order_quantity  | Integer   | Stop-loss order quantity                     |
| order.sl_trigger_price   | Integer   | Stop-loss trigger price                      |
| order.trigger_price      | Float     | Trigger price for the order                  |
| order.user_order_id      | Integer   | User-defined order ID                        |



### Example
```python
data = obj.gttModifyRule({
    "expiry_time": "2024-12-12",
    "action_type":"single_order",
    "id": "ba1ff6e6-e164-4dcd-af5a-0b6f192147ed",
    "order": {
        "client_id": "HI0009",
        "device": "web",
        "disclosed_quantity": 0,
        "exchange": "NSE",
        "instrument_token": "14366",
        "market_protection_percentage": 0,
        "order_side": "BUY",
        "order_type": "LIMIT",
        "price": 11.5,
        "product": "CNC",
        "quantity": 1,
        "sl_order_price": 0,
        "sl_order_quantity": 0,
        "sl_trigger_price": 0,
        "trigger_price": 13.5,
        "user_order_id": 10002
    }
})

```


### Response
```json
{
    "data": {
        "id": "673a20c8-80d5-4a0c-8a34-23f20fe79661"
    },
    "message": "gtt request modified successfully",
    "status": "success"
}
```


### Error Response
```json
{
    "data": {},
    "error_code": 45000,
    "message": "Error from backend: (1600)-cannot modify, no data found with this id",
    "status": "error"
}
```