## Create GTT Rule
This method is used to place the gtt order. We can search the instrument and place order accordingly. Good Till Triggered is active until the trigger condition is met. The trigger is valid for a year. And whenever the price condition within this period is met, the order will be placed and executed, provided there are enough funds in the trading account, and the limit price order is filled on the exchange.



```python
res = pocket.gttCreateRule(Parameters)
```

### Parameters
| Field Name             | Data Type | Description                                       |
|------------------------|-----------|---------------------------------------------------|
| action_type            | String    | Type of action for a single order `single_order`                |
| expiry_time            | String    | Represents a particular date of expiry `null`           |
| client_id              | String    | Represents the unique ID of a user or username.   |
| device                 | String    | Device type: `Web`, `Mobile`.                         |
| disclosed_quantity     | Number    | Quantity that can't be negative.                  |
| exchange               | String    | Exchange: `NSE`, `BSE`, `NFO`, `CDS`, `MCX`                |
| instrument_token       | String    | Represents the unique ID of an instrument.        |
| market_protection_percentage | String | Market protection percentage, can be 0                 |
| order_side             | String    | Side of the order<br>`BUY` or `SELL`                   |
| order_type             | String    | Type of order<br>`LIMIT`, `MARKET`, `SL`, `SLM`            |
| price                  | Number    | Price of the order; can't be zero.                |
| product                | String    | Product type: `CNC`, `MIS`, `NRML`                     |
| quantity               | Number    | Quantity of the order; can't be zero.             |
| sl_order_price         | Number    | Stop-loss order price; can't be zero.             |
| sl_order_quantity      | Number    | Stop-loss order quantity; can't be zero.          |
| sl_trigger_price       | Number    | Stop-loss trigger price; can't be zero.           |
| trigger_price          | Number    | Trigger price; can't be zero.                     |
| user_order_id          | Number    | Represents the unique ID of the order.            |


### Example
```python
data = obj.gttCreateRule(
{
"action_type": "single_order",
"expiry_time": "2024-12-12",
"order":{
"client_id": "HI0009",
"disclosed_quantity": 0,
"exchange": "NSE",
"instrument_token": "14366",
"market_protection_percentage": 0,
"order_side": "BUY",
"order_type": "LIMIT",
"price": 11.3,
"product": "CNC",
"quantity": 1,
"sl_order_price": 0,
"sl_order_quantity": 0,
"sl_trigger_price": 0,
"trigger_price": 13.6,
"user_order_id": 122321
}})
```



### Response
```json
{"data": {"id": "ea036a20-2073-4bfb-a852-34662c4bd770"}, "message": "GTT created successfully", "status": "success"}
```

### Error response
```json
{
    "data": {},
    "error_code": 44000,
    "message": "`order` `product` is invalid",
    "status": "error"
}
```