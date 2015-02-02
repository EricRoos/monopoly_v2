# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@register_promo_link = (ele_selector,endpoint,key) ->
  console.log "registered promo link to endpoint " + endpoint + " with key " + key
  ele_selector.on "click", (e) ->
    console.log "setting link val";
    $("a#hidden_link").val("testting");
    e.preventDefault();
    $("#status").html("Waiting for server response...");
    $.ajax
      url: endpoint
      type: 'GET'
      data: 
        bookshout_promo_auth_token: key
      success: (data) ->
        $("#status").html("redirecting...");
        redirect_url = data.redirect_url
      errors: ->
        console.log "error"
      dataType: "jsonp"
