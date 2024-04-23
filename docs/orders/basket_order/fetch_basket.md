<!-- ## Fetch Basket Order -->
This method used to fetch details of the basket order like basketId, basket type, name, login Id etc. It displays total number of baskets created along with the added instrument details.

```python
pocket.fetchBasket()   
```

### Example
```python
response = pocket.fetchBasket()        # No params needs to be passed.
```


## Response
```json
{
        "data": [
            {
                "basketId": "723905f6-b0f6-4bf9-a4f7-b0f119d9e24f",
                "basketType": "NORMAL",
                "isExecuted": false,
                "loginId": "HI0009",
                "name": "pockbask",
                "orderType": "ALL",
                "orders": [
                    {
                        "orderId": "5829e63e-f83d-423f-9327-37f6c5a0c6b5",
                        "orderInfo": {
                            "triggerPrice": 0,
                            "underlyingToken": "13342",
                            "series": "EQ",
                            "userOrderId": 28483,
                            "exchange": "NSE",
                            "squareOff": false,
                            "mode": "NEW",
                            "remainingQuantity": 0,
                            "averageTradePrice": 0,
                            "tradePrice": 0,
                            "orderTag": "",
                            "orderStatusInfo": "",
                            "orderSide": "BUY",
                            "squareOffValue": 0,
                            "contractDescription": {},
                            "segment": "",
                            "clientId": "HI0009",
                            "tradingSymbol": "VAKRANGEE-EQ",
                            "rejectionCode": 0,
                            "lotSize": 0,
                            "quantity": 1,
                            "lastActivityReference": 0,
                            "nnfId": 0,
                            "proCli": "CLIENT",
                            "price": 10,
                            "orderType": "LIMIT",
                            "validity": "DAY",
                            "targetPriceType": "absolute",
                            "instrumentToken": 13342,
                            "slTriggerPrice": 0,
                            "isTrailing": false,
                            "slOrderQuantity": 0,
                            "orderEntryTime": 0,
                            "exchangeTime": 0,
                            "legOrderIndicator": null,
                            "trailingStopLoss": 0,
                            "loginId": null,
                            "omsOrderId": "",
                            "marketProtectionPercentage": 0,
                            "executionType": "REGULAR",
                            "disclosedQuantity": 0,
                            "rejectionReason": "",
                            "stopLossValue": 0,
                            "device": null,
                            "product": "CNC",
                            "slOrderPrice": 0,
                            "filledQuantity": 0,
                            "exchangeOrderId": "",
                            "deposit": 0,
                            "averagePrice": 0,
                            "spreadToken": null,
                            "orderStatus": null
                        }
                    }
                ],
                "productType": "ALL",
                "sipEligible": true,
                "sipEnabled": false
            }]
    }
            
```

| Field Name             | Description                                                        |
|------------------------|--------------------------------------------------------------------|
| basketId               | Unique identifier for the basket.                                  |
| basketType             | Type of basket (e.g., NORMAL).                                     |
| isExecuted             | Indicates if the basket has been executed.                         |
| loginId                | Identifier for the user's login.                                    |
| name                   | Name of the basket.                                                 |
| orderType              | Type of orders in the basket (e.g., ALL).                           |
| orders                 | Array containing details of individual orders within the basket.    |
| productType            | Type of product associated with the basket (e.g., ALL).             |
| sipEligible            | Indicates if the basket is eligible for Systematic Investment Plan. |
| sipEnabled             | Indicates if the basket's SIP is enabled.                          |
| orderId                | Unique identifier for the order.                                   |
| triggerPrice           | Trigger price for the order.                                        |
| underlyingToken        | Token for the underlying security.                                  |
| series                 | Series for the order.                                               |
| userOrderId            | User-specific identifier for the order.                             |
| exchange               | Exchange where the order is placed.                                 |
| squareOff              | Indicates if square-off is enabled.                                 |
| mode                   | Mode of the order.                                                  |
| remainingQuantity      | Remaining quantity for the order.                                   |
| averageTradePrice      | Average trade price of the order.                                   |
| tradePrice             | Price at which the trade occurred.                                  |
| orderTag               | Tag associated with the order.                                      |
| orderStatusInfo        | Additional information about the order status.                      |
| orderSide              | Side of the order.                                                  |
| squareOffValue         | Value for square-off.                                               |
| contractDescription    | Description of the contract.                                        |
| segment                | Segment of the market.                                              |
| clientId               | Identifier for the client.                                           |
| tradingSymbol          | Symbol for the traded security.                                      |
| rejectionCode          | Code for rejection reason.                                           |
| lotSize                | Size of the trading lot.                                            |
| quantity               | Quantity of shares in the order.                                    |
| lastActivityReference | Reference to the last activity related to the order.                |
| nnfId                  | NNF ID for the order.                                               |
| proCli                 | Type of client (e.g., CLIENT).                                      |
| price                  | Price specified for the order.                                      |
| orderType              | Type of order (e.g., LIMIT).                                        |
| validity               | Validity of the order.                                              |
| targetPriceType        | Type of target price (e.g., absolute).                              |
| instrumentToken        | Token for the instrument.                                           |
| slTriggerPrice         | Trigger price for stop-loss order.                                  |
| isTrailing             | Indicates if trailing stop-loss is enabled.                         |
| slOrderQuantity        | Quantity for stop-loss order.                                       |
| orderEntryTime         | Time at which the order was entered.                                |
| exchangeTime           | Time at which the order was executed by the exchange.               |
| legOrderIndicator      | Indicator for identifying leg of the order.                          |
| trailingStopLoss       | Value for trailing stop-loss.                                       |
| omsOrderId             | Order ID assigned by the order management system.                   |
| marketProtectionPercentage | Limit on price deviation for order placement.                    |
| executionType          | Type of execution (e.g., REGULAR).                                  |
| disclosedQuantity      | Quantity disclosed in the order.                                    |
| rejectionReason        | Reason for rejection.                                               |
| stopLossValue          | Value for stop-loss.                                                |
| device                 | Device used for placing the order.                                  |
| product                | Product type (e.g., CNC).                                           |
| slOrderPrice           | Price for stop-loss order.                                          |
| filledQuantity         | Quantity filled for the order.                                      |
| exchangeOrderId        | Order ID assigned by the exchange.                                   |
| deposit                | Deposit amount for the order.                                       |
| averagePrice           | Average price of the order.                                         |


## Error Response
```json
 {
    "data": {},
    "error_code": 48001,
    "message": "`order_info` Hedge basket feature enabled only for NIFTY 50 & NIFTY BANK as underlying",
    "status": "error"
 }
```