testjson
========

test gem [json](http://rubygems.org/gems/json) generate with 'ascii_only' option

### test result

```ruby
$ rake console
params = {
           act: "push类型",
           note: "提示文字",
           info: "push的相关信息",
           count: 3
          }
gxpush = GxPush.new(params)

JSON.generate(gxpush, :ascii_only => true)  # ascii_only option not work why ?
#  => "{\"act\":\"push类型\",\"note\":\"提示文字\",\"info\":\"push的相关信息\",\"count\":3}"
JSON.generate(gxpush.as_json, :ascii_only => true) # but this work fine
#  => "{\"act\":\"push\\u7c7b\\u578b\",\"note\":\"\\u63d0\\u793a\\u6587\\u5b57\",\"info\":\"push\\u7684\\u76f8\\u5173\\u4fe1\\u606f\",\"count\":3}"
```
