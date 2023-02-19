for b in {75,150,300,600,1200,2400} ; do 
	for x in {"01","02","03","04","05","06","07","08","09","0a","0b","0c","0d","0e","0f","10","1a","1b","20","27","2a","2b","2c","2d","2e","2f","30","31","32","33","34","35","36","37","38","39","3b","3d","41","42","43","44","45","46","47","48","49","4a","4b","4c","4d","4e","4f","50","51","52","53","54","55","56","57","58","59","5a","5b","5c","5d","5f","60","7f","82","93","9a"} ; do 
		printf "\x${x}" | minimodem -t -8 -f temp.flac ${b} && sox temp.flac "${x}.wav" ;
		rm temp.flac ; 
	done ; 

	for((x=1;x<16;x++));do 
		sox 1b.wav $(printf "%02x" ${x}).wav 1b$(printf "%02x" ${x}).wav ; 
	done ; 
	for x in {"4e","4f","5b","5d","5f"} ; do 
		sox 1b.wav ${x}.wav 1b${x}.wav ; 
	done ; 
	sox {"1b5b","30","47"}.wav 1b5b3047.wav ; 
	sox {"1b5b","31","41"}.wav 1b5b3141.wav ; 
	sox {"1b5b","31","42"}.wav 1b5b3142.wav ; 
	sox {"1b5b","31","43"}.wav 1b5b3143.wav ; 
	sox {"1b5b","31","44"}.wav 1b5b3144.wav ; 
	sox {"1b5b","31","47"}.wav 1b5b3147.wav ; 
	sox {"1b5b","32","35","53"}.wav 1b5b323553.wav ; 
	sox {"1b5b","32","35","54"}.wav 1b5b323554.wav ; 

	mkdir "8N1 ${b}" ; 

	for x in {"0e","1b4e","1b4f","1b5b","1b5d"} ; do 
		sox ${x}.wav temp.wav vol 0 ; 
		sox -M ${x}.wav temp.wav "8N1 ${b}"/${x}.l.wav ; 
		sox -M temp.wav ${x}.wav "8N1 ${b}"/${x}.r.wav ; 
		rm temp.wav ; 
	done ; 

	ls -1 *.wav | while read i ; do 
		sox "${i}" "8N1 ${b}"/"${i}" gain -3.321928094887362 ; rm "${i}" ; 
	done ; 

	printf "{\x22id\x22:\x22custom-sound-pack-4036986503%04d\x22,\x22name\x22:\x228N1 %d\x22,\x22key_define_type\x22:\x22multi\x22,\x22includes_numpad\x22:false,\x22sound\x22:\x22sound.ogg\x22,\x22defines\x22:{\x2214\x22:\x2208.wav\x22,\x2215\x22:\x2209.wav\x22,\x2228\x22:\x220d.wav\x22,\x221\x22:\x221b.wav\x22,\x2257\x22:\x2220.wav\x22,\x2240\x22:\x2227.wav\x22,\x2251\x22:\x222c.wav\x22,\x2212\x22:\x222d.wav\x22,\x2252\x22:\x222e.wav\x22,\x2253\x22:\x222f.wav\x22,\x2211\x22:\x2230.wav\x22,\x222\x22:\x2231.wav\x22,\x223\x22:\x2232.wav\x22,\x224\x22:\x2233.wav\x22,\x225\x22:\x2234.wav\x22,\x226\x22:\x2235.wav\x22,\x227\x22:\x2236.wav\x22,\x228\x22:\x2237.wav\x22,\x229\x22:\x2238.wav\x22,\x2210\x22:\x2239.wav\x22,\x2239\x22:\x223b.wav\x22,\x2213\x22:\x223d.wav\x22,\x2230\x22:\x2241.wav\x22,\x2248\x22:\x2242.wav\x22,\x2246\x22:\x2243.wav\x22,\x2232\x22:\x2244.wav\x22,\x2218\x22:\x2245.wav\x22,\x2233\x22:\x2246.wav\x22,\x2234\x22:\x2247.wav\x22,\x2235\x22:\x2248.wav\x22,\x2223\x22:\x2249.wav\x22,\x2236\x22:\x224a.wav\x22,\x2237\x22:\x224b.wav\x22,\x2238\x22:\x224c.wav\x22,\x2250\x22:\x224d.wav\x22,\x2249\x22:\x224e.wav\x22,\x2224\x22:\x224f.wav\x22,\x2225\x22:\x2250.wav\x22,\x2216\x22:\x2251.wav\x22,\x2219\x22:\x2252.wav\x22,\x2231\x22:\x2253.wav\x22,\x2220\x22:\x2254.wav\x22,\x2222\x22:\x2255.wav\x22,\x2247\x22:\x2256.wav\x22,\x2217\x22:\x2257.wav\x22,\x2245\x22:\x2258.wav\x22,\x2221\x22:\x2259.wav\x22,\x2244\x22:\x225a.wav\x22,\x2226\x22:\x225b.wav\x22,\x2243\x22:\x225c.wav\x22,\x2227\x22:\x225d.wav\x22,\x2241\x22:\x2260.wav\x22,\x223667\x22:\x227f.wav\x22,\x223612\x22:\x220a.wav\x22,\x2255\x22:\x222a.wav\x22,\x2278\x22:\x222b.wav\x22,\x2274\x22:\x222d.wav\x22,\x2283\x22:\x222e.wav\x22,\x223637\x22:\x222f.wav\x22,\x2282\x22:\x2230.wav\x22,\x2279\x22:\x2231.wav\x22,\x2280\x22:\x2232.wav\x22,\x2281\x22:\x2233.wav\x22,\x2275\x22:\x2234.wav\x22,\x2276\x22:\x2235.wav\x22,\x2277\x22:\x2236.wav\x22,\x2271\x22:\x2237.wav\x22,\x2272\x22:\x2238.wav\x22,\x2273\x22:\x2239.wav\x22,\x223597\x22:\x223d.wav\x22,\x2261011\x22:\x227f.wav\x22,\x2242\x22:\x220e.l.wav\x22,\x2254\x22:\x220e.r.wav\x22,\x2258\x22:\x220f.wav\x22,\x223639\x22:\x2210.wav\x22,\x2269\x22:\x221a.wav\x22,\x223653\x22:\x2282.wav\x22,\x2270\x22:\x2293.wav\x22,\x223666\x22:\x229a.wav\x22,\x2261010\x22:\x229a.wav\x22,\x2229\x22:\x221b5b.l.wav\x22,\x223613\x22:\x221b5b.r.wav\x22,\x223663\x22:\x221b5b3047.wav\x22,\x2257416\x22:\x221b5b3141.wav\x22,\x2257424\x22:\x221b5b3142.wav\x22,\x2257419\x22:\x221b5b3143.wav\x22,\x2257421\x22:\x221b5b3144.wav\x22,\x223655\x22:\x221b5b3147.wav\x22,\x223657\x22:\x221b5b323553.wav\x22,\x223665\x22:\x221b5b323554.wav\x22,\x2261007\x22:\x221b5b3047.wav\x22,\x2261000\x22:\x221b5b3141.wav\x22,\x2261008\x22:\x221b5b3142.wav\x22,\x2261003\x22:\x221b5b3143.wav\x22,\x2261005\x22:\x221b5b3144.wav\x22,\x2260999\x22:\x221b5b3147.wav\x22,\x2261001\x22:\x221b5b323553.wav\x22,\x2261009\x22:\x221b5b323554.wav\x22,\x2256\x22:\x221b4e.l.wav\x22,\x223640\x22:\x221b4f.r.wav\x22,\x223675\x22:\x221b5d.l.wav\x22,\x223676\x22:\x221b5d.r.wav\x22,\x223677\x22:\x221b5f.wav\x22,\x2259\x22:\x221b01.wav\x22,\x2260\x22:\x221b02.wav\x22,\x2261\x22:\x221b03.wav\x22,\x2262\x22:\x221b04.wav\x22,\x2263\x22:\x221b05.wav\x22,\x2264\x22:\x221b06.wav\x22,\x2265\x22:\x221b07.wav\x22,\x2266\x22:\x221b08.wav\x22,\x2267\x22:\x221b09.wav\x22,\x2268\x22:\x221b0a.wav\x22,\x2287\x22:\x221b0b.wav\x22,\x2288\x22:\x221b0c.wav\x22,\x2291\x22:\x221b0d.wav\x22,\x2292\x22:\x221b0e.wav\x22,\x2293\x22:\x221b0f.wav\x22}}" $b $b > "8N1 ${b}"/"config.json" ; 
done ; 