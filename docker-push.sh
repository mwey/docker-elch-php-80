echo 'Docker login with user elchdocker requires password. Password is stored in KeePas under Entwicklung/Docker-Cloud. Please ask IT-Services for the password.'
sudo docker login -u elchdocker  && docker push elchdocker/docker-elch-php-80 | tee  build.log
