jQuery ->
  $('input[type=checkbox]').iCheck({
    checkboxClass: 'icheckbox_square-blue',
    radioClass: 'iradio_square-blue',
    increaseArea: '20%'
  })

jQuery ->
  flash_message = $("#flash_message").text()
  if (flash_message.length > 0)
    showToast(JSON.parse(flash_message));

jQuery ->
  $("[type='email']").mask("A", {placeholder: 'xyz@xyz.com.br', translation: {"A": { pattern: /[\w\-.+@]/, recursive: true }} });
  $("[type='tel']").mask('(00) 0000-00009', {placeholder: '(00) 0000-00000'});
  $('[name$="[cep]"]').mask('00000-000', {placeholder: '00000-000'});
  $('[name$="[cpf_cnpj]"]').mask('000.000.000-00', {reverse: true, placeholder: "000.000.000-00"});
  $('[name$="[cpf_cnpj]"]').mask('00.000.000/0000-00', {reverse: true, placeholder: "00.000.000/0000-00"});

$(document).on 'turbolinks:load', ->
  $('.dropdown-toggle').dropdown()
