<!-- ## Delete Basket Order -->
The Delete Basket API allows users to remove a specific basket from their account. By providing the unique identifier of the basket to be deleted, the API initiates the removal process, ensuring that the specified basket and its associated orders are permanently deleted from the user's account. This functionality helps users manage their baskets effectively, allowing them to clean up unwanted or obsolete baskets from their portfolio effortlessly.


```python
Endpoint: /api/v1/basket
Method-Type: DELETE
Method: pocket.deleteBasket(Parameters)
```

## Parameters
| Field Name  | Type   | Description                     |
|-------------|--------|---------------------------------|
| BasketId    | `String` | Unique identifier for the basket|
| BasketName  | `String` | Name of the basket              |


### Example
```json
data=obj.deleteBasket({"BasketId":"0d991a91-21c0-4afd-aab2-ee9131cbd2fc","BasketName":"A_Basket"})
```


## Response
```json
{
    "data": [        
    ],
    "message": "Basket A_Basket deleted successfully",
    "status": "success"
}

```
| Key       | Description                                     |
|-----------|-------------------------------------------------|
| data      | Array containing data. |
| message   | Description of the operation's outcome.         |
| status    | Status of the operation (e.g., success).        |


## Error Response
```json
{
  "data": {},
  "error_code": 48001,
  "message": "Basket doesnt exists",
  "status": "error"
}
```