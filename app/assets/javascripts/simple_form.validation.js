var text = $('button[type=submit]').text();

$(document).on("submit", "form", function(event){
  var required_fields = $(this).find('input.required:visible, select.required:visible, textarea.required:visible').filter(function(i, e){
    return $(e).val() == ""
  });

  if(required_fields.length > 0){
    required_fields.each(function(i, e){
      var wrapper = $(e).closest("div.required");
      wrapper.addClass('has-error');
      wrapper.children('div').find('.help-block.inline').remove();
      wrapper.children('div').append("<div class='help-block col-xs-5 col-sm-reset inline'>não pode ficar em branco</div>");
    });

    setTimeout(function(){
      $('button:disabled[type=submit]').
        html(text).
        attr('disabled', false);
      $('.btn.btn.btn-success').html('Salvar')
    }, 1000);

    event.preventDefault();
  }else{
    //if (environment !== "test") { addLoading() }
  }
});
