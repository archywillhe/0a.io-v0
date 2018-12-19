stack exec site build
rsync --checksum --progress -r -u _site/* ../0a.io-raw
cd ../0a.io-raw
git add .
git commit -am "update"
git push
