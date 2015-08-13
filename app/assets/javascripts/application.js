//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

//altera o grid, quando for passar (ex: dimension: 5) pelo input
function addDimensionField(){
  $(".col-sm-3 select[dimension], input[dimension]").each (function (index, el){
    var dimension = el.getAttribute (['dimension']);

    $ (this).parent ().removeClass('col-sm-3').addClass ('col-sm-' + dimension);
  });
}
$(function (){
  addDimensionField ();
  $('.mask-number').mask("99999");
});
