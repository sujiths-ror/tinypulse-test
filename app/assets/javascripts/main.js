$(document).ready(function() {
  $('select#promotion_type').on('change', function (e) {
    var valueSelected = this.value;
    if (valueSelected == 2) {
      $('.single_discount_wrapper').addClass('hidden')
      $('.multiple_discount_wrapper').removeClass('hidden')
    }else{
      $('.single_discount_wrapper').removeClass('hidden')
      $('.multiple_discount_wrapper').addClass('hidden')
    }
  })
});
