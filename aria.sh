tracker_list=$(curl -Ns https://o--cocacoa.repl.co/tracker.txt)
aria2c --enable-rpc=true --check-certificate=false --daemon=false \
   --max-connection-per-server=10 --rpc-max-request-size=1024M --quiet=true \
   --bt-stop-timeout=0 --min-split-size=10M --split=10 --allow-overwrite=true \
   --max-overall-download-limit=0 --bt-tracker="[$tracker_list]" --disk-cache=32M \
   --max-overall-upload-limit=1K --max-concurrent-downloads=15 --summary-interval=0 \
   --peer-id-prefix=-qB4400- --user-agent=Wget/1.12 --peer-agent=qBittorrent/4.4.0 \
   --bt-enable-lpd=true --seed-time=0 --max-file-not-found=0 --max-tries=20 \
   --auto-file-renaming=true --reuse-uri=true --http-accept-gzip=true --continue=true \
   --content-disposition-default-utf8=true --netrc-path=/usr/src/app/.netrc
