class WelcomeController < ApplicationController
  def index
    if Rails.env.development?
      @development_endpoint = "http://bookshout.dev/authenticate_portal.json"
      @development_key = "RhJHoBYtBkxLWUKsmOUQldYhMKRAfEdTpogWALmrKRBmPItcCR"
    elsif Rails.env.production?
      @staging_endpoint = "https://staging.bookshout.com/authenticate_portal.json"
      @staging_key = "yQmBzaTZIecmdrfWLZJswBNZHbalFzqPTxcqGLeJuGdZChHwtV"

      @qa_endpoint= "https://qa.bookshout.com/authenticate_portal.json"
      @qa_key = "oSoGyIjGdcTzIVYulxQowbzHzEazPPAEMxlSVIVitaWuSOfZji"
    end
  end
end
