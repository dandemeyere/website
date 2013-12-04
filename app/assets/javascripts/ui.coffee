class window.UI
  setup: ->
    nav = $('.navbar')
    $('a.nav-drawer').click (event) ->
      event.preventDefault()
      if nav.hasClass('expanded')
        nav.removeClass('expanded')
      else
        nav.addClass('expanded')

$(document).ready ->
  window.website_ui = new window.UI
  window.website_ui.setup()
