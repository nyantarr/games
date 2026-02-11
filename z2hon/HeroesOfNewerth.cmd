start "zapret2: tome4" /min "%~dp0winws2.exe" ^
--lua-init=@"%~dp0lua\zapret-lib.lua" --lua-init=@"%~dp0lua\zapret-antidpi.lua" ^
--wf-tcp-out=443 --wf-udp-out=10100-10150,11000-12999 ^

--blob=udp_asus:@"%~dp0\udp_asus.bin" ^

--filter-tcp=443 --hostlist-domains=heroesofnewerth.com ^
--payload=tls_client_hello --out-range="a-d2" --lua-desync=fake:blob=fake_default_tls:tcp_ts=-600000:tls_mod=sni=www.asus.com --new ^

--filter-udp=11000-12999 --ipset-ip=91.98.177.0/24 ^
--payload=unknown --out-range="a<n2" --lua-desync=fake:blob=udp_asus:payload=unknown --new ^

--filter-udp=10100-10150 --ipset-ip=198.244.176.223 ^
--payload=unknown --out-range="a<n2" --lua-desync=fake:blob=udp_asus:payload=unknown