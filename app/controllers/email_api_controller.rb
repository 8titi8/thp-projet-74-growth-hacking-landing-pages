class EmailApiController < ApplicationController
  def subscribe

  end

  def subscribing
    @list_id = ENV["MAILCHIMP_LIST_ID"]
    gibbon = Gibbon::Request.new
    if Subscriber.exists?(:email => params[:email][:address])
      flash[:alert] = "Cette adresse email existe déjà !"
      redirect_to subscribe_path
    else
      subscriber = Subscriber.new
      p subscriber.first_name = params[:person][:first_name]
      subscriber.last_name = params[:person][:last_name]
      subscriber.email = params[:email][:address]

      if subscriber.save
        begin
          gibbon.lists(@list_id).members.create(
            body: {
            email_address: params[:email][:address],
            status: "subscribed",
            merge_fields: {
              FNAME: params[:person][:first_name],
              LNAME: params[:person][:last_name]
            }
            }
          )
        rescue Gibbon::MailChimpError => e
         puts "Houston, we have a problem: #{e.message} - #{e.raw_body}"
        end
        flash[:success] = "Super ! Tu viens de t'abonner à notre Newsletter"
        redirect_to home_path
      elsif params[:person][:first_name] == ""
        flash[:alert] = "Merci de renseigner au moins un prénom"
        redirect_to subscribe_path
      else
        flash[:alert] = "Merci de renseigner au moins une adresse mail"
        redirect_to subscribe_path
      end
    end
  end

end
