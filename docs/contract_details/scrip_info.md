<!-- ## ScripInfo -->
The Search Scrip API is designed to provide users with detailed information about a specific financial instrument based on the exchange and instrument token provided as inputs. Upon receiving the exchange and instrument token as parameters, the API searches its database to retrieve relevant data about the corresponding scrip. By utilizing this API, users can efficiently retrieve comprehensive information about a particular scrip, enabling them to make well-informed investment decisions and stay updated on the latest market developments.


| Request Type | APIs    | Endpoint                               | Description                     |
|-------------- | ------- | ------------------------------------------------------------------------- | --------------------------------- |
| `GET `         | `Scrip Info`    | /api/v1/contract/<Exchange>?info=scrip&token=<InstrumentTokenOfEquity> | Get scrip info of an instrument |




### Parameters
| Field Name     | Data Type | Description                                       |
|----------------|-----------|---------------------------------------------------|
| Exchange       | String    | Name of the exchange where the order is being placed. Possible values include `NSE`, `BSE`, `NFO`, `CDS`, `MCX`. |
| Instrument Token | Integer   | Unique identifier assigned to each financial instrument within the exchange. |



### Example Codes

=== "python - http.client"
``` python
# you an use any other module as well such as requests, urllib, etc.,
import http.client
import json

conn = http.client.HTTPSConnection("pacetrader.pacefin.in")
payload = ''
headers = {
'x-device-type': 'WEB',
'x-authorization-token': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJibGFja2xpc3Rfa2V5IjoiQ0xJRU5UMTpURGYvZ1RKUUNFSytsWGJ1L21yenF3IiwiY2xpZW50X2lkIjoiQ0xJRU5UMSIsImNsaWVudF90b2tlbiI6InlKeDI0dFdmUUlsSnloUnVWbVVKeXciLCJkZXZpY2UiOiJ3ZWIiLCJleHAiOjE2NjQ0Mzk3ODE2NTZ9.LP70t5kXSBtO0iflzG2lo3lvs8wj9_HpHRjOPSHSBpg',
'content-type': 'application/json'
}
conn.request("GET", "/api/v1/contract/<Exchange>?info=scrip&token=%3CInstrumentTokenOfEquity%3E", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))
```

=== "python - SDK"
``` python
response = obj.getScripInfo('NSE', 11915)
```

## Response
```json
{
  "error": {
    "code": 0,
    "message": ""
  },
  "result": {
    "alternate_exchange": "BSE",
    "alternate_token": 532648,
    "alternate_trading_symbol": "YESBANK-A",
    "asm": "-1",
    "asset_code": "",
    "board_lot_quantity": 1,
    "book_closure_end_date": "12-Jun-2019",
    "book_closure_start_date": "6-Jun-2019",
    "change_in_oi": 0,
    "circuit_rating": "",
    "close_price": "22.85",
    "comments": "AGM/DIV-RS 2 PER SH",
    "company_name": "YES BANK LIMITED",
    "delivery_end_date": "",
    "delivery_start_date": "",
    "delivery_unit_factor": 0,
    "delivery_units": "",
    "display_name": "YESBANK",
    "dpr": "18.3000 - 27.4000",
    "exchange": 1,
    "execution": "NA",
    "expiry": 0,
    "expiry_string": "",
    "exposure": "5.000000",
    "face_value": 2,
    "fin_instrm_pdct_tp_cd": "",
    "freeze": 0,
    "general_denominator": "",
    "gsm": "-1",
    "have_futures": false,
    "have_options": false,
    "higher_circuit_limit": 27.4,
    "instrument_name": "EQ",
    "instrument_token": 11915,
    "instrument_type": "0",
    "is_index": false,
    "is_mtf_eligible": false,
    "isin": "INE528G01035",
    "issue_maturity_date": 0,
    "issue_rate": 0,
    "issue_start_date": "12-Jul-2005",
    "last_trade_vol": "",
    "last_trading_date": "",
    "list_date": "12-Jul-2005",
    "local_update_time": "",
    "lower_circuit_limit": 18.3,
    "market_type": "",
    "max_order_size": 0,
    "max_single_qty": 0,
    "month_identifier": 0,
    "mtf_margin": 0,
    "multiplier": 1,
    "no_delivery_date_end": "0",
    "no_delivery_date_start": "0",
    "open_interest": 0,
    "option_type": "",
    "partition_id": 0,
    "precision": 2,
    "price_denominator": 0,
    "price_numerator": 0,
    "price_quotation": 0,
    "price_units": "",
    "product_category": "",
    "product_id": 0,
    "raw_expiry": 0,
    "raw_tender_period_end_date": "",
    "raw_tender_period_start_date": "",
    "raw_tick_size": 5,
    "re_admission_date": "0",
    "record_date": "0",
    "series": "EQ",
    "short_code": "",
    "span": [
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0
    ],
    "special_preopen": 0,
    "strike": 0,
    "surveillance_indicator": 0,
    "symbol": "YESBANK",
    "symbol2": "",
    "tag": "",
    "tender_period_end_date": "",
    "tender_period_start_date": "",
    "tick_size": 0.05,
    "tradable": true,
    "trade_to_trade": false,
    "trading_symbol": "YESBANK-EQ",
    "trading_unit_factor": 0,
    "trading_units": "",
    "underlying_token": 11915,
    "var": "23.08",
    "warning": "1",
    "yearly_high_price": "32.85",
    "yearly_low_price": "14.40"
  }
}
```

