Detailed MarketData offers real-time access to comprehensive and detailed information about financial instruments. It provides users with a continuous stream of up-to-date data, including market depth, bid-ask spreads, trading volumes, and price movements. This function is invaluable for traders and investors seeking in-depth insights into market dynamics, enabling them to make informed decisions based on the most current and detailed market data available.

To get the detailed marketdata, the first step is to subscribe the instrument for which we need the data.

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
marketdata_payload= {'exchangeCode': 'code', 'instrumentToken': 'token'}
response = pocket_ws.subscribe_detailed_marketdata(marketdata_payload)
```

To subscribe multiple instrument.
```python
multiple_marketdata_payload = [{'exchangeCode': 'code', 'instrumentToken': 'token'},{'exchangeCode': 'code', 'instrumentToken': 'token'}.....]
response = pocket_ws.subscribe_multiple_detailed_marketdata(marketdata_payload)
```

### Example
```python
marketdata_payload= {'exchangeCode': 1, 'instrumentToken': 1333}
response = pocket_ws.subscribe_detailed_marketdata(marketdata_payload)
```


### Read Marketdata
```python
detailed_market_data = pocket_ws.read_detailed_marketdata()
print(detailed_market_data)
```

```python
detailed_market_data = pocket_ws.read_multiple_detailed_marketdata()
print(detailed_market_data)
```

### Detailed Marketdata Response
```json
{
  "mode": 1,
  "exchange_code": 1,
  "instrument_token": 1333,
  "last_traded_price": 144895,
  "last_traded_time": 1710489044,
  "last_traded_quantity": 1,
  "trade_volume": 8014246,
  "best_bid_price": 144890,
  "best_bid_quantity": 25,
  "best_ask_price": 144895,
  "best_ask_quantity": 628,
  "total_buy_quantity": 624983,
  "total_sell_quantity": 899665,
  "average_trade_price": 145018,
  "exchange_timestamp": 1710489044,
  "open_price": 145000,
  "high_price": 145930,
  "low_price": 144415,
  "close_price": 145545,
  "yearly_high_price": 175750,
  "yearly_low_price": 136355,
  "lowDPR": 130990,
  "highDPR": 160095,
  "currentOpenInterest": 0,
  "initialOpenInterest": 0
}
```

### Response Parameter
| Field Name            | Description                                          |
|-----------------------|------------------------------------------------------|
| mode                  | Mode indicator for the instrument.                   |
| exchange_code         | Exchange code for the instrument.                    |
| instrument_token      | Token identifying the instrument.                    |
| last_traded_price     | Last traded price of the instrument.                 |
| last_traded_time      | Time of the last trade for the instrument.           |
| last_traded_quantity  | Quantity traded in the last transaction.             |
| trade_volume          | Total volume traded for the instrument.              |
| best_bid_price        | Best bid price in the market.                        |
| best_bid_quantity     | Quantity available at the best bid price.            |
| best_ask_price        | Best ask price in the market.                        |
| best_ask_quantity     | Quantity available at the best ask price.            |
| total_buy_quantity    | Total quantity of buy orders.                        |
| total_sell_quantity   | Total quantity of sell orders.                       |
| average_trade_price   | Average traded price over a period.                  |
| exchange_timestamp    | Timestamp of the data from the exchange.             |
| open_price            | Opening price of the instrument for the session.     |
| high_price            | Highest price of the instrument for the session.     |
| low_price             | Lowest price of the instrument for the session.      |
| close_price           | Closing price of the instrument for the session.     |
| yearly_high_price     | Highest price of the instrument in the year.         |
| yearly_low_price      | Lowest price of the instrument in the year.          |
| lowDPR                | Low circuit price range for the instrument.          |
| highDPR               | High circuit price range for the instrument.         |
| currentOpenInterest   | Current open interest in the instrument.             |
| initialOpenInterest   | Initial open interest in the instrument.             |



### Unsubscribe the instrument to stop receiving the data.
```python
response = pocket_ws.unsubscribe_detailed_marketdata(marketdata_payload)
```

```python
response = pocket_ws.unsubscribe_multiple_detailed_marketdata(marketdata_payload)
```