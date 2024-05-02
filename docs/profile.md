# Profile
The profile API is designed to retrieve comprehensive information about a user. Upon making a request to this API, the response typically contains all the details associated with the client, including personal, financial, and account-related information.

## Python Code
```python 
Endpoint: /api/v1/user/trading_info
Method-Type: GET
```

### Query Params
```json
{ 
  "client_id": "YG1234"
}
```

## Response 
```json
{
    "data": {
        "last_password_change_date": 1700543471,
        "dob": "2000-01-01",
        "bank_state": "DELHI",
        "bank_branch_name": "NA",
        "bank_account_number": "11233435545",
        "pan_number": "Pan Number",
        "user_type": "CLIENT",
        "account_type": "SAVING",
        "exchanges_subscribed": [
            "BSE",
            "MCX",
            "NFO",
            "NSE"
        ],
        "ifsc_code": "IFSC-code",
        "status": "active",
        "office_addr": "Address",
        "bank_name": "ICICI BANK LTD",
        "depository": null,
        "client_id": "YG0008",
        "name": "Name",
        "exchange_nnf": {
            "BSE": 0,
            "MCX": 0,
            "NFO": 0,
            "NSE": 0
        },
        "dp_id": [
            "12049845"
        ],
        "profile_url": "",
        "backoffice_link": "",
        "permanent_addr": "address,",
        "city": "NEW DELHI",
        "branch": "STAFF",
        "cp_code": null,
        "sex": "MALE",
        "broker_id": null,
        "poa_status": false,
        "phone_number": "2234345467",
        "role": {
            "id": 2,
            "name": "BASIC_CLIENT"
        },
        "bo_id": [
            "3758458456955"
        ],
        "state": "DELHI",
        "products_enabled": [
            "NRML",
            "MIS",
            "CNC"
        ],
        "bank_city": "NEW DELHI",
        "poa_enabled": false,
        "basket_enabled": false,
        "twofa_enabled": false,
        "email_id": "Email",
        "user_conscents": [],
        "entity_type": "RETAIL"
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