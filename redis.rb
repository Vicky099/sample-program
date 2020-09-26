require 'redis'
redis = Redis.new(host: "localhost")
redis.set("a", 1)
# "OK"
p redis.get("a")

redis.zadd("popular_fruit", 10, "apple")
redis.zadd("popular_fruit", 20, "banana")
redis.zadd("popular_fruit", 30, "orange")

p redis.zrevrange("popular_fruit", 0, 0)


