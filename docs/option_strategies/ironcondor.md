To understand the Iron Condor, let's first look at the Strangle strategy. A Strangle involves simultaneously buying an OTM call option and an OTM put option with different strike prices, but with the same expiration date. This strategy profits when the price of the underlying asset moves significantly in either direction.

Now, back to the Iron Condor. It's constructed by selling an OTM call option and simultaneously selling an OTM put option, both with the same expiration date. Additionally, you buy a further OTM call option and a further OTM put option to limit potential losses. The strike prices for the call and put options sold are typically different from those of the options bought.

So inshort, to hedge strangle we use ironcondor. The above explaination is for long iron condor, the opposite case will be for short Iron condor


### Request Parameters






### Example
```python
res = execute_ironcondor('NSE', order_side, product_type, underlying_token, leg1_strike, leg2_strike, leg3_strike, leg4_strike, expiry, lots)
```



### Response Parameters






