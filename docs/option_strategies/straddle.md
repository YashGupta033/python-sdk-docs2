The straddle strategy involves placing simultaneous orders for both Call and Put option with identical strike price. The order side selection, whether it's buy or sell, determines the execution of either a long straddle or a short straddle.



### Request Parameters
| Field Name        | Data Type | Description                                            |
|-------------------|-----------|--------------------------------------------------------|
| Exchange          | String    | The name of the exchange where the option is traded <br> `NSE`, `BSE`   |
| Order_side        | String    | The side of order  `BUY` or `SELL`             |
| Product_Type        | String    | Type of margin specific order `MIS` or `NRML`             |
| Underlying Token  | Integer    | The token representing underlying asset.    |
| Strike            | integer     | The option strike at which the order can be placed.        |
| Expiry            | String      | The date when option expires. <br> Please ensure date is formatted exactly as 'DDMONYY', for example, '03MAR24'             |
| Number of Lots    | Integer   | The number of lots being traded.      |


### Example

response = pocket.execute_straddle('NSE', 'BUY', 26009, 46800, '27MAR24', 1)
 
### Response




### Error Response

