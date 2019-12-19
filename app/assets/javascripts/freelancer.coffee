$ ->
  # Smooth scrolling using jQuery easing
  $('a.js-scroll-trigger[href*="#"]:not([href="#"])').click ->
    if location.pathname.replace(/^\//, '') == @pathname.replace(/^\//, '') and location.hostname == @hostname
      target = $(@hash)
      target = if target.length then target else $('[name=' + @hash.slice(1) + ']')
      if target.length
        $('html, body').animate { scrollTop: target.offset().top - 71 }, 1000, 'easeInOutExpo'
        return false
    return

  # Scroll to top button appear
  $(document).scroll ->
    scrollDistance = $(this).scrollTop()
    if scrollDistance > 100
      $('.scroll-to-top').fadeIn()
    else
      $('.scroll-to-top').fadeOut()
    return

  # Closes responsive menu when a scroll trigger link is clicked
  $('.js-scroll-trigger').click ->
    $('.navbar-collapse').collapse 'hide'
    return

  # Collapse Navbar
  navbarCollapse = ->
    if $('#mainNav').offset().top > 100
      $('#mainNav').addClass 'navbar-shrink'
    else
      $('#mainNav').removeClass 'navbar-shrink'
    return

  # Activate scrollspy to add active class to navbar items on scroll
  $('body').scrollspy
    target: '#mainNav'
    offset: 80

  # Collapse now if page is not at top
  navbarCollapse()
  # Collapse the navbar when page is scrolled
  $(window).scroll navbarCollapse

  # Floating label headings for the contact form
  $ ->
    $('body').on('input propertychange', '.floating-label-form-group', (e) ->
      $(this).toggleClass 'floating-label-form-group-with-value', ! !$(e.target).val()
      return
    ).on('focus', '.floating-label-form-group', ->
      $(this).addClass 'floating-label-form-group-with-focus'
      return
    ).on 'blur', '.floating-label-form-group', ->
      $(this).removeClass 'floating-label-form-group-with-focus'
      return
    return
