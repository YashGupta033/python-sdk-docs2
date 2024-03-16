Follow the below steps to establish a connection with websocket.

First import the pacefinwebsocket library
```python
from pacefinwebsocket import PacefinSocket
```

Then create an instance of class pacefinsocket through which all methods can be passed.
```python
pocket_ws = PacefinSocket(pace_clientId, access_token)
```

Then call the method run_socket to establish a connection
```python
ws_status = pocket_ws.run_socket()
```

After this, the connection with websocket has been established, now subscribe the instruments for which you require live feed.