| Key                        | Description                                                                                                        |
|----------------------------|--------------------------------------------------------------------------------------------------------------------|
| alternate_exchange         | The alternate exchange where the asset is traded.                                                                  |
| alternate_token            | The alternate token or identifier of the asset.                                                                    |
| alternate_trading_symbol   | The alternate trading symbol of the asset.                                                                         |
| asm                        | The adhoc margin for the asset.                                                                                    |
| asset_code                 | The code associated with the asset.                                                                                |
| board_lot_quantity         | The quantity of the asset in a board lot.                                                                          |
| book_closure_end_date      | The end date of the book closure period.                                                                           |
| book_closure_start_date    | The start date of the book closure period.                                                                         |
| change_in_oi               | The change in open interest for the asset.                                                                         |
| circuit_rating             | The circuit rating of the asset.                                                                                   |
| close_price                | The closing price of the asset.                                                                                    |
| comments                   | Any additional comments or notes related to the asset.                                                             |
| company_name               | The name of the company associated with the asset.                                                                  |
| delivery_end_date          | The end date for delivery of the asset.                                                                            |
| delivery_start_date        | The start date for delivery of the asset.                                                                          |
| delivery_unit_factor       | The factor for the delivery unit of the asset.                                                                     |
| delivery_units             | The units for delivery of the asset.                                                                               |
| display_name               | The display name of the asset.                                                                                     |
| dpr                        | The daily price range of the asset.                                                                                |
| exchange                   | The exchange where the asset is traded.                                                                            |
| execution                  | The execution status of the asset.                                                                                 |
| expiry                     | The expiry date of the asset.                                                                                      |
| expiry_string              | The string representation of the expiry date.                                                                      |
| exposure                   | The exposure of the asset.                                                                                         |
| face_value                 | The face value of the asset.                                                                                       |
| fin_instrm_pdct_tp_cd      | The product type code of the financial instrument.                                                                 |
| freeze                     | Indicates if the asset is frozen.                                                                                  |
| general_denominator        | The general denominator of the asset.                                                                              |
| gsm                        | The GSM (graded surveillance mechanism) status of the asset.                                                       |
| have_futures               | Indicates if the asset has futures contracts.                                                                      |
| have_options               | Indicates if the asset has options contracts.                                                                      |
| higher_circuit_limit       | The higher circuit limit of the asset.                                                                             |
| instrument_name            | The name of the instrument.                                                                                        |
| instrument_token           | The token or identifier of the instrument.                                                                         |
| instrument_type            | The type of the instrument.                                                                                        |
| is_index                   | Indicates if the asset is an index.                                                                                |
| is_mtf_eligible            | Indicates if the asset is eligible for MTF (market to franchise) trading.                                          |
| isin                       | The ISIN (International Securities Identification Number) of the asset.                                            |
| issue_maturity_date        | The maturity date of the issued asset.                                                                             |
| issue_rate                 | The rate at which the asset was issued.                                                                           |
| issue_start_date           | The start date of the issuance of the asset.                                                                       |
| last_trade_vol             | The volume of the last trade of the asset.                                                                        |
| last_trading_date          | The date of the last trading of the asset.                                                                         |
| list_date                  | The date when the asset was listed.                                                                               |
| local_update_time          | The local update time of the asset.                                                                               |
| lower_circuit_limit        | The lower circuit limit of the asset.                                                                             |
| market_type                | The market type of the asset.                                                                                     |
| max_order_size             | The maximum order size of the asset.                                                                              |
| max_single_qty             | The maximum single quantity of the asset.                                                                         |
| month_identifier           | The month identifier of the asset.                                                                                |
| mtf_margin                 | The margin for MTF trading of the asset.                                                                          |
| multiplier                 | The multiplier of the asset.                                                                                      |
| no_delivery_date_end      | The end date for no delivery of the asset.                                                                        |
| no_delivery_date_start    | The start date for no delivery of the asset.                                                                      |
| open_interest              | The open interest of the asset.                                                                                    |
| option_type                | The type of the option.                                                                                            |
| partition_id               | The partition ID of the asset.                                                                                    |
| precision                  | The precision of the asset.                                                                                        |
| price_denominator          | The denominator of the price of the asset.                                                                         |
| price_numerator            | The numerator of the price of the asset.                                                                           |
| price_quotation            | The quotation of the price of the asset.                                                                           |
| price_units                | The units of the price of the asset.                                                                               |
| product_category           | The category of the product.                                                                                       |
| product_id                 | The ID of the product.                                                                                             |
| raw_expiry                 | The raw expiry timestamp of the asset.                                                                             |
| raw_tender_period_end_date | The raw end date of the tender period of the asset.                                                                |
| raw_tender_period_start_date | The raw start date of the tender period of the asset.                                                            |
| raw_tick_size              | The raw tick size of the asset.                                                                                   |
| re_admission_date          | The readmission date of the asset.                                                                                 |
| record_date                | The record date of the asset.                                                                                      |
| series                     | The series of the asset.                                                                                           |
| short_code                 | The short code of the asset.                                                                                       |
| span                       | The SPAN (Standard Portfolio Analysis of Risk)




## Error Response
```json
{
    "error":{
        "code": 404,
        "message": "Resource Not Found"
    }
    "result": ""
}
```