Il était une fois...

Mathilde, Gaëlle, Thomas et THP 

## Récap :

Ce projet est la version en production du projet des Landings Pages & Growth Hacking. Un site qui regroupe tous les composants que nous avons codé :

* **Deux scrappings de l'espace**
* **Une programmation d'envoi mail sur les résultats scrappings**
* **Une super landing page**
* **Un super service mailer avec MailChimp**
* **Des supers opérations marketing:**
* **Inscription à une newsletter envoyée toutes les 2 semaines grace à Heroku Scheduler**
* **Bot twitter grace aux scrappings initiaux**

## Lien Heroku :

https://the-hacking-project-2018.herokuapp.com/
Made with ❤️ and 💦

## Localement :

* **Lancer** `$ git clone "lien"`
* **Lancer** `$ bundle install`
* **Lancer** `$ rails db:create`
* **Lancer** `$ rails db:migrate`
* **Lancer** `$ rails server`
* **Se rendre sur localhost:3000 via votre navigateur**

## Les gems :

* gem 'bootstrap-sass'
* gem 'autoprefixer-rails'
* gem ‘gibbon’ → pour mailchimp
* gem ‘dotenv-rails’ → pour cacher les clés d’API
* gem ‘nokogiri’ → pour scraper
* gem ‘csv’ → pour enregistrer les données scrapées dans un .csv
* gem ‘gmail’ → pour les envois d’emails à partir d’une adresse gmail
* gem ‘mail’
* gem ‘figaro’ pour cacher les cles gmail
* gem 'twitter' pour notre bot

## Les targets :

* **Association des Elèves et des Anciens Elèves de l'INP**

Pour cette target, THP peut être intéressant pour présenter leur travail de rénovation

* **Ecole de l’innovation technologique, ESIEE**

Forcément avec un blaze pareil, si tu ne sais pas coder, tu n’es pas dans le gamzer !

## Nos Pages :

Une seule et belle **landing_page** (mais nous ne sommes que 3 dans l'équipe, un peu d'indulgence 🤗 )

Mais une **deuxièmre page** dédiée à l'inscription à la Newsletter ! 😲


## Notre marketing :

Envoi d'emails à plus de **1400 personnes** (sur les 2 cibles choisies).

![Validation Mailchimp Envoi Email](https://zupimages.net/up/18/33/j3c5.png)

Envoi d'une Newsletter lorsque les personnes s'abonnent à notre liste de diffusion (avec envoi toutes les 2 semaines).
![Validation Mailchimp Envoi Email](https://zupimages.net/up/18/33/2ewz.png)

Bot twitter sur les comptes des étudiants de l'ESIEE.

## Nos emails & Newsletter :

Si vous voulez voir à quoi ressemble notre email de growth hacking et notre newsletter :
* Email [Growth Hacking](https://mailchi.mp/2e91ea6097eb/devenez-un-crack-en-hacking-9255)

![Aperçu de l'email](https://zupimages.net/up/18/33/z13g.png)
* [Newsletter #1](https://mailchi.mp/6322cf51799b/thp-cest-lavenir-en-marche)

![Aperçu de la Newsletter](https://zupimages.net/up/18/33/gmd0.png)

## Nos statistiques :

Google (encore eux) Analytics

Envoi des emails à 4h20
A 5h11 du matin nous avions:
* 1 inscription à la newsletter 🤩
* Taux d'ouverture de la campagne d'emailing : 1,7% sur les ingénieurs et 0,4% sur les artistes
