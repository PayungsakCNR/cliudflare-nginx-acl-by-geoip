# cloudflare-nginx-acl-by-geoip

## Requirement 
1. NGINX with lua module
2. cjson lua module


## How to use It !!
*** Add access_by_lua_file to vhost file in location block ***

server {
  listen 80;
  listen [::]:80;
  
  ...
  
  location / {
    access_by_lua_file '/path/to/lua/file/access.lua';
		root /path/to/site/file/;
		index index.html;
  }


}
