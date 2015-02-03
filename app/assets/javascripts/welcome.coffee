# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@authenticate_portal = (endoint,key, data) ->
  $.ajax
    url: endpoint
    type: 'GET'
    data: 
      bookshout_promo_auth_token: key
    success: (data) ->
      $("#status").html("redirecting...");
      redirect_url = data.redirect_url
      window.open redirect_url,"_blank"
    errors: ->
      console.log "error"
    dataType: "jsonp"

@register_promo_link = (ele_selector,endpoint,key) ->
  ele_selector.on "click", (e) ->
    e.preventDefault();
    console.log "setting link val";
    $("a#hidden_link").attr("href","http://www.google.com")
    $("a#hidden_link")[0].click();
    #authenticate_portal(endpoint,key,data);
