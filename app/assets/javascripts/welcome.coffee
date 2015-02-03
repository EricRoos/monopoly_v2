# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# ON page load do this
# params:
#   ele_elector - the link element for the promotion
#   endpoint - the bookshout authentication endpoint
#   key - the bookshout promo auth key
@register_promo_link = (ele_selector,endpoint,key) ->
  
  $.ajax
    url: endpoint
    type: 'GET'
    data: 
      bookshout_promo_auth_token: key
    success: (data) ->
      $(ele_selector).attr("href",data.redirect_url)
      $(ele_selector).text("Claim your free ebook")
      $(ele_selector).removeClass("disabled")
    errors: ->
      console.log "error"
    dataType: "jsonp"
    
