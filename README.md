Il était une fois...

Mathilde, Gaëlle, Thomas et THP 

## Récap :

Ce projet est la version en production du projet des landings pages. Un site qui regroupe tous les composants que nous avons codé :

* **Deux scrappings de l'espace**
* **Une programmation d'envoi mail sur les résultats scrappings
* **Une super landing page**
* **Un super service mailer avec MailChimp**
* **Des supers opérations marketing: **
* ** Inscription à une newsletter envoyée toutes les 2 semaines grace à Heroku Scheduler**
* ** Bot twitter grace aux scrappings initiaux**

## Lien Heroku :

https://the-hacking-project-2018.herokuapp.com/

## Localement :

* **Lancer** `$ git clone "lien"`
* **Lancer** `$ bundle install`
* **Lancer** `$ rails db:create`
* **Lancer** `$ rails db:migrate`
* **Lancer** `$ rails server`
* **Se rendre sur localhost:3000 via votre navigateur**

## Les gems :

gem 'bootstrap-sass', '~> 3.2.0'
gem 'autoprefixer-rails'
gem ‘gibbon’ --> pour mailchimp
gem ‘dotenv-rails’ → pour cacher les clés d’API
gem ‘nokogiri’ -> pour scraper
gem ‘csv’ → pour enregistrer les données scrapées dans un .csv
gem ‘gmail’ → pour les envois d’emails à partir d’une adresse gmail
gem ‘mail’
gem ‘figaro’ pour cacher les cles gmail
gem 'twitter' pour notre bot

## Les targets :

* **Association des Elèves et des Anciens Elèves de l'INP**

Pour cette target, THP peut être intéressant pour présenter leur travail de rénovation

* **Ecole de l’innovation technologique, ESIEE**

Forcément avec un blaze pareil, si tu ne sais pas coder, tu n’es pas dans le gamzer !

## Nos Pages :

Une seule et belle page  (mais nous ne sommes que 3 dans l'équipe, un peu d'indulgence ;) )

## Notre marketing :

Envoi d'emails à plus de 1400 personnes (sur les 2 cibles choisies)
Envoi de newletter lorsque les personnes ayant reçu notre mail choisissent de s'inscrire (avec envoi toutes les 2 semaines)
Bot twitter sur les comptes des étudiants de l'ESIEE


## Nos statistiques :

Google (encore eux) Analytics

Envoi des emails à 4h20
A 5h11 du matin nous avions:
1 inscription à la newsletter
1,7% sur les ingénieurs et 0,4% sur les artistes
