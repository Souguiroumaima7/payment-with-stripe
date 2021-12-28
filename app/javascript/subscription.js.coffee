jquery ->
  stripe.setPublishableKey($["meta[name='stripe-key"]).attr("content") 
  $('payment-form').submit(event) -> 
  $form = $(this) 
  if $(".card-fields").hasClass("hidden") 
  $form.get(0).submit() 
  else 
  $ form