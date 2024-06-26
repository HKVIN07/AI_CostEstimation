$(document).ready(function () {
    // Event handler for collapse elements
    $('.collapse').on('shown.bs.collapse', function () {
        $(this).parent().find('.glyphicon-menu-down').removeClass('glyphicon-menu-down').addClass('glyphicon-menu-up');
    }).on('hidden.bs.collapse', function () {
        $(this).parent().find('.glyphicon-menu-up').removeClass('glyphicon-menu-up').addClass('glyphicon-menu-down');
    });


    $('.aceForm').on('submit', function () {

        $('#submitButton').prop("disabled", true);
        
        /*$('#submitButton').css("cursor", "not-allowed");*/

        $(this).submit();
    });
});