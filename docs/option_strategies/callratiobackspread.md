This approach is utilized when one holds a strong bullish outlook on a stock (or index), in contrast to the moderately bullish stance taken with a bull call spread or bull put spread.To implement this strategy, buy two OTM call option and sell one ITM Call option.


### Request Parameters
| Field Name        | Data Type | Description                                            |
|-------------------|-----------|--------------------------------------------------------|
| Exchange          | String    | The name of the exchange where the option is traded <br> `NSE`or `BSE`   |
| Product_Type        | String    | Type of product `MIS` or `NRML`             |
| Underlying Token  | Integer    | The token representing underlying asset.    |
| OTM_CALL_Strike            | integer     | The option strike at which the order can be placed.        |
| ITM_CALL_Strike            | integer     | The option strike at which the order can be placed.        |
| Expiry            | String      | The date when option expires. <br> Please ensure date is formatted exactly as 'DDMONYY', for example, '03MAR24'  |
| Number of Lots    | Integer   | The number of lots being traded.      |





### Example
```python
response = execute_callratiobackspread('NSE','MIS', 26000, 22600, 22200, '04APR24', 1)
```



### Response Parameters






