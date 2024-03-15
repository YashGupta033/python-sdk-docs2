To get the compact marketdata, the first step is to subscribe the instrument for which we need the data.


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


### Unsubscribe the instrument to stop receiving the data.
```python
response = pocket_ws.unsubscribe_compact_marketdata(marketdata_payload)
```

```python
response = pocket_ws.unsubscribe_multiple_compact_marketdata(marketdata_payload)
```