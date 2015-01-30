class WelcomeController < ApplicationController
  def index
    if Rails.env.development?
      @endpoint = "http://bookshout.dev/authenticate_portal.json"
      @key = "RhJHoBYtBkxLWUKsmOUQldYhMKRAfEdTpogWALmrKRBmPItcCR"
    elsif Rails.env.production?
    end
  end
end
