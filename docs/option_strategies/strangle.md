The strangle strategy involves placing simultaneous orders for both Call and Put option with different strike price. The strike prices are OTM for both call and put. The order side selection, whether it's buy or sell, determines the execution of either a long strandle or a short strangle.

### Request Parameters
| Field Name        | Data Type | Description                                            |
|-------------------|-----------|--------------------------------------------------------|
| Exchange          | String    | The name of the exchange where the option is traded <br> `NSE`, `BSE`   |
| Order_side        | String    | The side of order  `BUY` or `SELL`             |
| Product_Type        | String    | Type of margin specific order `MIS` or `NRML`             |
| Underlying Token  | String    | The token representing underlying asset.    |
| strangle_call_strike            | Integer     | The strike at which the call option can be traded.        |
| strangle_put_strike            | Integer     | The strike at which the put option can be traded.        |
| Expiry            | String      | The date when option expires. <br> Please ensure date is formatted exactly as 'DDMONYY', for example, '03MAR24'             |
| Number of Lots    | Integer   | The number of lots being traded.       |


### Example
response = pocket.execute_strangle('NSE', 'BUY', 'MIS', 26000, 22300, 21900, '28MAR24', 1)


### Response



### Error Response
