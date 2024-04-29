<!-- ## Get Market Data -->
The getMarketData API return market data information of the given instrument.

```python
Endpoint: /api/v1/marketdata/:exchange/:token
Method-Type: GET
Method: pocket.getMarketData(Parameters)

```

### Parameters
| Field Name | Data Type | Description                           |
|------------|-----------|---------------------------------------|
| exchange   | String    | e.g. `NSE`, `BSE`, `MCX`, `CDS`, `NFO`, `BFO`    |
| token      | String    | e.g. `90197`                            |


### Example
```python
response = pocket.getMarketdata('NSE', 14366)
```


### Response
```json
{
  "data": {
    "ask_price": 1290,
    "ask_qty": 1089393,
    "average_trade_price": 12.97,
    "bid_price": 1285,
    "bid_qty": 3486991,
    "close_price": 13.1,
    "exchange": "NSE",
    "exchange_timestamp": 1710486278,
    "high_price": 13.3,
    "instrument_token": 14366,
    "last_trade_price": 12.9,
    "last_trade_qty": 1,
    "last_trade_time": 1710486277,
    "low_price": 12.75,
    "open_price": 13.15,
    "segment": "Capital",
    "total_buy_qty": 31748583,
    "total_sell_qty": 40173028,
    "trade_volume": 178286763,
    "yearly_high": 1840,
    "yearly_low": 570
  },
  "message": "",
  "status": "success"
}
```

| Key                 | Description                                               |
|---------------------|-----------------------------------------------------------|
| ask_price           | The price at which sellers are willing to sell the asset. |
| ask_qty             | The quantity of the asset available at the ask price.     |
| average_trade_price | The average price at which trades have been executed.     |
| bid_price           | The price at which buyers are willing to buy the asset.   |
| bid_qty             | The quantity of the asset available at the bid price.     |
| close_price         | The closing price of the asset.                           |
| exchange            | The exchange where the asset is traded.                   |
| exchange_timestamp | The timestamp of the exchange's last update.              |
| high_price          | The highest price of the asset during the trading day.    |
| instrument_token    | The unique identifier of the financial instrument.        |
| last_trade_price    | The price at which the last trade was executed.          |
| last_trade_qty      | The quantity of the last trade.                           |
| last_trade_time     | The timestamp of the last trade.                          |
| low_price           | The lowest price of the asset during the trading day.     |
| open_price          | The opening price of the asset.                           |
| total_buy_qty       | The total quantity of buy orders.                         |
| total_sell_qty      | The total quantity of sell orders.                        |
| trade_volume        | The total volume of trades.                               |
| yearly_high         | The highest price of the asset in the past year.          |
| yearly_low          | The lowest price of the asset in the past year.           |


### Error response
```
{
    "data": {},
    "message": "Invalid parameters",
    "status": "error"
}
```