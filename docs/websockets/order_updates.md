
Live order updates are essential in algorithmic trading as they provide real-time data crucial for making swift decisions, managing risk effectively, and capturing fleeting arbitrage opportunities. These updates allow algorithms to adjust strategies instantly, reduce slippage, and ensure compliance with regulatory requirements, directly impacting profitability and operational efficiency in algo trading environments. To get order updates, trader needs to subscribe first to order updates via python library.

### Subscribe to get order updates

```python
response = pocket_ws.subscribe_order_update()
```

### Read order updates
```python
order_updates = pocket_ws.read_order_update_data()
```

### Order Updates Response
```json
{
    "error":{
    "code": 0,
    "message": ""},
    "result": [
    {
    "average_price": 0,
    "average_trade_price": 0,
    "client_id": "SB3179",
    "deposit": 0,
    "device": "",
    "disclosed_quantity": 0,
    "exchange": "NSE",
    "exchange_order_id": "1200000008791186",
    "exchange_time": 1641191673,
    "execution_type": "REGULAR",
    "filled_quantity": 0,
    "instrument_token": 10666,
    "last_activity_reference": 1325678673994464800,
    "leg_order_indicator": "",
    "login_id": "SB3179",
    "lot_size": 0,
    "lotsize": 1,
    "market_protection_percentage": 0,
    "mode": "MODIFY",
    "nest_request_id": "",
    "nnfid": 111111111111100,
    "oms_order_id": "20220103-1157",
    "order_entry_time": 1641191331,
    "order_side": "BUY",
    "order_status": "MODCONFIRMED",
    "order_type": "LIMIT",
    "price": 36.95,
    "pro_cli": "CLIENT",
    "product": "MIS",
    "quantity": 1,
    "rejection_code": "NONE",
    "rejection_reason": "NONE",
    "remaining_quantity": 1,
    "series": "",
    "spread_token": "",
    "trade_price": 0,
    "trading_symbol": "PNB-EQ",
    "transaction_type": "LIMIT",
    "trigger_price": 0,
    "user_order_id": "10002",
    "validity": "DAY",
    }]
}
```

| Field                            | Description                                                      |
|----------------------------------|------------------------------------------------------------------|
| `average_price`                  | The average price at which the order has been executed so far.   |
| `average_trade_price`            | The average price of trades related to this order.               |
| `client_id`                      | Unique identifier for the client.                                |
| `deposit`                        | Amount deposited, relevant in some trading contexts.             |
| `device`                         | Device used for placing the order, if applicable.                |
| `disclosed_quantity`             | The quantity of the order disclosed to the market.               |
| `exchange`                       | The financial exchange where the order is placed (e.g., NSE).    |
| `exchange_order_id`              | The order ID assigned by the exchange.                           |
| `exchange_time`                  | Timestamp of when the order was recognized by the exchange.      |
| `execution_type`                 | Type of order execution (e.g., REGULAR).                         |
| `filled_quantity`                | Quantity of the order that has been filled.                      |
| `instrument_token`               | Unique identifier for the financial instrument.                  |
| `last_activity_reference`        | Reference to the last activity associated with this order.       |
| `leg_order_indicator`            | Indicates if the order is part of a multi-leg strategy.          |
| `login_id`                       | Login identifier for the user who placed the order.              |
| `lot_size`                       | The size of a standard lot of the instrument.                    |
| `lotsize`                        | Another reference to lot size, possibly due to system variations.|
| `market_protection_percentage`   | Percentage of market protection, if applicable.                  |
| `mode`                           | Mode of the order (e.g., MODIFY).                                |
| `nest_request_id`                | Identifier for the request in the trading system.                |
| `nnfid`                          | Network node financial ID, a system-specific identifier.         |
| `oms_order_id`                   | Order management system identifier for the order.                |
| `order_entry_time`               | Timestamp when the order was entered into the system.            |
| `order_side`                     | Indicates whether the order is a BUY or SELL.                    |
| `order_status`                   | Current status of the order (e.g., MODCONFIRMED).                |
| `order_type`                     | Type of order (e.g., LIMIT, MARKET).                             |
| `price`                          | Price specified in the order.                                    |
| `pro_cli`                        | Indicates whether the order is placed by a professional or client.|
| `product`                        | Trading product or strategy (e.g., MIS, CNC).                    |
| `quantity`                       | Quantity ordered.                                                |
| `rejection_code`                 | Code indicating reason for rejection, if any.                    |
| `rejection_reason`               | Textual reason for any rejection of the order.                   |
| `remaining_quantity`             | Quantity of the order that remains unfilled.                     |
| `series`                         | Financial series or category if applicable.                      |
| `spread_token`                   | Token related to spread orders, if applicable.                   |
| `trade_price`                    | The price at which the last trade occurred.                      |
| `trading_symbol`                 | The trading symbol or ticker of the instrument.                  |
| `transaction_type`               | Indicates the type of transaction (e.g., LIMIT, MARKET).         |
| `trigger_price`                  | Price at which a trigger-based order activates.                  |
| `user_order_id`                  | User-defined order identifier.                                   |
| `validity`                       | Validity of the order (e.g., DAY, IOC).                          |




### Unsubscribe order updates
```python
response = pocket_ws.unsubscribe_order_update()
```
