require 'rubygems'
require 'nokogiri' #pour le scraping
require 'open-uri' #sert à ouvrir le http, mais la gem est contenue dans nokogiri donc à ne pas installer
require 'csv' #pour enregistrement csv

class ScrapEsiee

puts "attention scrapping Esiee, go go go!"

# méthode qui lance le programme
  def initialize
# on définit un array dans lequel on positionnera nos données scrappées
  @array_of_mails = []
  end

# methode qui va nous permettre de scraper
  def esiee_email_list
    @array_of_mails
#on définit une variable alphabet qui n'est autre que toutes les lettres de l'alphabet
    alphabet = ('a'..'z')
# on décompose chaque lettre de l'alphabet de sorte à compléter toutes les adresses http possible
# pour les recherches d'email
    alphabet.each do |letter|
# on va chercher la page qui nous intéresse
      page = Nokogiri::HTML(open("https://www.esiee.fr/fr/annuaire/#{letter}"))
# on définit une variable qui va prendre les données récupérées par le chemin css quue nous trouvons
# en faisant un clic droit inspecter
      all_email = page.css('.page-annuaire table tr td a, .page-annuaire table tr th a, .table-styled tr td a, .table-styled tr th a')
      all_email.each do |mail|
# on définit un hash pour rentrer nos données, juste pour faciliter la transformation en csv qui suit
        @array_of_mails << {"email" => mail.text}
      end
    end
    return p @array_of_mails
  end

# def qui permet de creer le csv, a qui on attribut une variable destinée à être
  def create_csv(emails)
    CSV.open("./db/scrap_esiee.csv", "wb") do |csv_file|
# on va chercher chaque hash de notre array et les séparer
      emails.each do |mail|

        csv_file << mail.values
      end
    end
  end

# def qui permet de lancer toutes les methodes précédentes
  def perform
  create_csv(esiee_email_list)
  end

end


