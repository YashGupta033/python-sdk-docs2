The straddle strategy in options involves placing simultaneous orders for both Call and a Put option with identical strike prices. The order side selection, whether it's buy or sell, determines the execution of either a long straddle or a short straddle.


### Request Parameters
| Field Name        | Data Type | Description                                            |
|-------------------|-----------|--------------------------------------------------------|
| Exchange          | String    | The name of the exchange where the option is traded.   |
| Order_side        | String    | The side of the order (e.g., buy or sell).             |
| Underlying Token  | String    | The token symbol representing the underlying asset.    |
| Strike            | Float     | The price at which the option can be exercised.        |
| Expiry            | Date      | The date when option expires.             |
| Number of Lots    | Integer   | The number of option lots being traded.      |


### Example

response = pocket.execute_straddle('NSE', 'BUY', 26009, 46800, '27MAR24', 1)
 
### Response

