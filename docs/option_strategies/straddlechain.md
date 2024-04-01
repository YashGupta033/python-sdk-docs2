The Straddle Chain API facilitates retrieving straddle options. Utilizing the straddle chain assists in making informed decisions regarding the selection of appropriate straddle options to purchase. This API is valuable for analyzing and comparing various straddle strategies based on market conditions and risk tolerance.


### Request Parameters
| FieldName | Datatype | Description |
| --- | --- | --- |
| exchange |  string |  `nse`, `bse` |
| token |  integer |   unique instrument token |
| expiry |  string |  expiry of option ex. `04APR24` |
| total_strikes |  int |  total strikes in straddle chain (max 100) |


### Example
response = pocket.straddle_chain('NSE', 26000, '28MAR24', 50)



### Response Parameters
