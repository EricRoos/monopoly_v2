class WelcomeController < ApplicationController
  def index
    if Rails.env.development?
      @endpoint = "http://bookshout.dev/authenticate_portal.json"
      @key = "RhJHoBYtBkxLWUKsmOUQldYhMKRAfEdTpogWALmrKRBmPItcCR"
    elsif Rails.env.production?
      @endpoint = "http://staging.bookshout.com/authenticate_portal.json"
      @key = "yQmBzaTZIecmdrfWLZJswBNZHbalFzqPTxcqGLeJuGdZChHwtV"
    end
  end
end
