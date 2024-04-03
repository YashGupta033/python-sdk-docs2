The bull call spread strategy is advantageous for those with a moderately bullish position on a stock or index. While traditionally involving at-the-money (ATM) and out-of-the-money (OTM) options, it offers flexibility in selecting strike prices. To implement this strategy, one buys an ATM call option (leg 1) and simultaneously sells an OTM call option (leg 2).

### Request Parameters
| Field Name        | Data Type | Description                                            |
|-------------------|-----------|--------------------------------------------------------|
| Exchange          | String    | The name of the exchange where the option is traded <br> `NSE`or `BSE`   |
| Product_Type        | String    | Type of product `MIS` or `NRML`             |
| Underlying Token  | Integer    | The token representing underlying asset.    |
| OTM_Strike            | integer     | The option strike at which the order can be placed.        |
| Expiry            | String      | The date when option expires. <br> Please ensure date is formatted exactly as 'DDMONYY', for example, '03MAR24'  |
| Number of Lots    | Integer   | The number of lots being traded.      |


### Example
```python
data = pocket.execute_bullcallspread('NSE', 'MIS', 26000, 22600, '04APR24', 2)
```