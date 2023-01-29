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
//= require tinymce
//= require tinymce/langs/pt_BR
//= require rails-ujs
//= require activestorage

tinymce.init({
    selector: 'textarea',
    language: 'pt_BR',
    resize: true,
    plugins:  'fontsize advlist autolink link image lists charmap print preview hr anchor pagebreak searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking table emoticons template paste help',
    toolbar: 'undo redo | fontsize styleselect | bold italic | alignleft aligncenter alignright alignjustify | ' +
    'bullist numlist outdent indent | link image | print preview media fullscreen | ' +
    'forecolor backcolor emoticons | help',
    menu: {
      favs: {title: 'Meus favoritos', items: 'code visualaid | searchreplace | emoticons'}
    },
    menubar: 'favs file edit view insert format tools table help',
    content_css: '/assets/tinymce/skins/lightgray/content.min.css'
  });
