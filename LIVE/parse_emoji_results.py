import json

path = "log/123456789_32_emoji_u1f60a.png/timing/timing.json"
json.load(open(path, 'r'))
d = json.load(open(path, 'r'))
keys = list(d.keys())
keys.sort()
total_time = d[keys[-1]] - d[keys[0]]
