<!-- ## Add Basket Instrument -->
This method used to add Instrument in the created baskets. We can add only limited number of instruments in the basket and repeated instrument can't be added.
Use the method addBasketInstrument.

```python 
res = pocket.addBasketInstrument(Parameters)
print(res)
```

## Parameters
| FieldName          | Datatype       | Description                                          |
|--------------------|----------------|------------------------------------------------------|
| basket_id          | String         | Represents the unique id of basket.                  |
| name               | String         | Represents the name of the basket.                   |
| exchange           | String         | `NSE`, `BSE`, `NFO`, `CDS`, `MCX`                             |
| instrument_token   | String         | Represents unique id of a particular instrument.     |
| client_id          | String         | Represents the unique id of user or username.        |
| order_type         | String         | `LIMIT`, `MARKET`, `SL`, `SLM`                              |
| price              | String         | It can't be Zero.                                    |
| product            | String         | `CNC`, `MIS`, `NRML`                                       |
| client_id          | String         | Represents the unique id of user or username.        |
| device             | String         | `web`, `mobile`                                          |
| disclose_quantity  | Number         | It can't be a negative number.                       |
| execution_type     | String         | `REGULAR`, `BO`, `CO`, `AMO`                                 |
| order_side         | String         | `BUY` or `SELL`                                          |
| order_type         | String         | `LIMIT`, `MARKET`, `SL`, `SLM`                              |
| quantity           | Number         | It can't be Zero.                                    |
| series             | String         | Represents the particular series based on exchange.  |
| trading_symbol     | String         | Represents the name of the instrument.               |
| trigger_price      | Number         | It can't be zero.                                    |
| underlying_token   | Number         | It is the token of the base equity instrument.       |
| user_order_id      | Number         | Unique id of the order placed.                       |
| validity           | String         | `Day` or `IOC`                                           |


### Example
```python
data = obj.addBasketInstrument({
        "basket_id": "9cd5fbc3-333b-4934-8d45-e692349b5ede",
        "name": "Y_Basket",
        "order_info": {
            "client_id": "HI0009",
            "disclosedQuantity": 0,
            "exchange": "NSE",
            "execution_type": "REGULAR",
            "instrument_token": 14366,
            "order_side": "BUY",
            "order_type": "MARKET",
            "price": 0,
            "product": "MIS",
            "quantity": 1,
            "series": "EQ",
            "trading_symbol": "IDEA-EQ",
            "trigger_price": 0,
            "underlying_token": "14366",
            "validity": "DAY",
            "user_order_id": 10002
        }
     }
)
```


## Response
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

## Error Response
```json
  {
     "data": {},
     "error_code": 46001,
     "message": "Instrumetn already added",
     "status": "error"
  }
```