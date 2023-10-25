#build image dengan nama item-app versi 1 pada direktori saat ini
docker build -t item-app:v1 .

#melihat daftar image di lokal
docker images

#mengubah nama image agar sesuai dengan format Github Packages
docker tag item-app:v1 ghcr.io/arigints/item-app:v1

#login ke Github Packages
echo $GITHUB_TOKEN | docker login ghcr.io -u arigints --password-stdin

#push image ke Github Packages
docker push ghcr.io/arigints/item-app:v1
