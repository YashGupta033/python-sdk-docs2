# Profile
The profile API is designed to retrieve comprehensive information about a user. Upon making a request to this API, the response typically contains all the details associated with the client, including personal, financial, and account-related information.

## Python Code
```python 
profile = pocket.getProfile()   # No parameters needs to be passed.
```

## Response 
```json
{
    "data": {
        "bo_id": [
            "1206140012061400"
        ],
        "client_id": "TEST1",
        "ddpi": false,
        "email_id": "test@TRADELAB.IN",
        "exchanges_subscribed": [
            "NFO",
            "NSE",
            "BSE",
            "CDS"
        ],
        "name": "DEMO",
        "poa_enabled": true,
        "products_enabled": [
            "NRML",
            "CNC",
            "MIS"
        ],
        "status": "active"
    },
    "message": "",
    "status": "success"
}
```

## Response Parameters
| Key                     | Description                                                                                                                |
|-------------------------|----------------------------------------------------------------------------------------------------------------------------|
| permanent_addr          | Permanent address of the client.                                                                                           |
| exchange_nnf            | Subscription status for various exchanges (BSE, MCX, NFO, NSE) - 0 means not subscribed.                                    |
| sex                     | Gender of the client.                                                                                                      |
| account_type            | Type of account (e.g., savings, current).                                                                                  |
| bank_account_number     | Bank account number of the client.                                                                                         |
| bank_city               | City where the bank is located.                                                                                            |
| twofa_enabled           | Two-factor authentication status - true/false.                                                                             |
| bo_id                   | Back office identifier(s) associated with the client.                                                                      |
| dp_id                   | Depository participant identifier(s) associated with the client.                                                            |
| backoffice_link         | Link to the back office system for the client.                                                                             |
| status                  | Status of the client's account.                                                                                            |
| office_addr             | Office address of the client.                                                                                              |
| ifsc_code               | IFSC code of the bank associated with the client.                                                                          |
| depository              | Depository associated with the client (null if not specified).                                                             |
| name                    | Name of the client.                                                                                                        |
| client_id               | Unique identifier for the client.                                                                                          |
| profile_url             | URL of the client's profile.                                                                                               |
| last_password_change_date | Date when the client last changed their password.                                                                         |
| phone_number            | Phone number of the client.                                                                                                |
| role                    | Role of the client (id and name).                                                                                          |
| user_type               | Type of user (e.g., CLIENT, STAFF).                                                                                       |
| exchanges_subscribed    | List of exchanges subscribed by the client.                                                                                |
| poa_enabled             | Power of attorney (POA) status - true/false.                                                                               |
| cp_code                 | CP (Clearing Participant) code associated with the client.                                                                 |
| email_id                | Email address of the client.                                                                                               |
| branch                  | Branch of the bank where the client's account is held.                                                                     |
| bank_state              | State where the bank is located.                                                                                           |
| poa_status              | Power of attorney (POA) status - true/false.                                                                               |
| dob                     | Date of birth of the client.                                                                                               |
| broker_id               | Unique identifier for the broker associated with the client.                                                                |
| city                    | City where the client resides.                                                                                             |
| state                   | State where the client resides.                                                                                            |
| basket_enabled          | Basket order facility status - true/false.                                                                                 |
| pan_number              | Permanent account number (PAN) of the client.                                                                              |
| bank_branch_name        | Name of the bank branch.                                                                                                   |
| products_enabled        | List of products enabled for the client (e.g., NRML, MIS, CNC).                                                            |
| bank_name               | Name of the bank associated with the client.                                                                               |
| user_conscents          | User consents (if any).                                                                                                    |
| entity_type             | Type of entity (e.g., RETAIL, CORPORATE).                                                                                  |


## Error Response
```json
{
  "status": "error",
  "message": "Request forbidden",
  "error_code": 40000,
  "data":{
  }
}
```