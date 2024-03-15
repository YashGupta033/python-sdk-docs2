<!-- ## Fetch Completed Orders -->

The Completed Orders API retrieves information about orders that have been successfully executed and completed from the order book. By accessing this API, users can obtain detailed data on their past transactions, including the order ID, type of order, price, quantity, timestamp, and any associated fees. This API provides valuable insights into trading activity, allowing users to analyze their performance, track order history, and reconcile transactions efficiently. With the ability to access comprehensive information on completed orders, traders can make informed decisions, refine their strategies, and optimize their trading activities for better outcomes.


``` python
pocket.getCompletedOrderBook()    # No parameter needs to be passed
```

### Example
```python
response = pocket.getCompletedOrderBook()
```


### Response
```json
{
    "data": {
        "orders": [
            {
                "mode": "NEW",
                "exchange": "BSE",
                "segment": "",
                "login_id": "HI0009",
                "deposit": 0,
                "order_status": "REJECTED",
                "product": "MIS",
                "order_type": "LIMIT",
                "rejection_reason": "BSECM Adapter is offline,ctcl not available ",
                "order_side": "BUY",
                "instrument_token": 532461,
                "exchange_time": 0,
                "nnf_id": 0,
                "quantity": 1,
                "trading_symbol": "PNB-A",
                "client_id": "HI0009",
                "average_trade_price": 0,
                "underlying_token": null,
                "oms_order_id": "2024030938",
                "lot_size": 1,
                "isin": "INE160A01022",
                "disclosed_quantity": 0,
                "execution_type": "BO",
                "source": "",
                "device": "",
                "exchange_order_id": "",
                "validity": "DAY",
                "leg_order_indicator": "ENTRY",
                "trade_price": 0,
                "spread_token": null,
                "market_protection_percentage": 0,
                "filled_quantity": 0,
                "order_tag": "",
                "sl_trigger_price": 0.0,
                "square_off": false,
                "order_status_info": "",
                "square_off_value": 0.0,
                "tags": null,
                "order_entry_time": 1709992490,
                "last_activity_reference": 0,
                "trigger_price": 0,
                "sl_order_price": 0.0,
                "stop_loss_value": 0.0,
                "rejection_code": 1009,
                "average_price": 0,
                "trailing_stop_loss": 0.0,
                "price": 125.0,
                "user_order_id": "12778",
                "symbol": "PNB",
                "is_trailing": false,
                "pro_cli": "CLIENT",
                "remaining_quantity": 1,
                "contract_description": {},
                "series": "A",
                "target_price_type": "absolute",
                "sl_order_quantity": 0
            },
            {
                "mode": "NEW",
                "exchange": "BSE",
                "segment": "",
                "login_id": "HI0009",
                "deposit": 0,
                "order_status": "AMO_CANCEL_CONFIRMED",
                "product": "CNC",
                "order_type": "LIMIT",
                "rejection_reason": "",
                "order_side": "BUY",
                "instrument_token": 532461,
                "exchange_time": 0,
                "nnf_id": 333333333333100,
                "quantity": 1,
                "trading_symbol": "PNB-A",
                "client_id": "HI0009",
                "average_trade_price": 0,
                "underlying_token": null,
                "oms_order_id": "2024030935",
                "lot_size": 1,
                "isin": "INE160A01022",
                "disclosed_quantity": 0,
                "execution_type": "AMO",
                "source": "pacetrader.pacefin.in",
                "device": "android",
                "exchange_order_id": "",
                "validity": "DAY",
                "leg_order_indicator": null,
                "trade_price": 0,
                "spread_token": null,
                "market_protection_percentage": 0,
                "filled_quantity": 0,
                "order_tag": "",
                "sl_trigger_price": 0.0,
                "square_off": false,
                "order_status_info": "",
                "square_off_value": 0.0,
                "tags": null,
                "order_entry_time": 1709992420,
                "last_activity_reference": 0,
                "trigger_price": 0,
                "sl_order_price": 0.0,
                "stop_loss_value": 0.0,
                "rejection_code": 0,
                "average_price": 0,
                "trailing_stop_loss": 0.0,
                "price": 125.0,
                "user_order_id": "12776",
                "symbol": "PNB",
                "is_trailing": false,
                "pro_cli": "CLIENT",
                "remaining_quantity": 0,
                "contract_description": {},
                "series": "A",
                "target_price_type": "absolute",
                "sl_order_quantity": 0
            },
            {
                "mode": "NEW",
                "exchange": "NSE",
                "segment": "",
                "login_id": "HI0009",
                "deposit": 0,
                "order_status": "REJECTED",
                "product": "MIS",
                "order_type": "LIMIT",
                "rejection_reason": " blocked by broker",
                "order_side": "BUY",
                "instrument_token": 20114,
                "exchange_time": 1709992322,
                "nnf_id": 333333333333100,
                "quantity": 1,
                "trading_symbol": "GREENPOWER-BE",
                "client_id": "HI0009",
                "average_trade_price": 0,
                "underlying_token": null,
                "oms_order_id": "2024030931",
                "lot_size": 1,
                "isin": "INE999K01014",
                "disclosed_quantity": 0,
                "execution_type": "AMO",
                "source": "pacetrader.pacefin.in",
                "device": "android",
                "exchange_order_id": "",
                "validity": "DAY",
                "leg_order_indicator": null,
                "trade_price": 0,
                "spread_token": null,
                "market_protection_percentage": 0,
                "filled_quantity": 0,
                "order_tag": "",
                "sl_trigger_price": 0.0,
                "square_off": false,
                "order_status_info": "",
                "square_off_value": 0.0,
                "tags": null,
                "order_entry_time": 1709992322,
                "last_activity_reference": 0,
                "trigger_price": 0,
                "sl_order_price": 0.0,
                "stop_loss_value": 0.0,
                "rejection_code": 1010,
                "average_price": 0,
                "trailing_stop_loss": 0.0,
                "price": 20.0,
                "user_order_id": "12774",
                "symbol": "GREENPOWER",
                "is_trailing": false,
                "pro_cli": "CLIENT",
                "remaining_quantity": 0,
                "contract_description": {},
                "series": "BE",
                "target_price_type": "absolute",
                "sl_order_quantity": 0
            },
            {
                "mode": "NEW",
                "exchange": "NSE",
                "segment": "",
                "login_id": "HI0009",
                "deposit": 0,
                "order_status": "REJECTED",
                "product": "MIS",
                "order_type": "LIMIT",
                "rejection_reason": "NSECM Adapter is offline,ctcl not available ",
                "order_side": "BUY",
                "instrument_token": 13342,
                "exchange_time": 0,
                "nnf_id": 0,
                "quantity": 1,
                "trading_symbol": "VAKRANGEE-EQ",
                "client_id": "HI0009",
                "average_trade_price": 0,
                "underlying_token": null,
                "oms_order_id": "2024030927",
                "lot_size": 1,
                "isin": "INE051B01021",
                "disclosed_quantity": 0,
                "execution_type": "CO",
                "source": "",
                "device": "",
                "exchange_order_id": "",
                "validity": "DAY",
                "leg_order_indicator": "ENTRY",
                "trade_price": 0,
                "spread_token": null,
                "market_protection_percentage": 0,
                "filled_quantity": 0,
                "order_tag": "",
                "sl_trigger_price": 0.0,
                "square_off": false,
                "order_status_info": "",
                "square_off_value": 0.0,
                "tags": null,
                "order_entry_time": 1709991944,
                "last_activity_reference": 0,
                "trigger_price": 0,
                "sl_order_price": 0.0,
                "stop_loss_value": 0.0,
                "rejection_code": 1009,
                "average_price": 0,
                "trailing_stop_loss": 0.0,
                "price": 22.0,
                "user_order_id": "12772",
                "symbol": "VAKRANGEE",
                "is_trailing": false,
                "pro_cli": "CLIENT",
                "remaining_quantity": 1,
                "contract_description": {},
                "series": "EQ",
                "target_price_type": "absolute",
                "sl_order_quantity": 0
            },
            {
                "mode": "NEW",
                "exchange": "NSE",
                "segment": "",
                "login_id": "HI0009",
                "deposit": 0,
                "order_status": "COMPLETE",
                "product": "CNC",
                "order_type": "LIMIT",
                "rejection_reason": "NONE",
                "order_side": "BUY",
                "instrument_token": 910,
                "exchange_time": 1709959825,
                "nnf_id": 111111111111100,
                "quantity": 1,
                "trading_symbol": "EICHERMOT-EQ",
                "client_id": "HI0009",
                "average_trade_price": 0,
                "underlying_token": null,
                "oms_order_id": "202403095",
                "lot_size": 1,
                "isin": "INE066A01021",
                "disclosed_quantity": 0,
                "execution_type": "REGULAR",
                "source": "pacetrader.pacefin.in",
                "device": "web",
                "exchange_order_id": "1100000000004370",
                "validity": "DAY",
                "leg_order_indicator": null,
                "trade_price": 0,
                "spread_token": null,
                "market_protection_percentage": 0,
                "filled_quantity": 1,
                "order_tag": "",
                "sl_trigger_price": 0.0,
                "square_off": false,
                "order_status_info": "",
                "square_off_value": 0.0,
                "tags": null,
                "order_entry_time": 1709959825,
                "last_activity_reference": 1394446825558528718,
                "trigger_price": 0,
                "sl_order_price": 0.0,
                "stop_loss_value": 0.0,
                "rejection_code": 0,
                "average_price": 3785.25,
                "trailing_stop_loss": 0.0,
                "price": 3785.25,
                "user_order_id": "10002",
                "symbol": "EICHERMOT",
                "is_trailing": false,
                "pro_cli": "CLIENT",
                "remaining_quantity": 0,
                "contract_description": {},
                "series": "EQ",
                "target_price_type": "absolute",
                "sl_order_quantity": 0
            },
            {
                "mode": "NEW",
                "exchange": "NSE",
                "segment": "",
                "login_id": "HI0009",
                "deposit": 0,
                "order_status": "REJECTED",
                "product": "MIS",
                "order_type": "SLM",
                "rejection_reason": "Order entered has invalid data, kindly contact system administrator",
                "order_side": "BUY",
                "instrument_token": 4963,
                "exchange_time": 1709959009,
                "nnf_id": 111111111111100,
                "quantity": 1,
                "trading_symbol": "ICICIBANK-EQ",
                "client_id": "HI0009",
                "average_trade_price": 0,
                "underlying_token": null,
                "oms_order_id": "202403094",
                "lot_size": 1,
                "isin": "INE090A01021",
                "disclosed_quantity": 0,
                "execution_type": "REGULAR",
                "source": "pacetrader.pacefin.in",
                "device": "web",
                "exchange_order_id": "1100000000002524",
                "validity": "DAY",
                "leg_order_indicator": null,
                "trade_price": 0,
                "spread_token": null,
                "market_protection_percentage": 0,
                "filled_quantity": 0,
                "order_tag": "",
                "sl_trigger_price": 0.0,
                "square_off": false,
                "order_status_info": "",
                "square_off_value": 0.0,
                "tags": null,
                "order_entry_time": 1709959009,
                "last_activity_reference": 0,
                "trigger_price": 0,
                "sl_order_price": 0.0,
                "stop_loss_value": 0.0,
                "rejection_code": 16418,
                "average_price": 0,
                "trailing_stop_loss": 0.0,
                "price": 0,
                "user_order_id": "10002",
                "symbol": "ICICIBANK",
                "is_trailing": false,
                "pro_cli": "CLIENT",
                "remaining_quantity": 0,
                "contract_description": {},
                "series": "EQ",
                "target_price_type": "absolute",
                "sl_order_quantity": 0
            },
            {
                "mode": "NEW",
                "exchange": "NSE",
                "segment": "",
                "login_id": "HI0009",
                "deposit": 0,
                "order_status": "REJECTED",
                "product": "CNC",
                "order_type": "LIMIT",
                "rejection_reason": "MTM Margin Available : 0.00 : Required : 282.85: AccountName: all, Template: POCKETFUL, Margin ShortFall : -282.85",
                "order_side": "BUY",
                "instrument_token": 3063,
                "exchange_time": 0,
                "nnf_id": 111111111111100,
                "quantity": 1,
                "trading_symbol": "VEDL-EQ",
                "client_id": "HI0009",
                "average_trade_price": 0,
                "underlying_token": null,
                "oms_order_id": "202403091",
                "lot_size": 1,
                "isin": "INE205A01025",
                "disclosed_quantity": 0,
                "execution_type": "REGULAR",
                "source": "pacetrader.pacefin.in",
                "device": "WEB",
                "exchange_order_id": "",
                "validity": "DAY",
                "leg_order_indicator": null,
                "trade_price": 0,
                "spread_token": null,
                "market_protection_percentage": 0,
                "filled_quantity": 0,
                "order_tag": "",
                "sl_trigger_price": 0.0,
                "square_off": false,
                "order_status_info": "",
                "square_off_value": 0.0,
                "tags": null,
                "order_entry_time": 1709958939,
                "last_activity_reference": 0,
                "trigger_price": 0,
                "sl_order_price": 0.0,
                "stop_loss_value": 0.0,
                "rejection_code": 12001,
                "average_price": 0,
                "trailing_stop_loss": 0.0,
                "price": 282.85,
                "user_order_id": "10002",
                "symbol": "VEDL",
                "is_trailing": false,
                "pro_cli": "CLIENT",
                "remaining_quantity": 1,
                "contract_description": {},
                "series": "EQ",
                "target_price_type": "absolute",
                "sl_order_quantity": 0
            }
        ]
    },
    "message": "",
    "status": "success"
}
```


