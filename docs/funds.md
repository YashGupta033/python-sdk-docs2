# Funds

## Get Fund Details
The "Get Fund" API is a request made to retrieve information about a user's funds or financial assets held within a particular account or platform. Typically, this API returns details such as the available balance, total funds invested, holdings, and any pending transactions. It provides users with real-time access to their financial data, allowing them to monitor their investments, track their portfolio performance, and make informed decisions about managing their funds effectively.

```python
res = pocket.getFunds()     # No params needs to be passed
```

### Response
```json
{
    "data": {
        "client_id": "HI0009",
        "headers": [
            "Description",
            ""
        ],
        "values": [
            [
                "Available",
                "39.99"
            ],
            [
                "Adhoc Deposit",
                "0.00"
            ],
            [
                "Cash Deposit",
                "39.99"
            ],
            [
                "Delivery",
                "0.00"
            ],
            [
                "DP Collateral Benefit",
                "0.00"
            ],
            [
                "DP Credit for Sale",
                "0.00"
            ],
            [
                "DP Pledge Collateral",
                "0.00"
            ],
            [
                "Manual Collateral",
                "0.00"
            ],
            [
                "Pay In",
                "0.00"
            ],
            [
                "Net Margin",
                "0.00"
            ],
            [
                "Notion Deposit",
                "0.00"
            ],
            [
                "Overdraft",
                "0.00"
            ],
            [
                "Pay out",
                "0.00"
            ],
            [
                "Pool Collateral Benefit",
                "0.00"
            ],
            [
                "Pool Pledge Collateral",
                "0.00"
            ],
            [
                "Premium",
                "0.00"
            ],
            [
                "Sar Collateral Benefit",
                "0.00"
            ],
            [
                "Sar Credit for Sale",
                "0.00"
            ],
            [
                "Span Margin",
                "0.00"
            ],
            [
                "Var Margin",
                "0.00"
            ],
            [
                "Extreme Loss Margin",
                "0.00"
            ],
            [
                "Option Credit For Sell",
                "0.00"
            ]
        ]
    },
    "message": "",
    "status": "success"
}
```

| Key                        | Description                                                             |
|----------------------------|-------------------------------------------------------------------------|
| data                       | Contains client data.                                                   |
| client_id                  | The unique identifier of the client.                                    |
| headers                    | The headers of the data table.                                          |
| values                     | The values associated with the headers.                                 |
| Available                  | The available balance.                                                  |
| Adhoc Deposit              | The adhoc deposit amount.                                               |
| Cash Deposit               | The cash deposit amount.                                                |
| Delivery                   | The delivery amount.                                                    |
| DP Collateral Benefit      | The benefit from collateral in the depository.                          |
| DP Credit for Sale         | The credit available from sale in the depository.                       |
| DP Pledge Collateral       | The collateral pledged in the depository.                               |
| Manual Collateral          | The manually provided collateral amount.                                |
| Pay In                     | The amount paid in.                                                     |
| Net Margin                 | The net margin amount.                                                  |
| Notion Deposit             | The notion deposit amount.                                              |
| Overdraft                  | The overdraft amount.                                                   |
| Pay out                    | The amount paid out.                                                    |
| Pool Collateral Benefit    | The benefit from collateral in the pool.                                |
| Pool Pledge Collateral     | The collateral pledged in the pool.                                     |
| Premium                    | The premium amount.                                                     |
| Sar Collateral Benefit     | The benefit from collateral in SAR (systematically important banks).    |
| Sar Credit for Sale        | The credit available from sale in SAR (systematically important banks). |
| Span Margin                | The span margin amount.                                                 |
| Var Margin                 | The value at risk (VAR) margin amount.                                  |
| Extreme Loss Margin        | The extreme loss margin amount.                                         |
| Option Credit For Sell    | The credit available for selling options.                               |
| message                    | Additional information or message.                                       |
| status                     | The status of the operation.                                            |


### Error Response
```json
{
    "status": "error",
    "message": "Request Unauthorised",
    "error_code": 40000,
    "data":{
    }
}
```


