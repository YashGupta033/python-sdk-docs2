<!-- ## Create Basket -->
This method is used to create basket. It can create two types of basket i.e. Normal or Hedge. The Hedge Basket can have order type as LIMIT, MARKET, SL or SLM. And the product type can be CNC, MIS or NRML.

```python
res = pocket.createBasket(Parameters)
```

### Parameters

| FieldName    | Datatype | Description                                     |
|--------------|----------|-------------------------------------------------|
| login_id     | String   | Represents the unique id of user or username.  |
| name         | String   | Represents the name of the basket.             |
| type         | String   | `NORMAL`, `HEDGE`                                  |
| product_type | String   | `CNC`, `MIS`, `NRML`                                 |
| order_type   | String   | `LIMIT`, `MARKET`, `SL`, `SLM`                         |


### Example
```python
response = pocket.createBasket({"login_id":clintId,"name":"Basket1","type":"NORMAL","product_type":"ALL","order_type":"ALL"})
```


### Response
```json
{
    "data": [{
            "basket_id": "723905f6-b0f6-4bf9-a4f7-b0f119d9e24f",
            "basket_type": "NORMAL",
            "is_executed": false,
            "login_id": "HI0009",
            "name": "Basket1",
            "order_type": "ALL",
            "orders": [
                {
                    "order_id": "5829e63e-f83d-423f-9327-37f6c5a0c6b5",
                    "order_info": {
                        "login_id": null,
                        "order_status": null,
                        "rejection_code": 0,
                        "exchange": "NSE",
                        "sl_trigger_price": 0.0,
                        "client_id": "HI0009",
                        "mode": "NEW",
                        "product": "CNC",
                        "rejection_reason": "",
                        "order_side": "BUY",
                        "market_protection_percentage": 0,
                        "nnf_id": 0,
                        "validity": "DAY",
                        "trading_symbol": "VAKRANGEE-EQ",
                        "trigger_price": 0,
                        "is_trailing": false,
                        "series": "EQ",
                        "lot_size": 0,
                        "leg_order_indicator": null,
                        "disclosed_quantity": 0,
                        "order_entry_time": 0,
                        "sl_order_quantity": 0,
                        "order_type": "LIMIT",
                        "average_price": 0,
                        "deposit": 0,
                        "contract_description": {},
                        "average_trade_price": 0,
                        "oms_order_id": "",
                        "filled_quantity": 0,
                        "order_status_info": "",
                        "trailing_stop_loss": null,
                        "price": 10.0,
                        "segment": "",
                        "underlying_token": "13342",
                        "sl_order_price": 0.0,
                        "instrument_token": 13342,
                        "trade_price": 0,
                        "symbol": "",
                        "target_price_type": "absolute",
                        "execution_type": "REGULAR",
                        "quantity": 1,
                        "order_tag": "",
                        "spread_token": null,
                        "isin": "",
                        "pro_cli": "CLIENT",
                        "tags": [],
                        "last_activity_reference": 0,
                        "square_off_value": null,
                        "remaining_quantity": 0,
                        "square_off": false,
                        "stop_loss_value": null,
                        "exchange_order_id": "",
                        "exchange_time": 0,
                        "device": null,
                        "user_order_id": 28483,
                        "source": null
                    }
                }
            ],
            "product_type": "ALL",
            "sip_eligible": true,
            "sip_enabled": false
        }
          ],
    "message": "Basket A_Basket created successfully",
    "status": "success"
}

```


### Error Response
```json
{ 
  data: {}
  error_code: 48001
  message: "name has already been taken"
  status: "error"
}
```










