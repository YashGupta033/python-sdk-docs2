Using the execute strangle API, we can place a order which buy/sell OTM call and OTM put depending on whether it is short strangle or long strangle.


### Request Parameters
| Field Name        | Data Type | Description                                            |
|-------------------|-----------|--------------------------------------------------------|
| Exchange          | String    | The name of the exchange where the option is traded.   |
| Order_side        | String    | The side of the order (e.g., buy or sell).             |
| Underlying Token  | String    | The token symbol representing the underlying asset.    |
| strangle_call_strike            | Float     | The strike at which the call option can be exercised.        |
| strangle_put_strike            | Float     | The strike at which the put option can be exercised.        |
| Expiry            | Date      | The date when option expires.             |
| Number of Lots    | Integer   | The number of option lots being traded.      |


### Example
data = pocket.execute_strangle('NSE', 'BUY', 26000, 22300, 21900, '28MAR24', 1)
print(data)