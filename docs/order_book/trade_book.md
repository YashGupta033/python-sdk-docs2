<!-- ## Trade Book -->
Trade book API fetches record or log of all the trades executed by an account holder. It contains details such as the date and time of the trade, the security traded (e.g., stocks, options, futures), the quantity bought or sold, the price at which the trade was executed.

```python
res = pocket.getTradedOrderBook()
```


### Response
```json
{
  "data": {
    "orders": [
      {
        "mode": "NEW",
        "exchange": "NSE",
        "segment": "",
        "login_id": "HI0009",
        "deposit": 0,
        "order_status": "CONFIRMED",
        "product": "MIS",
        "order_type": "LIMIT",
        "rejection_reason": "NONE",
        "order_side": "BUY",
        "instrument_token": 14366,
        "exchange_time": 1710485885,
        "nnf_id": 111111111111100,
        "quantity": 1,
        "trading_symbol": "IDEA-EQ",
        "client_id": "HI0009",
        "average_trade_price": 0,
        "underlying_token": null,
        "oms_order_id": "202403152052",
        "lot_size": 1,
        "isin": "INE669E01016",
        "disclosed_quantity": 0,
        "execution_type": "REGULAR",
        "source": "",
        "device": "",
        "exchange_order_id": "1100000029886168",
        "validity": "DAY",
        "leg_order_indicator": null,
        "trade_price": 0,
        "spread_token": null,
        "market_protection_percentage": 0,
        "filled_quantity": 0,
        "order_tag": "",
        "sl_trigger_price": 0,
        "square_off": false,
        "order_status_info": "",
        "square_off_value": 0,
        "tags": null,
        "order_entry_time": 1710485885,
        "last_activity_reference": 1394972885476889600,
        "trigger_price": 0,
        "sl_order_price": 0,
        "stop_loss_value": 0,
        "rejection_code": 0,
        "average_price": 0,
        "trailing_stop_loss": 0,
        "price": 11.9,
        "user_order_id": "10002",
        "symbol": "IDEA",
        "is_trailing": false,
        "pro_cli": "CLIENT",
        "remaining_quantity": 1,
        "contract_description": {},
        "series": "EQ",
        "target_price_type": "absolute",
        "sl_order_quantity": 0
      },
    ]
  },
  "message": "",
  "status": "success"
}
```

| Key                      | Description                                                        |
| ------------------------ | ------------------------------------------------------------------ |
| book_type                | Type of book, e.g., "0."                                            |
| broker_id                | Unique identifier for the broker.                                  |
| client_id                | Unique identifier for the client.                                  |
| disclosed_vol            | Disclosed volume, if applicable.                                   |
| disclosed_vol_remaining  | Remaining disclosed volume.                                       |
| exchange                 | The exchange where the order is placed.                            |
| exchange_order_id        | Order ID assigned by the exchange.                                  |
| exchange_time            | Timestamp from the exchange.                                       |
| fill_number              | Placeholder for fill number.                                      |
| filled_quantity          | Quantity of the order that has been filled.                        |
| good_till_date           | Timestamp indicating the good-till date, if applicable.           |
| instrument_token         | Token representing the financial instrument.                       |
| login_id                 | Unique identifier for the user.                                    |
| oms_order_id             | Order ID assigned by the Order Management System (OMS).           |
| order_entry_time         | Timestamp of the order entry.                                      |
| order_price              | Price specified in the order.                                      |
| order_side               | Indicates the side of the order, e.g., "BUY."                      |
| order_type               | Type of order, e.g., "MARKET."                                     |
| original_vol             | Original order volume.                                             |
| pan                      | PAN (Permanent Account Number) of the user.                         |
| pro_cli                  | Indicator for professional client status.                          |
| product                  | The product type, e.g., "MIS."                                     |
| remaining_quantity       | Remaining quantity of the order to be filled.                       |
| trade_number             | Unique identifier for the trade.                                   |
| trade_price              | Price at which the trade is executed.                              |
| trade_quantity           | Quantity of the trade.                                             |
| trade_time               | Timestamp of the trade.                                           |
| trading_symbol           | Ticker symbol or name of the financial instrument.                 |
| trigger_price            | Placeholder for trigger price.                                     |
| v_login_id               | Placeholder for login ID.                                         |
| vol_filled_today         | Volume filled today.                                              |



### Error Response
```json
{
    "status": "error",
    "message": "Request forbidden",
    "error_code": 40000,
    "data":{
    }
}
```