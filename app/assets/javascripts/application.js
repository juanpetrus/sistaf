// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require turbolinks
//= require rails-ujs
//= require activestorage

//= require jquery/jquery.min
//= require jquery/jquery.mask.min
//= require bootstrap/js/bootstrap.bundle.min
//= require jquery-easing/jquery.easing.min
//= require sb-admin-2.min
//= require toastr/toastr
//= require jquery/jquery.maskMoney.min

//= require datepicker/bootstrap-datepicker.min
//= require datepicker/bootstrap-datepicker.pt-BR.min

//= require datepicker/bootstrap-datetimepicker.min
//= require datepicker/bootstrap-datetimepicker.pt-BR

//= require select2/select2.min.js
//= require select2/pt-BR.js

$(document).on("turbolinks:load", function () {

    $('select').select2({
      language: "pt-BR"
    });
  
    $('.datetime').datepicker({
      format: 'dd/mm/yyyy',
      language: 'pt-BR',
      todayHighlight: true,
      autoclose: true,
      showOptions: {direction: "down"}
    });
  
    $('.timedate').datetimepicker({
      format: 'dd/mm/yyyy hh:ii',
      language: 'pt-BR',
      todayHighlight: true,
      autoclose: true,
      showOptions: {direction: "down"}
    });
  
    $(".money").maskMoney({
      prefix: 'R$ ',
      allowNegative: false,
      thousands: '.',
      decimal: ','
      }).trigger('mask.maskMoney');
  
    $('.date').mask('00/00/0000');
    $('.time').mask('00/00/0000 00:00');
    $('.telefone').mask('(99) 9 9999-9999');
    $('.cpf').mask('000.000.000-00', { reverse: true },  { placeholder: "000.000.000-00" });
    $('.telefone').mask('(99) 9 9999-9999'); 
       
  });