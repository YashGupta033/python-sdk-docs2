To get the snapquote data, the first step is to subscribe the instrument for which we need the data.

Below is the list of exchange codes which will be required while subscribing to a particular instrument.
```json
exchange_code = {
    "NSE" : 1,
    "NFO" : 2,
    "CDS" : 3,
    "MCX" : 4,
    "BSE" : 6,
    "BFO" : 7
}
```

### Subscribe instruments to get market data
You can subscribe or unsubscribe single or multiple instruments to get market data.

To subscribe only one instrument.
```python
snapquotedata_payload= {'exchangeCode': 1, 'instrumentToken': 'token'}
response = pocket_ws.subscribe_snapquote_data(snapquotedata_payload)
```

To subscribe multiple instrument.
```python
multiple_snapquotedata_payload = {}
response = pocket_ws.subscribe_multiple_snapquote_data(snapquotedata_payload)
```

### Example
```python
snapquotedata_payload= {'exchangeCode': 1, 'instrumentToken': 1333}
response = pocket_ws.subscribe_snapquote_data(snapquotedata_payload)
```


### Read Data
```python
snapquote_data = pocket_ws.read_snapquote_data()
print(snapquote_market_data)
```

```python
snapquote_data = pocket_ws.read_multiple_snapquote_data()
print(snapquote_market_data)
```

### Snapquote Response
```json
{
  "mode": 4,
  "exchange_code": 1,
  "instrument_token": 1333,
  "buyers": [
    3,
    3,
    1,
    2,
    6
  ],
  "bidPrices": [
    145100,
    145095,
    145090,
    145085,
    145080
  ],
  "bidQtys": [
    121,
    53,
    64,
    76,
    130
  ],
  "sellers": [
    1,
    4,
    1,
    3,
    4
  ],
  "askPrices": [
    145110,
    145135,
    145140,
    145145,
    145150
  ],
  "askQtys": [
    33,
    441,
    68,
    113,
    324
  ],
  "averageTradePrice": 145026,
  "open": 145000,
  "high": 145930,
  "low": 144415,
  "close": 145545,
  "totalBuyQty": 653906,
  "totalSellQty": 870361,
  "volume": 9438681
}
```


### Unsubscribe the instrument to stop receiving the data.
```python
response = pocket_ws.unsubscribe_snapquote_data(snapquotedata_payload)
```

```python
response = pocket_ws.unsubscribe_multiple_snapquote_data(snapquote_payload)
```