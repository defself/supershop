$(document).ready ->
  productId = $('#reviews').data('id')
  $('#review-index').load  "/products/#{productId}/reviews"
  $('#review-form').load  "/products/#{productId}/reviews/new" if window.current_user
