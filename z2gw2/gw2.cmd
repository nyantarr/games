start "zapret2: gw2" /min "%~dp0winws2.exe" ^
--lua-init=@"%~dp0lua\zapret-lib.lua" --lua-init=@"%~dp0lua\zapret-antidpi.lua" ^
--wf-tcp-out=80,443,6112 ^

--blob=tcp_asus:@"%~dp0\tcp_asus.bin" ^

--filter-tcp=6112 --ipset="%~dp0\gw.txt" ^
--payload=unknown --out-range="n2<n3" --lua-desync=fake:blob=tcp_asus:tcp_ts=-600000:payload=unknown --new ^

--filter-tcp=80 --hostlist-domains=assetcdn.101.ArenaNetworks.com ^
--payload=http_req --out-range="a-d2" --lua-desync=fake:blob=tcp_asus:tcp_ts=-600000 --new ^

--filter-tcp=443 --hostlist="%~dp0\gw_domains.txt" ^
--payload=tls_client_hello --out-range="a-d2" --lua-desync=hostfakesplit:host=asus.com:tcp_md5
