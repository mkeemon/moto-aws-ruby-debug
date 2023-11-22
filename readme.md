# Instructions
- `docker compose build`
- `docker compose up`

# Current Output
```
# client.create_queue succeeds
http://moto:5001/123456789012/default_failures

# client.delete_queue fails
/usr/local/bundle/gems/aws-sdk-core-3.188.0/lib/aws-sdk-core/json/json_engine.rb:10:in `rescue in load': unexpected token at '<DeleteQueueResponse><ResponseMetadata><RequestId>efTunHsJgoBgLOWq4toi2vRVdqdL1kYUZuIOgUSUnIoacalpUPKR</RequestId></ResponseMetadata></DeleteQueueResponse>' (Aws::Json::ParseError)
```
