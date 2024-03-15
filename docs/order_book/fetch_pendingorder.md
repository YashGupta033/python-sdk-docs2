<!-- ## Fetch Pending Orders -->

The Pending Orders API retrieves information about orders that are currently pending and yet to be executed from the order book. By utilizing this API, users can access essential details regarding their outstanding orders, including the order ID, order type, price, quantity, and timestamp of placement. This API enables traders to monitor their pending orders in real-time, facilitating effective order management and decision-making. By staying informed about pending orders, users can adjust their strategies, modify existing orders, or place new ones as needed to capitalize on market opportunities.

```python
res = pocket.getPendingOrderBook()    # No parameter needs to be passed
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
                "exchange": "NFO",
                "segment": "",
                "login_id": "HI0009",
                "deposit": 0,
                "order_status": "AMO_MODIFY_CONFIRMED",
                "product": "NRML",
                "order_type": "LIMIT",
                "rejection_reason": "",
                "order_side": "BUY",
                "instrument_token": 100803,
                "exchange_time": 1709996020,
                "nnf_id": 333333333333100,
                "quantity": 1500,
                "trading_symbol": "COFORGE24MAR5700PE",
                "client_id": "HI0009",
                "average_trade_price": 0,
                "underlying_token": null,
                "oms_order_id": "2024030943",
                "lot_size": 150,
                "isin": "",
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
                "order_entry_time": 1709995984,
                "last_activity_reference": 0,
                "trigger_price": 0,
                "sl_order_price": 0.0,
                "stop_loss_value": 0.0,
                "rejection_code": 0,
                "average_price": 0,
                "trailing_stop_loss": 0.0,
                "price": 30.7,
                "user_order_id": "12780",
                "symbol": "COFORGE",
                "is_trailing": false,
                "pro_cli": "CLIENT",
                "remaining_quantity": 1500,
                "contract_description": {},
                "series": "OPTSTK",
                "target_price_type": "absolute",
                "sl_order_quantity": 0
            },
            {
                "mode": "NEW",
                "exchange": "NSE",
                "segment": "",
                "login_id": "HI0009",
                "deposit": 0,
                "order_status": "AMO_REQ_RECEIVED",
                "product": "MIS",
                "order_type": "LIMIT",
                "rejection_reason": "",
                "order_side": "BUY",
                "instrument_token": 13342,
                "exchange_time": 0,
                "nnf_id": 333333333333100,
                "quantity": 1,
                "trading_symbol": "VAKRANGEE-EQ",
                "client_id": "HI0009",
                "average_trade_price": 0,
                "underlying_token": null,
                "oms_order_id": "2024030930",
                "lot_size": 1,
                "isin": "INE051B01021",
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
                "order_entry_time": 1709991971,
                "last_activity_reference": 0,
                "trigger_price": 0,
                "sl_order_price": 0.0,
                "stop_loss_value": 0.0,
                "rejection_code": 0,
                "average_price": 0,
                "trailing_stop_loss": 0.0,
                "price": 22.0,
                "user_order_id": "12773",
                "symbol": "VAKRANGEE",
                "is_trailing": false,
                "pro_cli": "CLIENT",
                "remaining_quantity": 0,
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

| Key                            | Description                                                                                               |
| ------------------------------ | --------------------------------------------------------------------------------------------------------- |
| data                           | Container for order data.                                                                                 |
| orders                         | An array containing individual order objects.                                                             |
| mode                           | Indicates the status of the order, e.g., `NEW`.                                                           |
| exchange                       | The stock exchange where the order is placed, e.g., `NFO` or `NSE`.                                      |
| segment                        | The trading segment, if applicable.                                                                      |
| login_id                       | Unique identifier for the user or client.                                                                 |
| deposit                        | The deposit amount associated with the order.                                                             |
| order_status                   | The current status of the order, e.g., `AMO_MODIFY_CONFIRMED` or `AMO_REQ_RECEIVED`.                      |
| product                        | The product type, such as `NRML`, `MIS`, `CNC`.                                                            |
| order_type                     | The type of order, e.g., `LIMIT`.                                                                        |
| rejection_reason               | The reason for order rejection, if applicable.                                                            |
| order_side                     | The side of the order, e.g. `BUY` or `SELL`.                                                            |
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
| execution_type                 | The type of execution, e.g., `AMO`.                                                                      |
| source                         | The source of the order, e.g., `pacetrader.pacefin.in`.                                                  |
| device                         | The device through which the order is placed, e.g., `Web`, `Mobile`                                          |
| exchange_order_id              | Order ID assigned by the exchange.                                                                        |
| validity                       | The validity period of the order, e.g., `DAY`.                                                           |
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
| target_price_type              | Type of target price, e.g., `absolute`.                                                                  |
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