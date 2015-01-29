# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("#bookshout-promo-link").on "click", (e) ->
    console.log "got click"
    e.preventDefault();
    $.ajax
      url: 'http://staging.bookshout.com/authenticate_portal.json'
      type: 'GET'
      data: 
        bookshout_promo_auth_token: "yQmBzaTZIecmdrfWLZJswBNZHbalFzqPTxcqGLeJuGdZChHwtV"
      success: (data) ->
        console.log data
        redirect_url = data.redirect_url
        window.open redirect_url,'_blank'
      errors: ->
        console.log "error"
      dataType: "jsonp"
