#build image dengan nama item-app versi 1 pada direktori saat ini
docker build -t arigints/karsajobs:latest .

#mengubah nama image agar sesuai dengan format Github Packages
docker tag arigints/karsajobs:latest ghcr.io/arigints/karsajobs:latest

#login ke Github Packages
echo $GITHUB_TOKEN | docker login ghcr.io -u arigints --password-stdin

#push image ke Github Packages
docker push ghcr.io/arigints/karsajobs:latest