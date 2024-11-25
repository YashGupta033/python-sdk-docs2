
Trade updates are vital in algorithmic trading as they offer real-time insights into executed trades, enabling accurate tracking of filled orders, performance analysis, and portfolio adjustments. These updates help algorithms fine-tune strategies based on actual trade outcomes, manage positions effectively, and mitigate risks such as over-exposure. In algo trading, timely trade updates are crucial for optimizing execution, reducing market impact, and ensuring compliance with post-trade reporting and regulatory obligations, ultimately influencing profitability and operational performance.

### Subscribe to get trade updates

```python
response = pocket_ws.subscribe_trade_update()
```

### Read trade updates
```python
trade_updates = pocket_ws.read_trade_update_data()
```

### Trade Updates Response
```json
{
    "error": {
        "code": 0,
        "message": ""
    },
    "result": [
        {
            "client_id": "SB3179",
            "exchange": "NSE",
            "exchange_order_id": "1200000014631276",
            "exchange_time": 1641201487,
            "filled_quantity": 1,
            "instrument_token": 10666,
            "login_id": "SB3179",
            "oms_order_id": "20220103-1891",
            "order_side": "BUY",
            "pro_cli": "CLIENT",
            "product": "CNC",
            "trade_id": "53768151",
            "trade_price": 38,
            "trading_symbol": "PNB-EQ",
            "transaction_type": null,
            "user_order_id": "10002",
            "v_login_id": null
        }
    ]
}

```

### Response
| Field                     | Description                                                      |
|---------------------------|------------------------------------------------------------------|
| `client_id`               | Unique identifier for the client placing the order.              |
| `exchange`                | The financial exchange where the order was executed (e.g., NSE).|
| `exchange_order_id`       | The order ID assigned by the exchange for tracking.              |
| `exchange_time`           | Timestamp indicating when the order was recognized by the exchange.|
| `filled_quantity`         | The number of shares or contracts that have been filled from the order.|
| `instrument_token`        | Unique token identifying the instrument traded.                  |
| `login_id`                | Identifier for the login session of the client.                  |
| `oms_order_id`            | The order management system (OMS) ID assigned to the order.     |
| `order_side`              | Indicates whether the order is a buy or sell (e.g., BUY).       |
| `pro_cli`                 | Indicates if the client is a professional trader or retail client.|
| `product`                 | Type of product traded (e.g., CNC for delivery trades).         |
| `trade_id`                | Unique identifier for the trade executed.                        |
| `trade_price`             | The price at which the trade was executed.                       |
| `trading_symbol`          | The symbol used to represent the traded instrument (e.g., PNB-EQ).|
| `transaction_type`        | Type of transaction (e.g., market, limit); `null` indicates it's not specified.|
| `user_order_id`           | Identifier for the order as provided by the user.                |
| `v_login_id`              | A placeholder for an alternative login identifier; often `null`. |





### Unsubscribe trade updates
```python
response = pocket_ws.unsubscribe_trade_update()
```