| Key                            | Description                                                                                               |
| ------------------------------ | --------------------------------------------------------------------------------------------------------- |
| data                           | Container for order data.                                                                                 |
| orders                         | An array containing individual order objects.                                                             |
| mode                           | Indicates the status of the order, e.g., "NEW."                                                           |
| exchange                       | The stock exchange where the order is placed, e.g., "BSE" or "NSE."                                      |
| segment                        | The trading segment, if applicable.                                                                      |
| login_id                       | Unique identifier for the user or client.                                                                 |
| deposit                        | The deposit amount associated with the order.                                                             |
| order_status                   | The current status of the order, e.g., "REJECTED" or "COMPLETE."                                          |
| product                        | The product type, such as "MIS," "CNC," etc.                                                             |
| order_type                     | The type of order, e.g., "LIMIT," "SLM," etc.                                                            |
| rejection_reason               | The reason for order rejection, if applicable.                                                            |
| order_side                     | The side of the order, e.g., "BUY" or "SELL."                                                            |
| instrument_token               | Token representing the financial instrument.                                                              |
| exchange_time                  | The timestamp from the exchange.                                                                          |
| nnf_id                         | Unique identifier for the order in the NNF system.                                                        |
| quantity                       | The quantity of the order.                                                                               |
| trading_symbol                 | The trading symbol associated with the order.                                                             |
| client_id                      | Unique identifier for the client.                                                                         |
| average_trade_price            | The average trade price, if applicable.                                                                   |
| underlying_token               | Token representing the underlying asset.                                                                  |
| oms_order_id                   | Order ID in the Order Management System.                                                                 |
| lot_size                       | The lot size associated with the order.                                                                   |
| isin                           | ISIN (International Securities Identification Number) of the instrument.                                  |
| disclosed_quantity             | The disclosed quantity, if applicable.                                                                   |
| execution_type                 | The type of execution, e.g., "BO," "AMO," etc.                                                           |
| source                         | The source of the order, e.g., "pacetrader.pacefin.in."                                                  |
| device                         | The device through which the order is placed, e.g., "android" or "WEB."                                  |
| exchange_order_id              | Order ID assigned by the exchange.                                                                        |
| validity                       | The validity period of the order, e.g., "DAY."                                                           |
| leg_order_indicator            | Indicator for leg orders.                                                                                |
| trade_price                    | The trade price associated with the order.                                                               |
| spread_token                   | Token representing spread orders.                                                                         |
| market_protection_percentage   | Market protection percentage, if applicable.                                                             |
| filled_quantity                | The quantity of the order that has been filled.                                                          |
| order_tag                      | Additional tag or label for the order.                                                                   |
| sl_trigger_price               | Trigger price for stop-loss orders.                                                                      |
| square_off                     | Indicates if the order is a square-off order.                                                            |
| order_status_info              | Additional information about the order status.                                                           |
| square_off_value               | Value associated with square-off orders.                                                                 |
| tags                           | Additional tags associated with the order.                                                               |
| order_entry_time               | The timestamp when the order was entered.                                                                |
| last_activity_reference        | Reference to the last activity related to the order.                                                     |
| trigger_price                  | Trigger price for the order.                                                                             |
| sl_order_price                 | Price for stop-loss orders.                                                                              |
| stop_loss_value                | Value associated with stop-loss orders.                                                                  |
| rejection_code                 | Code indicating the reason for order rejection.                                                          |
| average_price                  | The average price associated with the order.                                                             |
| trailing_stop_loss             | Value for trailing stop-loss orders.                                                                     |
| price                          | The price specified in the order.                                                                        |
| user_order_id                  | User-specific order identifier.                                                                         |
| symbol                         | The symbol or ticker of the financial instrument.                                                        |
| is_trailing                    | Indicates if the order has trailing stop-loss.                                                           |
| pro_cli                        | Professional client designation.                                                                         |
| remaining_quantity             | The remaining quantity of the order to be filled.                                                        |
| contract_description           | Description of the contract, if applicable.                                                              |
| series                         | The series of the instrument, if applicable.                                                             |
| target_price_type              | Type of target price, e.g., "absolute."                                                                  |
| sl_order_quantity              | Quantity specified for stop-loss orders.                                                                 |



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

