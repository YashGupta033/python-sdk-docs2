<!-- ## Create Basket -->
This method is used to create basket. It can create two types of basket i.e. Normal or Hedge. The Hedge Basket helps to hedge margins for all the instruments added in the basket.

```python
res = pocket.createBasket(Parameters)
```

### Parameters

| FieldName    | Datatype | Description                                     |
|--------------|----------|-------------------------------------------------|
| login_id     | `String`   | Represents the unique id of user or username.  |
| name         | `String`   | Represents the name of the basket.             |
| type         | `String`   | `NORMAL`, `HEDGE`                                  |
| product_type | `String`   | `CNC`, `MIS`, `NRML`                                 |
| order_type   | `String`   | `LIMIT`, `MARKET`, `SL`, `SLM`                         |


### Example
```python
response = pocket.createBasket(
    {
    "login_id":clintId,
    "name":"Basket1",
    "type":"NORMAL",
    "product_type":"ALL",
    "order_type":"ALL"
    }
)
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

| Field Name                 | Description                                                        |
|----------------------------|--------------------------------------------------------------------|
| data                       | Contains information about the basket and its associated orders.   |
| basket_id                  | Unique identifier for the basket.                                  |
| basket_type                | Type of basket (e.g., NORMAL, HEDGE).                                     |
| is_executed                | Indicates if the basket has been executed.                         |
| login_id                   | Identifier for the user's login.                                   |
| name                       | Name of the basket.                                                |
| order_type                 | Type of orders in the basket (e.g., ALL).                          |
| orders                     | Array containing details of individual orders within the basket.   |
| order_id                   | Unique identifier for the order.                                   |
| order_info                 | Information about the order.                                       |
| exchange                   | Exchange where the order is placed.                                |
| sl_trigger_price           | Trigger price for stop-loss order.                                 |
| client_id                  | Identifier for the client.                                         |
| mode                       | Mode of the order (e.g., NEW).                                     |
| product                    | Product type (e.g., CNC).                                          |
| rejection_code             | Code for rejection reason.                                         |
| rejection_reason           | Reason for rejection.                                              |
| order_side                 | Side of the order (e.g., BUY).                                     |
| market_protection_percentage | Limit on price deviation for order placement.                     |
| validity                   | Validity of the order (e.g., DAY).                                 |
| trading_symbol             | Symbol for the traded security.                                    |
| trigger_price              | Trigger price for the order.                                       |
| is_trailing                | Indicates if trailing stop-loss is enabled.                        |
| series                     | Series for the order (e.g., EQ).                                   |
| lot_size                   | Size of the trading lot.                                           |
| leg_order_indicator        | Indicator for identifying leg of the order.                         |
| disclosed_quantity         | Quantity disclosed in the order.                                   |
| order_entry_time           | Time at which the order was entered.                               |
| sl_order_quantity          | Quantity for stop-loss order.                                      |
| order_type                 | Type of order (e.g., LIMIT).                                       |
| average_price              | Average price of the order.                                        |
| deposit                    | Deposit amount for the order.                                      |
| contract_description       | Description of the contract.                                       |
| average_trade_price        | Average trade price of the order.                                  |
| oms_order_id               | Order ID assigned by the order management system.                  |
| filled_quantity            | Quantity filled for the order.                                     |
| order_status_info          | Additional information about the order status.                     |
| trailing_stop_loss         | Value for trailing stop-loss.                                     |
| price                      | Price specified for the order.                                     |
| segment                    | Segment of the market.                                             |
| underlying_token           | Token for the underlying security.                                 |
| sl_order_price             | Price for stop-loss order.                                         |
| instrument_token           | Token for the instrument.                                          |
| trade_price                | Price at which the trade occurred.                                 |
| symbol                     | Symbol for the order.                                              |
| target_price_type          | Type of target price (e.g., absolute).                             |
| execution_type             | Type of execution (e.g., REGULAR).                                 |
| quantity                   | Quantity of shares in the order.                                   |
| order_tag                  | Tag associated with the order.                                     |
| spread_token               | Token for the spread.                                              |
| isin                       | International Securities Identification Number (ISIN).             |
| pro_cli                    | Type of client (e.g., CLIENT).                                     |
| tags                       | Additional tags associated with the order.                         |
| last_activity_reference    | Reference to the last activity related to the order.               |
| square_off_value           | Value for square-off.                                              |
| remaining_quantity         | Remaining quantity for the order.                                  |
| square_off                 | Indicates if square-off is enabled.                                |
| stop_loss_value            | Value for stop-loss.                                               |
| exchange_order_id          | Order ID assigned by the exchange.                                 |
| exchange_time              | Time at which the order was executed by the exchange.             |
| device                     | Device used for placing the order.                                 |
| user_order_id              | User-specific identifier for the order.                            |
| source                     | Source of the order.                                               |
| status                     | Status of the operation (e.g., success).                           |
| message                    | Description of the operation's outcome.                           |



### Error Response
```json
{ 
  data: {}
  error_code: 48001
  message: "name has already been taken"
  status: "error"
}
```










