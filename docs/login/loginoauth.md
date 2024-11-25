# **OAuth2 Login Process**

This guide explains the step-by-step process to integrate login functionality into your platform using our OAuth APIs.

### **1. Generate Authorization URL**
To initiate the login process, create an authorization URL. This URL opens a webview for user's login.

```python
Base URL: https://trade.pocketful.in
Endpoint: /oauth2/auth
Method-Type: GET
```

#### Query Parameters
| Parameter      | Description                                                | Example Value             |
|----------------|------------------------------------------------------------|---------------------------|
| scope        | Requested permissions (space-separated).                   | orders holdings         |
| state        | A unique string to maintain state between requests (min 8 characters). | bdkjbcjhdbsvhj          |
| redirect_uri | URL to which the user will be redirected after login.       | http://127.0.0.1:8000   |
| response_type| Specifies the type of response. Must be `code`             | code                    |
| app_id    | Your application’s unique identifier.                      | Ybg3ab2VXM              |

#### Example Authorization URL
```
https://trade.pocketful.in/oauth2/auth?scope=orders+holdings&state=bdkjbcjhdbsvhj&redirect-uri=http%3A%2F%2F127.0.0.1%3A8000&response_type=code&client_id=Ybg3ab2VXM
```


#### Redirection After Login
Once the user logs in successfully, they are redirected to the specified `redirect_uri` along with the following query parameters:<br>
- `code`: The authorization code.<br>
- `scope`: Approved permissions.<br>
- `state`: The original state value.

### **2. Generate Access Token**
After receiving the authorization code, exchange it for an access token by making a `POST` request to the token endpoint.

```python
Base URL: https://trade.pocketful.in
Endpoint: /oauth2/token
Method-Type: POST
```

#### Headers
| Header Name      | Value                                                                                             |
|------------------|--------------------------------------------------------------------------------------------------|
| Content-Type   | application/x-www-form-urlencoded                                                             |
| Authorization  | Basic <base64(client_id:client_secret)> (Base64 encoded appid:appsecret).                    |

#### Body Parameters
| Parameter       | Description                                      | Example Value                              |
|-----------------|--------------------------------------------------|-------------------------------------------|
| grant_type    | The type of grant being requested. Use authorization_code. | authorization_code                      |
| code          | The authorization code from the previous step.   | iskEgqNA6y10dS3e0C7_Gdnw_LdjZh6JoVa-U6D |
| redirect_uri  | The same redirect_uri used in Step 1.           | http://127.0.0.1:8000                   |

#### cURL
```bash
curl --location 'https://trade.pocketful.in/oauth2/token' \
--header 'Authorization: Basic WWJnM3N6MlZYTTpnQjJzeG9QOUMzWEhvQTE3b3lWa2luajNLeGtPWEJ3VUJkSG5rNm9hdG9xMmg1RFd5VmNiVWhuUzdRb05JY3la' \
--header 'Cache-Control: "no-cache"' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'grant_type=authorization_code' \
--data-urlencode 'code=iskEgqNA6y10dS3e0C7_Gdnw_LdjZh6JoVa-U6D_xcA.LERbhY3JkbTHR9E1srqetg7ShKEYW9HXN0nzXQ9yGoM' \
--data-urlencode 'redirect_uri=http://127.0.0.1:8000'
```

#### Response

```json
{
    "access_token": "o9_luIzUWrjrBj1siKVkwft_T8KNc6YhOfwO5bWiHPI.Ht38QfD-FxAHDqL9xdY1jDyYoJIT3od2GA58bzZUmGU",
    "expires_in": 86399,
    "scope": "orders holdings",
    "token_type": "bearer"
}
```

> **Note:**
The access token remains valid until the end of the day (i.e. 12 AM), after which it will expire, and a new access token has to be generated.


### **3. Get the Client Id**
After sucessfully generating access token, we can get client id with the help of `trading_info` API

```python
Base URL: https://trade.pocketful.in
Endpoint: /api/v1/user/trading_info
Method-Type: GET
```

Headers
```
"Authorization": "Bearer {access_token}"
```

#### cURL
```bash
curl --location 'https://trade.pocketful.in/api/v1/user/trading_info' \
--header 'Authorization: Bearer cGTC7TxYxNdnUEgMVZu0AonL20y3PfPumz31VkBFo64.ReVoLHhUjGZj9iYCod6zPUOSnmXTT_oRhGeRzWb0ooc'
```

#### Response

```json
{
    "data": {
        "bo_id": [
            "1209981234567270"
        ],
        "client_id": "YA0002",
        "email_id": "XYZ@GMAIL.COM",
        "exchanges_subscribed": [
            "BFO",
            "BSE",
            "MCX",
            "NFO",
            "NSE"
        ],
        "name": "CLIENT NAME",
        "poa_enabled": false,
        "products_enabled": [
            "NRML",
            "MIS",
            "CNC"
        ],
        "status": "active"
    },
    "message": "",
    "status": "success"
}
```
