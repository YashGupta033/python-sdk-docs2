<!-- ## Fetch Completed Orders -->

The Completed Orders API retrieves information about orders that have been successfully executed and completed from the order book. By accessing this API, users can obtain detailed data on their past transactions, including the order ID, type of order, price, quantity, timestamp, and any associated fees. This API provides valuable insights into trading activity, allowing users to analyze their performance, track order history, and reconcile transactions efficiently. 


``` python
Endpoint: /api/v1/orders
Method-Type: GET
```

### Query Params
```json
{
    "type": "completed",
    "client_id": "YG1234"
}
```

### Example
```python
response = pocket.getCompletedOrder()
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
                "login_id": "YG1234",
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
                "client_id": "YG1234",
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
            
        ]
    },
    "message": "",
    "status": "success"
}
```


| Key                            | Description                                                                                               |
| ------------------------------ | --------------------------------------------------------------------------------------------------------- |
| orders                         | An array containing individual order objects.                                                             |
| mode                           | Indicates the status of the order, e.g., "NEW."                                                           |
| exchange                       | The stock exchange where the order is placed, e.g., "BSE" or "NSE."                                      |
| segment                        | The trading segment.                                                                      |
| login_id                       | Unique identifier for the client.                                                                 |
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

