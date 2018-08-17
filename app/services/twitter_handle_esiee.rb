require 'csv'
require 'dotenv'
Dotenv.load
require_relative 'scrap_esiee'
require 'twitter'



class TwitterHandleEsiee

	attr_accessor :esiee_handles

	def initialize
		@esiee_handles = []

############################# LOG IN TWITTER #############################

		@client = Twitter::REST::Client.new do |config|
				config.consumer_key        = ENV["TWITTER_API_KEY"]
				config.consumer_secret     = ENV["TWITTER_API_SECRET"]
				config.access_token        = ENV["TWITTER_USER_TOKEN"]
				config.access_token_secret = ENV["TWITTER_USER_TOKEN_SECRET"]
			end

	end

######################## RECHERCHE HANDLE TWITTER ########################
	def search_handles

		CSV.foreach("./db/scrap_name_esiee.csv") do |row|
		#lit le fichier CSV ligne par ligne et pour chaque fait :
			begin
				@client.search("#{row[0]}").take(1).collect do |tweet|
				# rechercher les tweets contenant les noms de notre cible esiee
			  	p	@esiee_handles << {"handles" => "tweet.user.screen_name"}
			  		# ajouter les handles au tableau
			  		@new_handles = @esiee_handles
						end
			rescue StandardError => e
			#permet de ne pas arreter le programme si Twitter bloque l'accès (cause des quotas)
				puts "Mince ! Il y a eu un problème avec Twitter.. ils nous ont bloqué l'accès ! Quand trop de hack tue le hack ! ;)"
				return @new_handles
				add_handle_to_csv(search_handles)
				# appelle la méthode en cas d'erreur et retourne le tableau en l'état
			end
			end
			return p @new_handles
	end

	def add_handle_to_csv(handles)
	# ajoute les handles dans le tableau contenant les noms et emails

		CSV.open("./db/esiee_handles.csv", "wb") do |csv_file|
		# on écrit un nouveau fichier .csv
			p handles.each do |handle|

				csv_file << handle.values
				end
		end

	end

	def perform
		search_handles
		#add_handle_to_csv(search_handles)
	end

end
