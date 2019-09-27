local cjson = require "cjson"
local headers = ngx.req.get_headers()
local cf_geoip = headers["CF-IPCountry"]

if cf_geoip == "CN" then
	ngx.status = 403
	ngx.header.content_type = "application/json; charset=utf-8"
	ngx.say(cjson.encode({ msg = cf_geoip , status = "ERROR YOUR LOCATION CAN NOT ACCESS THIS SITE !!"}))
	return ngx.exit(403)
en
