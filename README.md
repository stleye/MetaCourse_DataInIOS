# MetaCourse_DataInIOS

## The following are examples of requests using CURL

#### GET Request with query parameters

#### Request

```
curl "https://httpbin.org/get?project=LittleLemon"
```

#### Response

```
{
  "args": {
    "project": "LittleLemon"
  },
  "headers": {
    "Accept": "*/*",
    "Host": "httpbin.org",
    "User-Agent": "curl/8.4.0",
    "X-Amzn-Trace-Id": "Root=1-65b3cf0a-0b13cba81d55e8ac7886fa47"
  },
  "origin": "179.0.235.37",
  "url": "https://httpbin.org/get?project=LittleLemon"
}
```

#### POST Request with form encoded body

#### Request

```
curl -X POST -d "project=LittleLemon" https://httpbin.org/post
```

#### Response

```
{
  "args": {},
  "data": "",
  "files": {},
  "form": {
    "project": "LittleLemon"
  },
  "headers": {
    "Accept": "*/*",
    "Content-Length": "19",
    "Content-Type": "application/x-www-form-urlencoded",
    "Host": "httpbin.org",
    "User-Agent": "curl/8.4.0",
    "X-Amzn-Trace-Id": "Root=1-65b3bda6-237386d32610fa4171ca663a"
  },
  "json": null,
  "origin": "179.0.235.37",
  "url": "https://httpbin.org/post"
}
```

#### GET Request with form encoded body

#### Request

```
curl -d "project=LittleLemon" https://httpbin.org/post
```

#### Response

```
{
  "args": {},
  "data": "",
  "files": {},
  "form": {
    "project": "LittleLemon"
  },
  "headers": {
    "Accept": "*/*",
    "Content-Length": "19",
    "Content-Type": "application/x-www-form-urlencoded",
    "Host": "httpbin.org",
    "User-Agent": "curl/8.4.0",
    "X-Amzn-Trace-Id": "Root=1-65b3d2ca-1bafc87a6635bbef08693bcd"
  },
  "json": null,
  "origin": "179.0.235.37",
  "url": "https://httpbin.org/post"
}
```

### POST Request with a json body

#### Request 

```
curl -X POST -H "Content-Type: application/json" -d '{
   "title":"Lord of the Rings",
   "author":"JRR Tolkien",
   "published":{
      "year":1954,
      "month":"july",
      "day":29
   }
}' https://httpbin.org/post
```

#### Response

```
{
  "args": {},
  "data": "{\n   \"title\":\"Lord of the Rings\",\n   \"author\":\"JRR Tolkien\",\n   \"published\":{\n      \"year\":1954,\n      \"month\":\"july\",\n      \"day\":29\n   }\n}",
  "files": {},
  "form": {},
  "headers": {
    "Accept": "*/*",
    "Content-Length": "140",
    "Content-Type": "application/json",
    "Host": "httpbin.org",
    "User-Agent": "curl/8.4.0",
    "X-Amzn-Trace-Id": "Root=1-65b3d36b-45417ec60782eeaf1eae444b"
  },
  "json": {
    "author": "JRR Tolkien",
    "published": {
      "day": 29,
      "month": "july",
      "year": 1954
    },
    "title": "Lord of the Rings"
  },
  "origin": "179.0.235.37",
  "url": "https://httpbin.org/post"
}
```