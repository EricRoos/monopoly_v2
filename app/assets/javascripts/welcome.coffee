# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@authenticate_portal = (endpoint,key) ->
  $.ajax
    url: endpoint
    type: 'GET'
    data: 
      bookshout_promo_auth_token: key
    success: (data) ->
      alert data.redirect_url
      redirect_url = data.redirect_url
      $.cookie("redirect_url",redirect_url)
      window.open "/welcome/redirect"
      
    errors: ->
      console.log "error"
    dataType: "jsonp"
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
    
