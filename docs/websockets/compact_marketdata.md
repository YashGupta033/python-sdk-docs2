Compact MarketData typically refers to a condensed or summarized version of market data for financial instruments. It provides essential information such as the current price, bid-ask spread, trading volume, and possibly a few other key metrics. This condensed format is often used in situations where real-time updates are needed, but only a limited set of essential data points are required, such as in mobile trading apps or quick market overviews.

To get the compact marketdata, the first step is to subscribe the instrument for which the data is required.


### Subscribe instruments to get market data
You can subscribe or unsubscribe single or multiple instruments to get market data.

To subscribe only one instrument.
```python
marketdata_payload= {'exchangeCode': 1, 'instrumentToken': 'token'}
response = pocket_ws.subscribe_compact_marketdata(marketdata_payload)
```

To subscribe multiple instrument.
```python
multiple_marketdata_payload = {}
response = pocket_ws.subscribe_multiple_compact_marketdata(marketdata_payload)
```

### Example
```python
marketdata_payload= {'exchangeCode': 2, 'instrumentToken': '41990'}
response = pocket_ws.subscribe_compact_marketdata(marketdata_payload)
```


### Read Marketdata
```python
compact_market_data = pocket_ws.read_compact_marketdata()
print(compact_market_data)
```

```python
compact_market_data = pocket_ws.read_multiple_compact_marketdata()
print(compact_market_data)
```

### compact Marketdata Response
```json
{
  "mode": 2,
  "exchange_code": 1,
  "instrument_token": 1333,
  "last_traded_price": 145065,
  "change": 4294966816,
  "last_traded_time": 1710491906,
  "lowDPR": 130990,
  "highDPR": 160095,
  "currentOpenInterest": 0,
  "initialOpenInterest": 0,
  "bidPrice": 145060,
  "askPrice": 145070
}
```

| Field Name           | Description                                     |
|----------------------|-------------------------------------------------|
| mode                 | Mode of operation                               |
| exchange_code        | Code representing the exchange                  |
| instrument_token     | Unique token representing the financial instrument |
| last_traded_price    | Price at which the last trade occurred          |
| change               | Change in price since the last trade            |
| last_traded_time     | Timestamp of the last trade                     |
| lowDPR               | Daily low price range                           |
| highDPR              | Daily high price range                          |
| currentOpenInterest  | Current open interest                           |
| initialOpenInterest  | Initial open interest                           |
| bidPrice             | Bid price in the current order book             |
| askPrice             | Ask price in the current order book             |



### Unsubscribe the instrument to stop receiving the data.
```python
response = pocket_ws.unsubscribe_compact_marketdata(marketdata_payload)
```

```python
response = pocket_ws.unsubscribe_multiple_compact_marketdata(marketdata_payload)
```