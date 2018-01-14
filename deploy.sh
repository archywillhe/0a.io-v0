rsync --progress -r -u _site/* ../zer0.degree-raw
cd ../zer0.degree-raw
git add .
git commit -am "update"
git push
