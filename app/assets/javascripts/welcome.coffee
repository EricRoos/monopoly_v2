# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@register_promo_link = (endpoint,key) ->
  console.log "registered promo link to endpoint " + endpoint + " with key " + key
  $("#bookshout-promo-link").on "click", (e) ->
    $("#status").html("Waiting for server response...");
    e.preventDefault();
    $.ajax
      url: endpoint
      type: 'GET'
      data: 
        bookshout_promo_auth_token: key
      success: (data) ->
        $("#status").html("redirecting...");
        console.log data
        redirect_url = data.redirect_url
        window.open redirect_url,'_blank'
      errors: ->
        console.log "error"
      dataType: "jsonp"
