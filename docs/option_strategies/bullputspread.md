The bull put spread strategy is advantageous for those with a moderately bullish position on a stock or index. To implement this strategy, one buys an OTM put option (leg 1) and simultaneously sells an ITM put option (leg 2).

### Request Parameters
| Field Name        | Data Type | Description                                            |
|-------------------|-----------|--------------------------------------------------------|
| Exchange          | String    | The name of the exchange where the option is traded <br> `NSE`or `BSE`   |
| Product_Type        | String    | Type of product `MIS` or `NRML`             |
| Underlying Token  | Integer    | The token representing underlying asset.    |
| OTM_Strike            | integer     | The option strike at which the put option order can be placed.        |
| ITM_Strike            | integer     | The option strike at which the put option order can be placed.        |
| Expiry            | String      | The date when option expires. <br> Please ensure date is formatted exactly as 'DDMONYY', for example, '03MAR24'  |
| Number of Lots    | Integer   | The number of lots being traded.      |


### Example
```python
data = pocket.execute_bullcallspread('NSE', 'MIS', 26000, 22600, 22200, '04APR24', 2)
```



### Response Parameters






