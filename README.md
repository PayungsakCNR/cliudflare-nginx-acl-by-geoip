# cloudflare-nginx-acl-by-geoip

## Requirement 
1. NGINX with lua module
2. cjson lua module


## How to use It !!
*** Add access_by_lua_file to vhost file in location block *** <br/>

server { <br/>
  listen 80; <br/>
  listen [::]:80; <br/>
  <br/>
  ... <br/> <br/>
  
  location / { <br/> 
    access_by_lua_file '/path/to/lua/file/access.lua'; <br/>
		root /path/to/site/file/; <br/>
		index index.html; <br/>
  } <br/>
<br/>

} <br/>
