<!-- ## Order History -->
The Order History API provides users with access to comprehensive data on past transactions recorded in the order book. This includes details such as order ID, order type, price, quantity, timestamp, and any associated fees. By utilizing this API, traders can review their complete and pending order.

```python
Endpoint: /api/v1/order/<oms_order_id>/history
Method-Type: GET
```

### Query Params
```json
{
    "client_id": "YG1234"
}
```


### Response
```json
{
    "data":{
        "order history": [
        {
            "avg_price": 40672,
            "client_id": "DEMO1",
            "client_order_id": "900005",
            "created_at": 1605683202,
            "disclosed_quantity": 1,
            "exchange": "MCX",
            "exchange_order_id": "202032300187427",
            "exchange_time": 0,
            "fill_quantity": 1,
            "last_modified": 1605683202477299000,
            "login_id": "DEMO1",
            "modified_at": 1605683202,
            "order_id": "63904ddd-df0c-4546-bbdc-4c21c0796f5b",
            "order_mode": "NEW",
            "order_side": "SELL",
            "order_type": "LIMIT",
            "price": 40672,
            "product": "NRML",
            "quantity": 1,
            "reject_reason": "NONE",
            "remaining_quantity": 0,
            "segment": "FutOpt",
            "status": "COMPLETE",
            "symbol": "GOLDGUINEA",
            "token": 224417,
            "trigger_price": 0,
            "underlying_token": 425,
            "validity": "DAY"
        }]
        "message": "",
        "status": "success"
    }
}
```

| Key                  | Description                                                        |
| -------------------- | ------------------------------------------------------------------ |
| avg_price            | Average price of the order.                                        |
| client_id            | Unique identifier for the client.                                  |
| client_order_id      | Client-specific order identifier.                                  |
| created_at           | Timestamp indicating when the order was created.                   |
| disclosed_quantity   | Quantity disclosed, if applicable.                                 |
| exchange             | The exchange where the order is placed.                            |
| exchange_order_id    | Order ID assigned by the exchange.                                  |
| exchange_time        | Timestamp from the exchange.                                       |
| fill_quantity        | Quantity of the order that has been filled.                        |
| last_modified        | Timestamp of the last modification to the order.                   |
| login_id             | Unique identifier for the user.                                    |
| modified_at          | Timestamp of the last modification to the order.                   |
| order_id             | Unique identifier for the order.                                    |
| order_mode           | Indicates the mode of the order, e.g., "NEW."                      |
| order_side           | Indicates the side of the order, e.g., "SELL."                     |
| order_type           | Type of order, e.g., "LIMIT."                                      |
| price                | Price specified in the order.                                       |
| product              | The product type, e.g., "NRML."                                     |
| quantity             | Quantity specified in the order.                                    |
| reject_reason        | Reason for order rejection, if any.                                 |
| remaining_quantity   | Remaining quantity of the order to be filled.                       |
| segment              | Trading segment, e.g., "FutOpt."                                    |
| status               | Current status of the order, e.g., "COMPLETE."                     |
| symbol               | Ticker symbol or name of the financial instrument.                 |
| token                | Token representing the financial instrument.                        |
| trigger_price        | Trigger price for the order.                                        |
| underlying_token     | Token representing the underlying asset.                            |
| validity             | Validity period of the order, e.g., "DAY."                          |



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