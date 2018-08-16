#Ce programme permet de récupérer de la data et de faire un envoi de
#mails en masse grace à google
require 'gmail'   # on va chercher la gem gmail qui va nous permettre de transmettre nos messages
require 'dotenv'  # permet de se servir du .env qui contient le password
require 'mail'    # permet de mettre en format html  le message envoyé
require 'json'    # va nous permettre de récup et utiliser le fichier json
require 'csv'

Dotenv.load

class MailerEsiee
  attr_accessor :email, :session_gmail
    # def qui va lancer gmail lorsque l'on va lancer la classe
    def initialize
    # On initialise la session gmail pour la connexion et envoi des emails
    # On déclare nos 2 variables d'instance qui vont nous servir plus tard
    @@session_gmail = Gmail.connect("thp.nice@gmail.com", ENV['PASSWORD'])
    @@email = email
    end
    # def qui va permettre de récupérer les fichiers JSON et transformer la donner de sorte
    # à n'utiliser que les emails


    def message(email)
        @@session_gmail
        @@email = @@session_gmail.deliver do
        to "#{email}"
        subject "Devenez un crack en hacking"

        html_part do
        content_type 'text/html; charset=UTF-8'
        body "<p>Bonjour,<br />

        <p> Vous êtes étudiant dans une grande école d'ingénieur et êtes très curieux? </p>\n
        <p>Vous aimeriez changer le monde, mais n'en possédez pas le code source? </p>\n
        <p>Vous rêvez d'apprendre toujours plus, pour acquérir un max de compétences? </p> \n
        <p>Nous n'avons pas la solution à tout, mais nous vous offrons un pas vers ce tout.</p>
        <p>Nous sommes THP - <em> The Hacking Project <em> - ,  une formation au code gratuite,
        sans locaux, sans sélection, sans restriction géographique. Nous sommes partout. </p><br>
        La pédagogie de notre école est celle du peer-learning, où nous travaillons par petits groupes
        sur des projets concrets qui permettent d'apprendre à coder. <br>

        <p>En un an déjà plus de 500 personnes sont passées par The Hacking Project. Est-ce que vous seriez suffisamment volontaire
        pour changer le monde avec nous et acquérir au passage un morceau de code source du monde actuel en à peine 2 mois?</p>

        <p>Si la réponse est oui, nous vous invitons à suivre ce lien, et à vous inscrire à notre newsletter.
        Un petit pour vous, un grand pour la communauté. </p>

        <p>Bien à vous,</p><br />

        <p>L'équipe THP de Nice.</p></font>"
      end
      add_file "thp-logo.png"
        end
    end

    def get_email_from_csv
        CSV.foreach("./../db/scrap_esiee.csv") do |row|
         message(row[0])
        end
    end

    def perform
        get_email_from_csv
    end

end

