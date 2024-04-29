<!-- ## Add Basket Instrument -->
This method used to add Instrument in the created basket. We can add only limited number of instruments in the basket and repeated instrument can't be added.


```python 
Endpoint: api/v1/basket/order
Method-Type: POST
Method: pocket.addBasketInstrument(Parameters)
```

## Parameters
| FieldName          | Datatype       | Description                                          |
|--------------------|----------------|------------------------------------------------------|
| basket_id          | `String`         | Represents the unique id of basket.                  |
| name               | `String`         | Represents the name of the basket.                   |
| exchange           | `String`         | `NSE`, `BSE`, `NFO`, `CDS`, `MCX`                             |
| instrument_token   | `Integer`         | Represents unique id of a particular instrument.     |
| client_id          | `String`         | Represents the unique id of user or username.        |
| order_type         | `String`         | `LIMIT`, `MARKET`, `SL`, `SLM`                              |
| price              | `String`         | price at which order will get placed                                    |
| product            | `String`         | `CNC`, `MIS`, `NRML`                                       |      |
| disclose_quantity  | `Integer`         | It can't be a negative number.                       |
| execution_type     | `String`         | `REGULAR`, `BO`, `CO`, `AMO`                                 |
| order_side         | `String`         | `BUY` or `SELL`                                          |
| quantity           | `Integer`         | total number of instruments to trade.                                    |
| series             | `String`         | Represents the particular series based on exchange.  |
| trading_symbol     | `String`         | Represents the name of the instrument.               |
| trigger_price      | `Float`         | Price at which order will get triggered                                    |
| underlying_token   | `Integer`         | It is the token of the base equity instrument.       |
| user_order_id      | `Integer`         | Unique id of the order placed.                       |
| validity           | `String`         | `Day` or `IOC`                                           |


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

| Field Name                   | Description                                                                                     |
|------------------------------|-------------------------------------------------------------------------------------------------|
| basket_id                    | Unique identifier for the basket.                                                              |
| basket_type                  | Type of the basket.                                                                            |
| is_executed                  | Indicates whether the basket has been executed.                                                |
| login_id                     | Identifier for the user's login.                                                               |
| name                         | Name of the basket.                                                                            |
| order_type                   | Type of orders in the basket.                                                                  |
| order_id                     | Unique identifier for the order.                                                               |
| exchange                     | Exchange where the order is placed.                                                            |
| client_id                    | Identifier for the order's login.                                                              |
| mode                         | Mode of the order.                                                                             |
| product                      | Product type associated with the order.                                                        |
| order_side                   | Side of the order.                                                                             |
| validity                     | Validity of the order.                                                                         |
| trading_symbol               | Symbol for the traded security.                                                                |
| execution_type               | Type of execution.                                                                             |
| quantity                     | Quantity of shares in the order.                                                               |
| price                        | Price specified for the order.                                                                 |
| segment                      | Segment of the market.                                                                         |
| underlying_token             | Token for the traded security.                                                                 |
| instrument_token             | Token for the traded security.                                                                 |
| target_price_type            | Type of target price.                                                                          |
| user_order_id                | Identifier for the user's order.                                                               |
| market_protection_percentage | Market protection percentage.                                                                  |
| nnf_id                       | NNF ID.                                                                                        |
| series                       | Trading series.                                                                                |
| lot_size                     | Lot size.                                                                                      |
| disclosed_quantity           | Disclosed quantity.                                                                            |
| order_entry_time             | Time of order entry.                                                                           |
| sl_order_quantity            | Quantity of shares for stop loss order.                                                        |
| order_type                   | Type of order.                                                                                 |
| average_price                | Average price of filled shares.                                                                |
| deposit                      | Deposit amount.                                                                                |
| average_trade_price          | Average trade price.                                                                           |
| filled_quantity              | Quantity of shares filled.                                                                     |
| order_status_info            | Information about order status.                                                                |
| trailing_stop_loss           | Trailing stop loss value.                                                                      |
| sl_trigger_price             | Trigger price for stop loss order.                                                             |
| sl_order_price               | Price for stop loss order.                                                                     |
| trade_price                  | Trade price.                                                                                   |
| symbol                       | Symbol for the traded security.                                                                |
| order_tag                    | Order tag.                                                                                     |
| spread_token                 | Spread token.                                                                                  |
| isin                         | ISIN of the traded security.                                                                   |
| pro_cli                      | Type of client.                                                                                |
| tags                         | Additional tags for the order.                                                                 |
| last_activity_reference      | Reference for the last activity.                                                               |
| square_off_value             | Value for square off.                                                                          |
| remaining_quantity           | Remaining quantity of shares.                                                                  |
| square_off                   | Indicates if the order is square off.                                                          |
| stop_loss_value              | Stop loss value for the order.                                                                 |
| exchange_order_id            | Exchange order ID.                                                                             |
| exchange_time                | Time of exchange order.                                                                        |
| device                       | Device from which the order was placed.                                                        |
| source                       | Source of the order.                                                                           |



## Error Response
```json
  {
     "data": {},
     "error_code": 46001,
     "message": "Instrumetn already added",
     "status": "error"
  }
```