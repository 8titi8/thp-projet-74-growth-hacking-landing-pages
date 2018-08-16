#Association des Elèves et des Anciens Elèves de l'INP - Institut National du Patrimoine -.
#http://aeaerestaurateur.org/

require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'csv'

puts "attention scrapping Artists, go go go!"

class ScrapArtists

  def get_the_emails
      i = 1
      array_of_emails=[]
      #il y a 30 urls sur ce site qui sont configurées comme pagesd=1
      30.times do
      page = Nokogiri::HTML(open("http://aeaerestaurateur.org/?wpbdp_category=tous&paged=#{i}"))

      data_mails = page.css("div.wpbdp-field-display.wpbdp-field.wpbdp-field-value.field-display.field-value.wpbdp-field-email.wpbdp-field-meta.wpbdp-field-type-textfield.wpbdp-field-association-meta span[class='value']")
      data_mails.each do |mails|
      array_of_emails << {"email" => mails.text}
      end
      i += 1
      end
      p array_of_emails
  end

  def create_csv(emails)
    CSV.open("./db/scrap_artistes.csv", "wb") do |csv_file|
      emails.each do |mail|

        csv_file << mail.values
      end
      end
  end

  def perform

  create_csv(get_the_emails)

  end

end

