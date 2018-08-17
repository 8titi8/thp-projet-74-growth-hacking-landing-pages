class LandingPageController < ApplicationController
  def index

    #@mailscrap = ScrapEsiee.new.perform
    #@mailscrap = ScrapArtists.new.perform
    #ces 2 commandes ont permi de lancer les 2 scrappings et les compiler
    # dans un csv qui est sur app/db.
      @handle = TwitterHandleEsiee.new.perform
  end
end
