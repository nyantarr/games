start "zapret2: tome4" /min "%~dp0winws2.exe" ^
--lua-init=@"%~dp0lua\zapret-lib.lua" --lua-init=@"%~dp0lua\zapret-antidpi.lua" ^
--wf-tcp-out=443,2257,2258 ^

--filter-tcp=2257,2258 --ipset-ip=178.32.80.92 ^
--payload=unknown --out-range="n2<n3" --lua-desync=fake:blob=fake_default_tls:tcp_ts=-600000:payload=unknown:tls_mod=sni=www.asus.com --new ^

--filter-tcp=443 --hostlist-domains=te4.org ^
--payload=tls_client_hello --out-range="a-d2" --lua-desync=fake:blob=fake_default_tls:tcp_ts=-600000:tls_mod=sni=www.asus.com