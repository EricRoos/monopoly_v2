class WelcomeController < ApplicationController
  def index
    if Rails.env.development?
      @development_endpoint = "http://bookshout.dev/authenticate_portal.json"
      @development_key = "RhJHoBYtBkxLWUKsmOUQldYhMKRAfEdTpogWALmrKRBmPItcCR"
    elsif Rails.env.production?
      @staging_endpoint = "https://staging.bookshout.com/authenticate_portal.json"
      @staging_key = "yQmBzaTZIecmdrfWLZJswBNZHbalFzqPTxcqGLeJuGdZChHwtV"

      @qa_endpoint= "https://qa.bookshout.com/authenticatePortal.json"
      @qa_key = "oSoGyIjGdcTzIVYulxQowbzHzEazPPAEMxlSVIVitaWuSOfZji"

      @prod_endpoint = "https://bookshout.com/authenticate_portal.json"
      @prod_key = "4Tk4nRcJkZ3emawrKCD27Z7X4ZV29EOaKRd9UOaxnLpLRnWI8G"

    end
  end
  def redirect
    redirect_to cookies[:redirect_url]
  end
end
