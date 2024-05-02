# Funds

## Get Fund Details
The "Get Fund" API is a request made to retrieve information about a user's funds or financial assets held within a particular account or platform. Typically, this API returns details such as the available balance, total funds invested, holdings, and any pending transactions. It provides users with real-time access to their financial data, allowing them to monitor their investments, track their portfolio performance, and make informed decisions about managing their funds effectively.

```python
Endpoint: api/v1/funds/view
Method-Type: GET
```

### Query Params
```json
{
    "client_id": "YG1234",
    "type": "all"
}
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
| Available                  | The amount of funds currently available in a trading account.           |
| Adhoc Deposit              | Funds added on an ad-hoc basis, typically to meet margin requirements or for immediate trading needs.                                               |
| Cash Deposit               |  The total amount of cash deposited into a trading account.                                                |
| Delivery                   | Funds allocated for the settlement of delivery trades, which involve the actual exchange of securities.                                                    |
| DP Collateral Benefit      | Benefits accrued from using depository participant (DP) securities as collateral for trading.                          |
| DP Credit for Sale         |  Credit available for trading when securities held in a DP account are sold.                       |
| DP Pledge Collateral       | Funds obtained against securities pledged from a depository participant account.                               |
| Manual Collateral          |  Collateral that is manually entered or adjusted, rather than automatically calculated by the system.                                |
| Pay In                     | The amount required to be paid in to cover securities purchased.                                                     |
| Net Margin                 | The minimum required balance to maintain in a margin account, after accounting for all open positions.                                                  |
| Notion Deposit             | May refer to a notional amount set aside or used for calculation purposes in trading.                                              |
| Overdraft                  |  The amount that can be overdrawn from a margin account, essentially a credit facility.                                                   |
| Pay out                    | The amount disbursed from a trading account, typically from the sale of securities or other withdrawals.                                                    |
| Pool Collateral Benefit    | Benefits from using pooled resources or securities as collateral.                                |
| Pool Pledge Collateral     | Collateral derived from pooled securities pledged for securing trades.                                     |
| Premium                    | The cost paid for options contracts or the extra amount paid over the normal price of securities.                                                    |
| Sar Collateral Benefit     | Similar to DP Collateral Benefit, but specific to the securities allocated for Risk Assessment and Review (SAR).    |
| Sar Credit for Sale        |  Credit received for selling securities that were under SAR (specific analysis or risk assessment). |
| Span Margin                | The initial margin requirement calculated using a standardized portfolio analysis of risk (SPAN) system to cover potential losses in a worst-case scenario.                                                 |
| Var Margin                 |  Variation margin, which represents the amount of funds required to cover adverse market movements over a day.                                  |
| Extreme Loss Margin        | Additional margin meant to cover potential losses in extremely volatile market conditions.                                         |
| Option Credit For Sell    | Credit received from selling options, either from premiums collected or from leveraging positions.                               |
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


