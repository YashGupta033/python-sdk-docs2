Exchange Segment

| Exchange Code | Segment                                |
|---------------|------------------------------------------|
| NSE           | National Stock Exchange                  |
| BSE           | Bombay Stock Exchange                    |
| MCX           | Multi Commodity Exchange of India        |
| NFO           | Nifty Futures and Options                                  |
| CDS           | Currency Derivatives Segment                               |


Instruments

| Attribute | Detail                            |
|-----------|-----------------------------------|
| INDEX     | Index                             |
| FUTIDX    | Futures of Index                  |
| OPTIDX    | Options of Index                  |
| EQUITY    | Equity                            |
| FUTSTK    | Futures of Stock                  |
| OPTSTK    | Options of Stock                  |
| OPTFUT    | Options of Commodity Futures      |
| FUTCUR    | Futures of Currency               |
| OPTCUR    | Options of Currency               |


Product Type

| Attribute | Detail                                 |
|-----------|----------------------------------------|
| CNC       | Cash & Carry for equity delivery     |
| INTRADAY  | Intraday for Equity, Futures & Options |
| MARGIN    | Carry Forward in Futures & Options     |
| CO        | Cover Order                            |
| BO        | Bracket Order                          |




HTTP Codes

| Code | Status Text           | Description                                                                                         |
|------|-----------------------|-----------------------------------------------------------------------------------------------------|
| 100  | Continue              | Initial part of a request has been received and the client should continue.                         |
| 200  | OK                    | Standard response for successful HTTP requests.                                                     |
| 201  | Created               | Request has succeeded and a new resource has been created.                                          |
| 300  | Multiple Choices      | There are multiple options for the resource from which the client may choose.                       |
| 301  | Moved Permanently     | This and all future requests should be directed to the given URI.                                   |
| 400  | Bad Request           | Server cannot process the request due to a client error (e.g., malformed request syntax).           |
| 404  | Not Found             | The requested resource could not be found but may be available again in the future.                 |
| 500  | Internal Server Error | Generic error message when the server encounters an unexpected condition.                           |


Rate Limit

| Rate Limit   | Order APIs | Data APIs | Non-Trading APIs |
|--------------|------------|-----------|------------------|
| Per second   | 25         | 10        | 20               |
| Per minute   | 250        | 1000      | Unlimited         |
| Per hour     | 1000       | 5000      | Unlimited         |
| Per day      | 7000       | 10000     | Unlimited         |



