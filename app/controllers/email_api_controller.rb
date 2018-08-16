class EmailApiController < ApplicationController
  def subscribe

  end

  def subscribing
    @list_id = ENV["MAILCHIMP_LIST_ID"]
    gibbon = Gibbon::Request.new

    if gibbon.lists(@list_id).members.create(
      body: {
      email_address: params[:email][:address],
      status: "subscribed",
      merge_fields: {
        FNAME: params[:person][:first_name],
        LNAME: params[:person][:last_name]
      }
      }
    )
    redirect_to home_path

    else
      flash[:danger] = "Merci de renseigner vos informations"
      render subscribe
    end

    respond_to do |format|
      format.json{render :json => {:message => "You have been Successfully added to the list! :)"}}
    end
  end

end
