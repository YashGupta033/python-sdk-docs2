<!-- ## Edit Basket Instrument -->
The method editBasketInstrument is used to edit the basket instrument present in the basket. In this we are able to edit the basket instrument details like quantity.

```python 
pocket.editBasketInstrument("Parameters")
```

## Parameters
| FieldName           | Datatype    | Description                                       |
|---------------------|-------------|---------------------------------------------------|
| basket_id           | String      | Represents the unique id of basket.              |
| name                | String      | Represents the name of the basket.               |
| exchange            | String      | `NSE`, `BSE`, `NFO`, `CDS`, `MCX`                          |
| instrument_token    | String      | Represents unique id of a particular instrument. |
| client_id           | String      | Represents the unique id of user or username.    |
| order_type          | String      | `LIMIT`, `MARKET`, `SL`, `SLM`                           |
| price               | String      | It can't be zero.                                |
| quantity            | Number      | It can't be zero.                                |
| disclose_quantity   | Number      | It can't be a negative number.                   |
| validity            | String      | `Day` or `IOC`                                       |
| product             | String      | `CNC`, `MIS`, `NRML`                                   |
| trading_symbol      | String      | Represents the name of the instrument.           |
| order_side          | String      | `BUY` or `SELL`                                      |
| user_order_id       | Number      | Unique id                                        |
| underlying_token    | Number      | It is the token of the base equity instrument.  |
| series              | String      | Represents the particular series based on exchange. |
| oms_order_id        | String      | Represents the unique id given by OMS.           |
| exchange_order_id   | String      | Represents the unique id given by the exchange.  |
| trigger_price       | Number      | It can't be zero.                                |
| stop_loss_value     | Number      | It can't be zero.                                |
| square_off_value    | Number      | It can't be zero.                                |
| trailing_stop_loss  | Number      | It can't be zero.                                |
| is_trailing         | Boolean     | `True` or `False`                                   |
| execution_type      | String      | `REGULAR`, `BO`, `CO`, `AMO`                             |
| order_id            | String      | Represents the unique id of the order.           |


### Example
```python
{
  "data": {
    "basket_id": "9cd5fbc3-333b-4934-8d45-e692349b5ede",
    "basket_type": "NORMAL",
    "is_executed": false,
    "login_id": "HI0009",
    "name": "Y_Basket",
    "order_type": "ALL",
    "orders": [
      {
        "order_id": "d5950a9f-b538-458b-a3cd-1dec744cb931",
        "order_info": {
          "login_id": null,
          "order_status": null,
          "rejection_code": 0,
          "exchange": "NSE",
          "sl_trigger_price": 0,
          "client_id": "HI0009",
          "mode": "NEW",
          "product": "MIS",
          "rejection_reason": "",
          "order_side": "BUY",
          "market_protection_percentage": 0,
          "nnf_id": 0,
          "validity": "DAY",
          "trading_symbol": "IDEA-EQ",
          "trigger_price": 0,
          "is_trailing": false,
          "series": "EQ",
          "lot_size": 0,
          "leg_order_indicator": null,
          "disclosed_quantity": 0,
          "order_entry_time": 0,
          "sl_order_quantity": 0,
          "order_type": "MARKET",
          "average_price": 0,
          "deposit": 0,
          "contract_description": {},
          "average_trade_price": 0,
          "oms_order_id": "",
          "filled_quantity": 0,
          "order_status_info": "",
          "trailing_stop_loss": null,
          "price": 0,
          "segment": "",
          "underlying_token": "14366",
          "sl_order_price": 0,
          "instrument_token": 14366,
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
          "user_order_id": 10002,
          "source": null
        }
      }
    ],
    "product_type": "ALL",
    "sip_eligible": false,
    "sip_enabled": false
  },
  "message": "Order added in the basket Y_Basket.",
  "status": "success"
}
```



### Response
```json
 {
  "data": {
    "basket_id": "9cd5fbc3-333b-4934-8d45-e692349b5ede",
    "basket_type": "NORMAL",
    "is_executed": false,
    "login_id": "HI0009",
    "name": "Y_Basket",
    "order_type": "ALL",
    "orders": [
      {
        "order_id": "d5950a9f-b538-458b-a3cd-1dec744cb931",
        "order_info": {
          "login_id": null,
          "order_status": null,
          "rejection_code": 0,
          "exchange": "NSE",
          "sl_trigger_price": 0,
          "client_id": "HI0009",
          "mode": "NEW",
          "product": "MIS",
          "rejection_reason": "",
          "order_side": "BUY",
          "market_protection_percentage": 0,
          "nnf_id": 0,
          "validity": "DAY",
          "trading_symbol": "IDEA-EQ",
          "trigger_price": 0,
          "is_trailing": false,
          "series": "EQ",
          "lot_size": 0,
          "leg_order_indicator": null,
          "disclosed_quantity": 0,
          "order_entry_time": 0,
          "sl_order_quantity": 0,
          "order_type": "MARKET",
          "average_price": 0,
          "deposit": 0,
          "contract_description": {},
          "average_trade_price": 0,
          "oms_order_id": "",
          "filled_quantity": 0,
          "order_status_info": "",
          "trailing_stop_loss": null,
          "price": 0,
          "segment": "",
          "underlying_token": "14366",
          "sl_order_price": 0,
          "instrument_token": 14366,
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
          "user_order_id": 10002,
          "source": null
        }
      }
    ],
    "product_type": "ALL",
    "sip_eligible": false,
    "sip_enabled": false
  },
  "message": "Order added in the basket Y_Basket.",
  "status": "success"
}
```

### Error Response
```json
 {
  "data": {},
  "error_code": 48004,
  "message": "`order_info` order price cannot be zero in SL/LIMIT order",
  "status": "error"
}
```