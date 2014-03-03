# [HTTP PONG](https://http-pong.herokuapp.com/)

##### A simple web service for debugging HTTP client requests

###### View HTTP Headers, query parameters, request body, cookies, etc.

## Why?

I was having trouble configuring the NodeJS https module to use an Agent. So, I
built this to help debug my implementation. I figured it would be a handy tool
for others, so I'm sharing the code, and put it up on Heroku.

## Usage

Basically, just make any sort of HTTP request you'd like, and HTTP PONG will
return a JSON document of received data.

Here some cURL examples, but you can use any language you'd like to see how
your HTTP client requests are behaving.

##### HTTP GET
``` sh
curl https://http-pong.herokuapp.com?foo=bar
```

##### HTTP POST
``` sh
curl --data "foo=bar&hello=world" https://http-pong.herokuapp.com
```

## Author

| [![twitter/matthewgh](http://gravatar.com/avatar/e0f8435a3df533d64b09b8aee394b8d3?s=85)](https://twitter.com/matthewgh "Follow @matthewgh on Twitter") |
|---|
| [Matthew Hudson](http://matthewhudson.me/) |