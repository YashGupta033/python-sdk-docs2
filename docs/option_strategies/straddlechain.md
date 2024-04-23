The Straddle Chain facilitates retrieving straddle options data. Utilizing the straddle chain assists in making informed decisions regarding the selection of appropriate straddle options to purchase. This API is valuable for analyzing and comparing various straddle strategies based on market conditions and risk tolerance.


### Request Parameters
| FieldName | Datatype | Description |
| --- | --- | --- |
| exchange |  string |  `NSE`, `BSE` |
| token |  integer |   unique instrument token |
| expiry |  string |  The date when option expires. <br> Please ensure date is formatted exactly as 'DDMONYY', for example, `03MAR24` |
| total_strikes |  int |  total strikes in straddle chain (max 100) |


### Example
response = pocket.straddle_chain('NSE', 26000, '28MAR24', 50)



### Response Parameters
