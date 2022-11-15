FROM ubuntu:xenial-20210804
RUN apt-get update && apt-get install -y curl locales && rm -rf /var/lib/apt/lists/* \
	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8
RUN while [ true ]; do curl 'https://freebitco.in/' \
  -H 'authority: freebitco.in' \
  -H 'accept: */*' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'content-type: application/x-www-form-urlencoded; charset=UTF-8' \
  -H 'cookie: _ga=GA1.2.1073830813.1668240434; btc_address=1Q9VKPjCihjyXVmTWtwZzxASbaGYM3vK8r; password=86689b3927e6b3046001ac32e50c5ea2c156c02e8ebc4c5e8b77f97969a25569; fbtc_userid=50762275; have_account=1; csrf_token=m7T5Al6WaQVO; login_auth=qr2NlKzwy8htuGlqVCcK7Qf9; cookieconsent_dismissed=yes; free_play_sound=1; last_play=1668251693; hide_push_msg=1; fbtc_session=dFV0YZ88aqaQNAMSBtnqdlN6; _gid=GA1.2.572370068.1668512567; _gat_gtag_UA_44778688_1=1' \
  -H 'origin: https://freebitco.in' \
  -H 'referer: https://freebitco.in/?op=home' \
  -H 'sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="100", "Google Chrome";v="100"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Linux"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36' \
  -H 'x-csrf-token: m7T5Al6WaQVO' \
  -H 'x-requested-with: XMLHttpRequest' \
  --data-raw 'csrf_token=m7T5Al6WaQVO&op=free_play&fingerprint=759671433b5c9a0e401ecdac8d2edd71&client_seed=Ham1rNu8iGF5n8B3&fingerprint2=4016070589&pwc=1&h_recaptcha_response=' \
  --compressed;sleep 3600;done
