#Wybierz obraz bazowy - ubuntu w najnowsej wersji
FROM ubuntu:latest

#Zaktualizuj system Ubuntu
RUN apt-get update && apt-get upgrade -y

#Zainstaluj serwer Apache
RUN apt-get install -y apache2

#Skopiuj stronę WWW do katalogu domowego serwera Apache
COPY index.html /var/www/html

#Ustaw autora
LABEL maintainer="Hanna Panizovich <s97827@pollub.edu.pl>"

#Nasłuchuje na porcie 8080
EXPOSE 8080

#Uruchomienie serwera Apache
CMD ["apache2ctl", "-D", "FOREGROUND"]
