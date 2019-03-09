# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on "ajax:beforeSend", "#frm-email", ()-> 
	$("#email-info").html "El formulario se ha enviado"
$(document).on "ajax:success", "#frm-email", (e,data,estado,xhr)-> 
	$(this).slideUp()
	$("#email-info").html "Ya estás en la fila de las invitaciones beta"
$(document).on "ajax:error", "#frm-email", (e,data,estado,xhr)-> 
	$("#email-info").html "El correo ya se encuentra en nuestros registros"

