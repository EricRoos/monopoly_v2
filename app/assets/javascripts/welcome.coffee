# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

authenticate_portal = (ele_selector,endpoint,key) ->
  console.log "authenticating portal"
  $.ajax
    url: endpoint
    type: 'GET'
    data: 
      bookshout_promo_auth_token: key
    success: (data) ->
      console.log data
      $(ele_selector).attr("href",data.redirect_url)
      $(ele_selector).text("Claim your free ebook")
      $(ele_selector).removeClass("disabled")
    errors: ->
      console.log "error"
    dataType: "jsonp"

# ON page load do this
# params:
#   ele_elector - the link element for the promotion
#   endpoint - the bookshout authentication endpoint
#   key - the bookshout promo auth key
@register_promo_link = (ele_selector,endpoint,key) ->
  $(ele_selector).on "click", () -> 
    console.log "got click"
    $(ele_selector).text("Authorizing...")
    $(ele_selector).addClass("disabled")
    authenticate_portal(ele_selector,endpoint,key)

  authenticate_portal(ele_selector,endpoint,key)
