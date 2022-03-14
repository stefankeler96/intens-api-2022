# Intens Api Devops Praksa
Uputstvo za izdravu zadatka za praksu.

## Koraci
1. Forkovati repozitorijum
2. Pokrenuti api lokalno koristeci alat po izboru (dodati env variablu PORT i dodeliti vrednost 8080 ili bilo kojim drugim dostupan port)
3. Napisati Dockefile
4. Upraditi deploy apia na Heroku
5. Implemetirati CI CD koristeci GitHub Actions, potrebno je kreirati dve ci cd skripte. Prva skripta treba da se okida na PR nad main granom i treba da izvrsava testove. 2. skripta treba da se okida na push nad main granom i treba da pokrece build apia, pakovanje i odlaganje docker slike na heroku repo i zamenu stare za novu sliku na herokuu. 
6. Na email poslati url vaseg git repoa kao i url otpremljenog apia na herokuu.