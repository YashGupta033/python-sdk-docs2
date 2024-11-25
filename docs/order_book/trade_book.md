<!-- ## Trade Book -->
Trade book API fetches record or log of all the trades executed by an account holder. It contains details such as the date and time of the trade, the security traded (e.g., stocks, options, futures), the quantity bought or sold, the price at which the trade was executed.

```python
Endpoint: /api/v1/trades
Method-Type: GET
```

### Query Params
```json
{
    "client_id": "YG1234"
}
```

### Example
```python
response = pocket.getTradeBook()
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
        "login_id": "YG1234",
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
        "client_id": "YG1234",
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

| Key                             | Description                                           |
|---------------------------------|-------------------------------------------------------|
| mode                            | Mode of the transaction, e.g., NEW for new orders     |
| exchange                        | Stock exchange identifier, e.g., NSE                  |
| segment                         | Market segment, could be blank if not applicable      |
| login_id                        | User login identifier                                 |
| deposit                         | Amount of deposit, if applicable                      |
| order_status                    | Current status of the order, e.g., CONFIRMED          |
| product                         | Type of product, e.g., MIS (Margin Intraday Square off)|
| order_type                      | Type of order, e.g., LIMIT                            |
| rejection_reason                | Reason for order rejection, if any                    |
| order_side                      | Side of the order, e.g., BUY                          |
| instrument_token                | Unique identifier for the instrument                  |
| exchange_time                   | Timestamp for when the order was recorded on the exchange|
| nnf_id                          | Unique identifier for the participant                 |
| quantity                        | Number of units in the order                          |
| trading_symbol                  | Trading symbol of the security, e.g., IDEA-EQ         |
| client_id                       | Client identifier matching login_id                   |
| average_trade_price             | Average price at which trades were executed           |
| underlying_token                | Token for the underlying asset, if applicable         |
| oms_order_id                    | Order management system identifier                    |
| lot_size                        | Number of units in each lot                           |
| isin                            | International Securities Identification Number        |
| disclosed_quantity              | Quantity of the order disclosed to the market         |
| execution_type                  | Type of execution, e.g., REGULAR                      |
| source                          | Source of the order, e.g., manual, automated          |
| device                          | Device used to place the order, if specified          |
| exchange_order_id               | Order identifier given by the exchange                |
| validity                        | Validity of the order, e.g., DAY                      |
| leg_order_indicator             | Indicator for leg of a complex order, if applicable   |
| trade_price                     | Price at which the trade was executed, if applicable  |
| spread_token                    | Token related to spread orders, if applicable         |
| market_protection_percentage    | Percentage of market protection, if applicable        |
| filled_quantity                 | Quantity of the order that has been filled            |
| order_tag                       | Tag associated with the order, for user categorization|
| sl_trigger_price                | Trigger price for a stop-loss order                   |
| square_off                      | Indicates if the position is to be squared off        |
| order_status_info               | Additional info about the order status                |
| square_off_value                | Value at which to square off, if applicable           |
| tags                            | Tags associated with the order                        |
| order_entry_time                | Timestamp when the order was entered                  |
| last_activity_reference         | Reference ID for the last activity on this order      |
| trigger_price                   | Price at which an order trigger is set                |
| sl_order_price                  | Price set for a stop-loss order                       |
| stop_loss_value                 | Value set for the stop-loss                           |
| rejection_code                  | Code representing the reason for rejection, if any    |
| average_price                   | Average price of the order                            |
| trailing_stop_loss              | Indicates if a trailing stop loss is set              |
| price                           | Price set for the order                               |
| user_order_id                   | User-defined identifier for the order                 |
| symbol                          | Symbol of the traded security                         |
| is_trailing                     | Indicates whether trailing is enabled                 |
| pro_cli                         | Profile type, e.g., CLIENT                            |
| remaining_quantity              | Quantity remaining to be filled                       |
| contract_description            | Description of the contract, if applicable            |
| series                          | Series of the traded security, e.g., EQ               |
| target_price_type               | Type of target price, e.g., absolute                  |
| sl_order_quantity               | Quantity for a stop-loss order                        |




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