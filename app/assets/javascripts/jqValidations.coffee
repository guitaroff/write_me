$ ->
  $('#contactForm input, #contactForm textarea').not('[type=submit]').jqBootstrapValidation()
  $('input#phone').mask('+7(000) 000-00-00')
  return
