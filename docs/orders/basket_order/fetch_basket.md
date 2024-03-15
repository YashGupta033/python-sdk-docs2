<!-- ## Fetch Basket Order -->
This method used to fetch details of the basket order like basketId, basket type, name, login Id etc. It displays total number of baskets created along with the added instrument details.

```python
pocket.fetchBasket()    #No params
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
            },
            {
                "basketId": "f67ec77b-81a7-4b4e-b45d-16ce949ecb09",
                "basketType": "NORMAL",
                "isExecuted": false,
                "loginId": "HI0009",
                "name": "basket_test1",
                "orderType": "ALL",
                "orders": [
                    {
                        "orderId": "d69bd238-3731-49a0-b54a-8ce770a63af8",
                        "orderInfo": {
                            "triggerPrice": 0,
                            "underlyingToken": "14366",
                            "series": "EQ",
                            "userOrderId": 10002,
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
                            "tradingSymbol": "IDEA-EQ",
                            "rejectionCode": 0,
                            "lotSize": 0,
                            "quantity": 1,
                            "lastActivityReference": 0,
                            "nnfId": 0,
                            "proCli": "CLIENT",
                            "price": 13.75,
                            "orderType": "LIMIT",
                            "validity": "DAY",
                            "targetPriceType": "absolute",
                            "instrumentToken": 14366,
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
            }
```

## Error Response
```json
 {
    "data": {},
    "error_code": 48001,
    "message": "`order_info` Hedge basket feature enabled only for NIFTY 50 & NIFTY BANK as underlying",
    "status": "error"
 }
```