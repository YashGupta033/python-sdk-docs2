Follow the below steps to establish a connection with websocket.

First import the pocketfulwebsocket library
```python
from pocketfulwebsocket import pocketfulSocket
```

Then create an instance of class pocketfulsocket through which all methods can be called.
```python
pocket_ws = pocketfulSocket(clientId, access_token)
```

Then call the method run_socket to establish a connection
```python
ws_status = pocket_ws.run_socket()
```

After completing the above steps, connection with websocket has been established.
